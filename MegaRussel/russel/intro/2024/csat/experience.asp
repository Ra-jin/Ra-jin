<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<%
    rtnUrl = Request.Servervariables("PATH_INFO")

	' surveyFlag = true
	' If curYmdhmin >= 202011160000 Then
    '     surveyFlag = false
    ' End If

    ' flag = 1

	' If curYmdhmin < 202111180800 Then
	' 	flag = 2
	' elseif curYmdhmin >= 202111180800 Then '응시하기 버튼 클릭시 응시 페이지 이동
	' 	flag = 3
	' End if

	apply = true
	IF curYmdhmin >= 202411131400 Then '신청/수정 마감
		apply = false
	End If

	strSql = ""
	strSql = strSql &" SELECT EM_NUM "
	strSql = strSql &" FROM MS_EVTRUSSEL_MAS WITH(NOLOCK) "
	strSql = strSql &" WHERE EM_TITLE LIKE '%2025 수능 실전 모의체험%' AND EM_DEL_FLG ='N' "   ' 개발 - 10099

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
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="" />
    <!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
    <meta name="keywords" content="" />
	<meta name="description" content="" />
	<link rel="stylesheet" type="text/css" href="/intro/2024/csat/style.css" />
	<link rel="stylesheet" type="text/css" href="/common/css/table.css" />
</head>
<body>
<!-- 공통 최상단 // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<!-- mock-wrap -->
<% If GetCampusVarsSiteMGC("_CAMPUS_KIND_") = "gisuk" Then '기숙 %>
<div class="mock-wrap" style="margin-top:-50px">
<% Else %>
<div class="mock-wrap">
<% End If %>
	<!-- visual -->
	<!--#include virtual="/intro/2024/csat/visual.asp" -->
	<!-- //visual -->
	

	<div class="bt-tab" id="report">
		<div class="inner">
			<span class="on">러셀 수능 실전 모의체험</span>
			<span onclick="location.href='./apply.asp';">성적 분석 리포트</span>
			<!-- <span onclick="alert('11/15(금) 오픈 예정입니다.')">성적 분석 리포트</span> -->
		</div>
	</div>
	
	<!-- <div class="bt-tab">
		<div class="in">
			<a href="javascript:void(0)" class="on"><img src="<%=Application("img_path_russel")%>/notice/2021/mocktest/bt_tab01.jpg" alt="신청하기" /></a>
			<a href="exam.asp"><img src="<%=Application("img_path_russel")%>/notice/2021/mocktest/bt_tab02.jpg" alt="응시하기" /></a>
			<a href="<%=sReportTabLink%>"><img src="<%=Application("img_path_russel")%>/notice/2021/mocktest/bt_tab03.jpg" alt="성적분석 리포트" /></a>
		</div>
	</div> -->

	<!-- tab 01 -->
	<div class="cont-box on">
		<!-- cont01 -->
		<div class="cont01">
			<div class="inner">
				<p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/tit01.png" alt="수능을 먼저 경험한 선배들은 왜 수능 실전 모의체험을 강력 추천할까요?" /></p>
				<p><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont01_img.jpg" alt="" /></p>
				<p class="r-txt">* 2024 러셀 수능 실전 모의체험 이벤트 내 후기 중 일부 내용 발췌</p>
			</div>
		</div>
		<!-- //cont01 -->

		<!-- cont02 -->
		<div class="cont02">
			<p><img src="<%=Application("img_path_russel")%>/intro/2024/csat/tit02.jpg" alt="러셀 수능 실전 모의체험 미리보기" /></p>
			<div class="inner02">
				<p><img src="<%=Application("img_path_russel")%>/intro/2024/csat/q01_tit.png" alt="수능 실전 모의체험, 어떻게 치러지나요?" /></p>
				<p class="mt60"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/q01_img01.jpg" alt="" /></p>
			</div>
			<div class="swiper-container stu-slide">
				<ul class="swiper-wrapper">
					<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont02_slide01.jpg" alt="" /></li>
					<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont02_slide02.jpg" alt="" /></li>
					<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont02_slide03.jpg" alt="" /></li>
					<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont02_slide04.jpg" alt="" /></li>
					<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont02_slide05.jpg" alt="" /></li>
					<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont02_slide06.jpg" alt="" /></li>
				</ul>
			</div>
			<div class="inner02">
				<p class="mt15"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/q01_img02.jpg" alt="" /></p>
			</div>
		</div>
		<!-- //cont02 -->

		<!-- cont03 -->
		<div class="cont03">
			<div class="inner">
				<p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/tit03.png" alt="수능 실전 모의체험은 어떤 의미를 갖나요?" /></p>
				<p><img src="<%=Application("img_path_russel")%>/intro/2024/csat/q02_img01.jpg" alt="" /></p>
				<div class="swiper-container program-slide mt30">
					<ul class="swiper-wrapper">
						<!-- <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide01.png" alt=""></li>
						<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide02.png" alt=""></li>
						<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide03.png" alt=""></li>
						<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide04.png" alt=""></li>
						<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide05.png" alt=""></li>
						<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide06.png" alt=""></li>
						<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide07.png" alt=""></li>

						<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide03.png" alt=""></li>
						<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide04.png" alt=""></li> -->


						<!--두번째 예제-->
						<!-- <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide03.png" alt=""></li>
						<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide04.png" alt=""></li>
						<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide05.png" alt=""></li>
						<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide06.png" alt=""></li>
						<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide07.png" alt=""></li>
						<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide03.png" alt=""></li>
						<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide04.png" alt=""></li>
						<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide01.png" alt=""></li>
						<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide02.png" alt=""></li> -->



						<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide03.png" alt=""></li>
						<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide04.png" alt=""></li>
						<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide05.png" alt=""></li>
						<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide06.png" alt=""></li>
						<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide07.png" alt=""></li>
						<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide01.png" alt=""></li>
						<li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont03_slide02.png" alt=""></li>

					</ul>
					<div class="swiper-pagination type01"></div>
				</div>
				<p class="r-txt">* 2024 러셀 수능 실전 모의체험 이벤트 내 후기 중 일부 내용 발췌</p>
			</div>
		</div>
		<!-- cont03 -->

		<!-- cont04 -->
		<div class="cont04">
			<p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/tit04.png" alt="수능 실전 모의체험 응시자에게는 어떤 혜택이 있나요? " /></p>
			<div class="inner02">
				<div class="tab-benefit">
					<a href="#" class="tab-link on" data-tab="1"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont04_tab01.jpg" alt="특별 장학 혜택" /></a>
					<a href="#" class="tab-link" data-tab="2"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont04_tab02.jpg" alt="응시생 대상 설명회" /></a>
					<a href="#" class="tab-link" data-tab="3"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont04_tab03.jpg" alt="성적 분석 리포트" /></a>
				</div>

				<!-- 특별 장학 혜택 -->
				<div class="cont-benefit pb80 on" id="tab-content-1">
					<img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont04_tab_img01.jpg" />
				</div>

				<!-- 응시생 대상 설명회 -->
				<div class="cont-benefit pb15" id="tab-content-2">
					<img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont04_tab_img02.jpg" />
					<p class="r-txt mt50">* 설명회 일정 및 상세 내용은 학원마다 상이할 수 있으며, 학원별로 안내드립니다.</p>
				</div>

				<!-- 성적 분석 리포트 -->
				<div class="cont-benefit pb60" id="tab-content-3">
					<p class="mb30"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont04_tab_img03.jpg" alt="" /></p>
					<div class="swiper-container slide-report">
						<div class="swiper-wrapper">
						<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont04_tab_slide01.jpg" /></div>
						<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont04_tab_slide02.jpg" /></div>
						<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/cont04_tab_slide03.jpg" /></div>
						</div>
						<!-- Add Arrows -->
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
					</div>
				</div>

			</div>
		</div>
		<!-- cont04 -->

		<!-- cont05 -->
		<div class="cont05">
			<div class="inner">
				<p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/tit05.png" alt="실제 수능 당일, 실제 수능의 현장감을 그대로 전국 러셀 학원 동시 시행" /></p>

				<!-- map-wrap -->
				<div class="map-wrap">
					<!-- #include virtual="/common/inc/result/map02.asp" -->
				</div>
				<!-- //map-wrap -->

				<div class="map-banner">
					<a href="javascript:void(0)" onclick="fn_eventGo('./pop_map.asp')">학원 위치 자세히 보기</a>
				</div>
			</div>
		</div>
		<!-- //cont05 -->

		<!-- cont06 -->
		<div class="cont06-1" id="scrollArea">
			<p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/tit06.png" alt="러셀 수능 실전 모의체험 현장 & 온라인 신청 및 응시 안내" /></p>
			<div class="inner02">
				<table class="mocktest-table" id="register-info">
					<colgroup>
						<col style="width:10%">
						<col style="width:auto">
					</colgroup>
					<thead class="main-thead">
						<tr>
							<th class="fz22">구분</th>
							<th class="offline"><span>현장</span> 응시 안내</th>
						</tr>
					</thead>
					<tbody class="main-tbody">
						<tr>
							<th><b>대상</b></th>
							<td class="txt-left">실제 수능 시험을 미리 경험해보고 싶은 현재 고2 수험생
								<br><span class="gray">※ 현재 중3, 고1 학생도 신청 가능하며, 현장에서는 별도 응시장소에서 진행합니다. <strong class="gray">(*러셀 대치는 고2만 신청 가능)</strong></span>
							</td>
						</tr>
						<tr>
							<th><b>일시</b></th>
							<td class="txt-left">
								<strong>2024년 11월 14일(목)  오후 2시</strong> <span class="red">※ 11월 13일(수) 오후 2시 신청마감 ※</span>
							</td>
						</tr>
						<tr>
							<th><b>응시료</b></th>
							<td class="txt-left">전액 지원</td>
						</tr>
						<tr>
							<th><b>신청 방법</b></th>
							<td>
								<ul class="list-03">
									<li>러셀 학원 사이트 가입 후 <u>온라인으로만 신청 가능</u>합니다. 
									<% If curYmdhmin < 202411131400 Then%>
										<a href="javascript:fn_eventGo('write');">[신청하기]</a>
									<% Else %>
										<a href="javascript:fn_eventGo('end');">[신청하기]</a>
									<% End If %>
									</li>
									<li>러셀 학원 사이트 신규 회원 신청안내 : <a <%if gLoginOk = true then%>href="javascript:void(0)" onClick="alert('이미 로그인하였습니다.')" <%else%> href="https://campus.megastudy.net/member/join.asp" <%end if%>>회원가입</a> → 로그인 → [신청하기] 버튼 클릭 → 신청서 작성 → 제출 → 신청 완료</li>
								</ul>
								<ul class="list-02">
									<li>응시장소 및 선택과목 변경이 필요한 경우 상단 [신청 확인하기] 버튼을 클릭하여 <u class="red_txt">11/13(수) 오후 2시까지 변경 가능</u>합니다.</li>
									<li><u class="red_txt">응시하고자 하는 학생의 ID로 신청</u>해야 현장 응시 및 성적처리 후 성적 분석 리포트 열람이 가능합니다.</li>
									<li><u class="red_txt">부모님 또는 타인의 ID로 신청할 경우 현장 응시가 제한</u>되거나 정상적인 모의체험 이용이 불가합니다.</li>
								</ul>
							</td>
						</tr>
						<tr>
							<th><b>장소</b></th>
							<td class="txt-left">러셀 강남, 대치, 목동, 부천, 분당, 영통, 중계, 평촌, 대구, 센텀, 울산<br>러셀CORE 광주, 대전, 원주, 전주, 창원, 청주
							<br><a href="javascript:;" onclick="MM_openBrWindow('/intro/2024/csat/pop_map.asp','popup_map','width=735,height=700,scrollbars=yes');">[장소 자세히 보기]</a></td>
						</tr>
						<tr>
							<th><b>준비물</b></th>
							<td class="txt-left">신분증, 컴퓨터용 사인펜, 개인 도시락(저녁)</td>
						</tr>
						<tr>
							<th><b>시험 시간표</b></th>
							<td class="test-schedule" style="padding: 20px 0 20px 15px;">
							<!-- sub table -->
							<table class="sub-table">
								<colgroup>
									<col style="width:20%">
									<col style="width:20%">
									<col style="width:25%">
									<col style="width:35%">
								</colgroup>
								<thead class="sub-thead">
									<tr>
										<th><b>교시</b></th>
										<th><b>과목</b></th>
										<th><b>문항 수</b></th>
										<th><b>시험시간</b></th>
									</tr>
								</thead>
								<tbody class="sub-tbody">
									<tr>
										<td><strong>1교시</strong></td>
										<td><b>국어</b></td>
										<td>45문항</td>
										<td>14:30 ~ 15:50 (80분)</td>
									</tr>
									<tr>
										<td><strong>2교시</strong></td>
										<td><b>수학</b></td>
										<td>30문항</td>
										<td>16:20 ~ 18:00 (100분)</td>
									</tr>
									<tr>
										<td colspan="3"><strong>저녁시간</strong></td>
										<td>18:00 ~ 19:00 (60분)</td>
									</tr>
									<tr>
										<td><strong>3교시</strong></td>
										<td><b>영어</b></td>
										<td>45문항</td>
										<td>19:20 ~ 20:30 (70분)</td>
									</tr>
									<tr>
										<td><strong>4교시</strong></td>
										<td><b>탐구</b></td>
										<td>각 20문항 (2과목)</td>
										<td>21:00 ~ 22:00 (60분)</td>
									</tr>
								</tbody>
							</table>
							<!-- //sub table -->
							</td>
						</tr>
						<tr>
							<th><b>응시 후<br>성적 공개 일정</b></th>
							<td>
								<ul class="list-03">
									<li><strong>11/15(금)</strong> : 성적분석 리포트 내 <strong>등급컷, 해설강의</strong> 오픈</li>
									<li><strong>11/20(수)</strong> : 성적분석 리포트 내 <strong>가채점 성적통지표</strong> 오픈</li>
									<li><strong>12/10(화)</strong> : 성적분석 리포트 내 <strong>실채점 성적통지표</strong> 오픈</li>
								</ul>
								<ul class="list-02">
									<li>위 일정은 학원 사정에 따라 변경 될 수 있습니다.</li>
								</ul>
							</td>
						</tr>
						<tr class="notice">
							<th><b>유의사항</b></th>
							<td>
								<ul class="list-03">
									<li>시험장에는 <strong>오후 2시까지 입실</strong>해주세요.</li>
									<li>입실 후 시험장 외부 출입이 불가합니다. (저녁식사 지참 必)</li>
									<li>한국사는 별도 시험 진행없이, 시험지만 제공됩니다.</li>
									<li>학원별 예약 인원 초과 시, 사전 마감될 수 있습니다.</li>
								</ul>
							</td>
						</tr>
					</tbody>
				</table>
				<p><a href="https://russel.megastudy.net/intro/2024/winter/index.asp" target="_blank"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/banner_winter.jpg" alt="2024 러셀 윈터스쿨" /></a></p>
			</div>
		</div>
		<!-- //cont06 -->

		<div class="campus-btm">
			<div class="tit"><img src="<%=Application("img_path_russel")%>/intro/2024/csat/tab02_tit04.png" alt="러셀 학원 문의/상담 안내" /></div>
			<!-- 학원별 신청 안내 -->
			<!--#include virtual="/common/inc/campus_list_basic.asp" -->
			<!-- //학원별 신청 안내 -->
		</div>

	</div>


</div>
<!-- //mock-wrap -->


<!--  공통 하단 //-->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단-->

<script>

$(document).ready(function(){
	//수능 모의체험 혜택 탭
	$(".tabs").click(function(){

		var click = $(this).attr("data-tab");

		$(".tabs").removeClass("on");

		$(".dis").removeClass("on");

		$(this).addClass("on");

		$("#"+click).addClass("on");

	});
});


function fn_eventGo(flg){

    var flg = flg;

	if(flg == "write"){
        <% If gLoginOk = false Then %>
            alert("로그인 후 이용 가능합니다.");
			location.href="/russel/member/login.asp?rtnUrl=%2Fintro%2F2024%2Fcsat%2Fexperience%2Easp%3F"
			return;
		<% End If %>
    	if ('<%=applyStatus%>' == "0"){
            alert("반드시 응시하고자 하는 학생의 ID로 신청하시기 바랍니다.");
            window.open('/intro/2024/csat/pop_apply.asp','popup_mock','scrollbars=yes,width=720,height=900');
            return;
        } else {
            window.open('/intro/2024/csat/pop_view.asp','popup_mock','scrollbars=yes,width=720,height=900');
            return;
        }
    }
	else if(flg == "modify"){
		<% If gLoginOk = false Then %>
            alert("로그인 후 이용 가능합니다.");
			location.href="/russel/member/login.asp?rtnUrl=%2Fintro%2F2024%2Fcsat%2Fexperience%2Easp%3F"
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
		return;
    }

	window.open(flg ,'popup_mock','scrollbars=yes,width=720,height=900');
}

</script>
<script src="/intro/2024/csat/ui.js"></script>
</body>
</html>