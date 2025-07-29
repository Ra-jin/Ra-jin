<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<% If ValueCheck(gLoginOk) = False Or gLoginOk = False Then %>
	<script>
		alert("로그인 후 이용 가능합니다.");
	</script>
<% End if %>
<!-- #include virtual="/russel/Public/login_check.asp" -->

<%
	
	If InStr(request.servervariables("server_name"),"dev.megastudy.net") > 0 Then
		ED_EM_NUM_EXAM = 9084 '개발서버
	else
		ED_EM_NUM_EXAM = 116
	end if

	exam_cnt = 0

    strSql = ""
	strSql = strSql & " SELECT COUNT(*) "
	strSql = strSql & " FROM MS_EVTRUSSEL_DTL WITH(NOLOCK) "
	strSql = strSql & " WHERE 1=1 "
	strSql = strSql & " 	AND ED_EM_NUM = " & ED_EM_NUM_EXAM
	strSql = strSql & " 	AND ED_MEM_ID = '" & gLoginMemId & "' "
	strSql = strSql & "		AND ED_MEM_TYPE = '1' "

	Set objRs = russelobjdb.sqlQuery(strSql, 3)
    If Not (objRs.EoF And objRs.BoF) Then
        exam_cnt = objRs(0)
    End If
    objRs.close
	Set objRs = Nothing

	
	if gLoginMemId = "hgyttgjm0713" or gLoginMemId = "sbs420808" or gLoginMemId = "moongawon" or gLoginMemId = "Huiwon522" or gLoginMemId = "jh20060905" or gLoginMemId = "aqaqx2" then '학원 오프라인 추가자 접근 가능하게
		exam_cnt = 1
	end if

	if exam_cnt = 0 then
		call js_redirect("/intro/2023/csat/experience.asp", "러셀 수능 모의체험 신청 학생만 확인 가능합니다.")
	end if 

%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="" />
    <!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
    <meta name="keywords" content="" />
	<meta name="description" content="" />
	<link rel="stylesheet" type="text/css" href="/intro/2023/csat/style.css" />
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
	<!--#include virtual="/intro/2023/csat/visual.asp" -->
	<!-- //visual -->
	
	<div class="bt-tab" id="report">
		<div class="inner">
			<span onclick="location.href='./experience.asp';">러셀 수능 실전 모의체험</span>
			<span onclick="location.href='./apply.asp';" class="on">성적 분석 리포트</span>
		</div>
	</div>
	
	<!-- tab 02 -->
	<div class="cont-box on">
		<div class="cont06">
			<div class="inner pb0">
				<p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/tab02_tit01.png" alt="성적 분석 리포트" /></p>
				<ul class="menu-list">
					<li><a href="apply.asp#report">성적 통지표</a></li>
					<li><a href="report_02.asp#report">등급컷</a></li>
					<li class="on"><a href="report_03.asp#report">성적 분석</a></li>
					<!-- <li class="on"><span href="javascript:void(0)" onclick="alert('11/22(수) 공개됩니다.');">성적 분석</span></li> -->
					<li><a href="http://www.megastudy.net/Entinfo/2024_jiwon/exam/exam_common_new/Explain/Explain_ex.asp?seq=319" target="_blank">해설강의</a></li>
					<li><a href="report_05.asp#report">후기 이벤트</a></li>
				</ul>
			</div>
			<div class="tab-wrap">
				<div class="tab-content on">
					<div class="cont-wrap">
						<p class="tit"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/cont06_tab03_tit.png" alt="성적 분석" /></p>
						<div class="top-con">
							<p class="stit">등급을 가른 문항</p>
							<p class="date">* Updated. 2023.12.12(화)</p>
						</div>

						<div class="first-tab">
							<div class="tab-menu02">
								<li class="on"><a href="javascript:void(0)"><strong>국어<br>화법과 작문</strong></a></li>
								<li><a href="javascript:void(0)"><strong>국어<br>언어와 매체</strong></a></li>
								<li><a href="javascript:void(0)"><strong>수학<br>확률과 통계</strong></a></li>
								<li><a href="javascript:void(0)"><strong>수학<br>미적분</strong></a></li>
								<li><a href="javascript:void(0)"><strong>수학<br>기하</strong></a></li>
								<li><a href="javascript:void(0)"><strong style="padding-top: 28px;">영어</strong></a></li>
							</div>
							<div class="tab-wrap02">
								<div class="tab-cont on">
									<table class="tbl-01">
										<colgroup>
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
										</colgroup>
										<thead>
											<tr class="low">
												<th rowspan="2">순위</th>
												<th colspan="3">만점~1등급</th>
												<th colspan="3">1등급~2등급</th>
												<th colspan="3">2등급~3등급</th>
												<th colspan="3">3등급~4등급</th>
											</tr>
											<tr class="low">
												<th>문항</th>
												<th>배점</th>
												<th>1등급<br>오답률</th>
												<th>문항</th>
												<th>배점</th>
												<th>2등급<br>오답률</th>
												<th>문항</th>
												<th>배점</th>
												<th>3등급<br>오답률</th>
												<th>문항</th>
												<th>배점</th>
												<th>4등급<br>오답률</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th class="bg-gray">1</th>
												<td>34번</td>
												<td>3</td>
												<td>26%</td>
												<td>40번</td>
												<td>3</td>
												<td>38%</td>
												<td>45번</td>
												<td>3</td>
												<td>49%</td>
												<td>24번</td>
												<td>2</td>
												<td>41%</td>
											</tr>
											<tr>
												<th class="bg-gray">2</th>
												<td>30번</td>
												<td>2</td>
												<td>26%</td>
												<td>16번</td>
												<td>3</td>
												<td>35%</td>
												<td>7번</td>
												<td>2</td>
												<td>44%</td>
												<td>6번</td>
												<td>3</td>
												<td>38%</td>
											</tr>
											<tr>
												<th class="bg-gray">3</th>
												<td>15번</td>
												<td>2</td>
												<td>23%</td>
												<td>10번</td>
												<td>3</td>
												<td>35%</td>
												<td>5번</td>
												<td>2</td>
												<td>39%</td>
												<td>32번</td>
												<td>2</td>
												<td>36%</td>
											</tr>
											<tr>
												<th class="bg-gray">4</th>
												<td>14번</td>
												<td>2</td>
												<td>21%</td>
												<td>28번</td>
												<td>2</td>
												<td>33%</td>
												<td>13번</td>
												<td>2</td>
												<td>31%</td>
												<td>9번</td>
												<td>2</td>
												<td>36%</td>
											</tr>
											<tr>
												<th class="bg-gray">5</th>
												<td>27번</td>
												<td>3</td>
												<td>20%</td>
												<td>31번</td>
												<td>3</td>
												<td>32%</td>
												<td>22번</td>
												<td>2</td>
												<td>28%</td>
												<td>36번</td>
												<td>2</td>
												<td>33%</td>
											</tr>
										</tbody>
									</table>
									<ul class="list-04 mb50">
										<li>문항 번호는 홀수형 기준으로 작성되었습니다.</li>
										<li>각 등급대에서 오답률이 높아 등급을 하락시키는 문항을 최대 5개까지 분석하여 제공합니다.</li>
										<li>메가스터디 채점 데이터 기준이며, 실제 결과와 다를 수 있으므로 단순 참고용으로 확인해 주시기 바랍니다.</li>
										<li>국어, 수학의 경우 공통 문항도 동일 선택과목 응시자별로 집계됩니다. (선택과목별 공통 문항의 오답률 비교 및 등급 상승·하락의 변수가 되는 문항 차이 비교에 활용하시기 바랍니다.)</li>
									</ul>
								</div>
								<div class="tab-cont">
									<table class="tbl-01">
										<colgroup>
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
										</colgroup>
										<thead>
											<tr class="low">
												<th rowspan="2">순위</th>
												<th colspan="3">만점~1등급</th>
												<th colspan="3">1등급~2등급</th>
												<th colspan="3">2등급~3등급</th>
												<th colspan="3">3등급~4등급</th>
											</tr>
											<tr class="low">
												<th>문항</th>
												<th>배점</th>
												<th>1등급<br>오답률</th>
												<th>문항</th>
												<th>배점</th>
												<th>2등급<br>오답률</th>
												<th>문항</th>
												<th>배점</th>
												<th>3등급<br>오답률</th>
												<th>문항</th>
												<th>배점</th>
												<th>4등급<br>오답률</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th class="bg-gray">1</th>
												<td>37번</td>
												<td>2</td>
												<td>37%</td>
												<td>31번</td>
												<td>3</td>
												<td>42%</td>
												<td>7번</td>
												<td>2</td>
												<td>49%</td>
												<td>13번</td>
												<td>2</td>
												<td>51%</td>
											</tr>
											<tr>
												<th class="bg-gray">2</th>
												<td>30번</td>
												<td>2</td>
												<td>37%</td>
												<td>27번</td>
												<td>3</td>
												<td>42%</td>
												<td>45번</td>
												<td>3</td>
												<td>45%</td>
												<td>24번</td>
												<td>2</td>
												<td>45%</td>
											</tr>
											<tr>
												<th class="bg-gray">3</th>
												<td>34번</td>
												<td>3</td>
												<td>34%</td>
												<td>16번</td>
												<td>3</td>
												<td>41%</td>
												<td>39번</td>
												<td>3</td>
												<td>45%</td>
												<td>6번</td>
												<td>3</td>
												<td>43%</td>
											</tr>
											<tr>
												<th class="bg-gray">4</th>
												<td>35번</td>
												<td>2</td>
												<td>34%</td>
												<td>28번</td>
												<td>2</td>
												<td>41%</td>
												<td>14번</td>
												<td>2</td>
												<td>45%</td>
												<td>32번</td>
												<td>2</td>
												<td>43%</td>
											</tr>
											<tr>
												<th class="bg-gray">5</th>
												<td>15번</td>
												<td>2</td>
												<td>28%</td>
												<td>10번</td>
												<td>3</td>
												<td>40%</td>
												<td>5번</td>
												<td>2</td>
												<td>43%</td>
												<td>23번</td>
												<td>2</td>
												<td>38%</td>
											</tr>
										</tbody>
									</table>
									<ul class="list-04 mb50">
										<li>문항 번호는 홀수형 기준으로 작성되었습니다.</li>
										<li>각 등급대에서 오답률이 높아 등급을 하락시키는 문항을 최대 5개까지 분석하여 제공합니다.</li>
										<li>메가스터디 채점 데이터 기준이며, 실제 결과와 다를 수 있으므로 단순 참고용으로 확인해 주시기 바랍니다.</li>
										<li>국어, 수학의 경우 공통 문항도 동일 선택과목 응시자별로 집계됩니다. (선택과목별 공통 문항의 오답률 비교 및 등급 상승·하락의 변수가 되는 문항 차이 비교에 활용하시기 바랍니다.)</li>
									</ul>
								</div>
								<div class="tab-cont">
									<table class="tbl-01">
										<colgroup>
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
										</colgroup>
										<thead>
											<tr class="low">
												<th rowspan="2">순위</th>
												<th colspan="3">만점~1등급</th>
												<th colspan="3">1등급~2등급</th>
												<th colspan="3">2등급~3등급</th>
												<th colspan="3">3등급~4등급</th>
											</tr>
											<tr class="low">
												<th>문항</th>
												<th>배점</th>
												<th>1등급<br>오답률</th>
												<th>문항</th>
												<th>배점</th>
												<th>2등급<br>오답률</th>
												<th>문항</th>
												<th>배점</th>
												<th>3등급<br>오답률</th>
												<th>문항</th>
												<th>배점</th>
												<th>4등급<br>오답률</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th class="bg-gray">1</th>
												<td>22번</td>
												<td>4</td>
												<td>82%</td>
												<td>20번</td>
												<td>4</td>
												<td>44%</td>
												<td>29번</td>
												<td>4</td>
												<td>30%</td>
												<td>10번</td>
												<td>4</td>
												<td>31%</td>
											</tr>
											<tr>
												<th class="bg-gray">2</th>
												<td>14번</td>
												<td>4</td>
												<td>16%</td>
												<td>19번</td>
												<td>3</td>
												<td>28%</td>
												<td>28번</td>
												<td>4</td>
												<td>24%</td>
												<td>11번</td>
												<td>4</td>
												<td>25%</td>
											</tr>
											<tr>
												<th class="bg-gray">3</th>
												<td></td>
												<td></td>
												<td></td>
												<td>21번</td>
												<td>4</td>
												<td>21%</td>
												<td>15번</td>
												<td>4</td>
												<td>22%</td>
												<td>9번</td>
												<td>4</td>
												<td>22%</td>
											</tr>
											<tr>
												<th class="bg-gray">4</th>
												<td></td>
												<td></td>
												<td></td>
												<td>30번</td>
												<td>4</td>
												<td>20%</td>
												<td>26번</td>
												<td>3</td>
												<td>22%</td>
												<td>27번</td>
												<td>3</td>
												<td>11%</td>
											</tr>
											<tr>
												<th class="bg-gray">5</th>
												<td></td>
												<td></td>
												<td></td>
												<td>12번</td>
												<td>4</td>
												<td>16%</td>
												<td>13번</td>
												<td>4</td>
												<td>17%</td>
												<td>3번</td>
												<td>3</td>
												<td>11%</td>
											</tr>
										</tbody>
									</table>
									<ul class="list-04 mb50">
										<li>문항 번호는 홀수형 기준으로 작성되었습니다.</li>
										<li>각 등급대에서 오답률이 높아 등급을 하락시키는 문항을 최대 5개까지 분석하여 제공합니다.</li>
										<li>메가스터디 채점 데이터 기준이며, 실제 결과와 다를 수 있으므로 단순 참고용으로 확인해 주시기 바랍니다.</li>
										<li>국어, 수학의 경우 공통 문항도 동일 선택과목 응시자별로 집계됩니다. (선택과목별 공통 문항의 오답률 비교 및 등급 상승·하락의 변수가 되는 문항 차이 비교에 활용하시기 바랍니다.)</li>
									</ul>
								</div>
								<div class="tab-cont">
									<table class="tbl-01">
										<colgroup>
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
										</colgroup>
										<thead>
											<tr class="low">
												<th rowspan="2">순위</th>
												<th colspan="3">만점~1등급</th>
												<th colspan="3">1등급~2등급</th>
												<th colspan="3">2등급~3등급</th>
												<th colspan="3">3등급~4등급</th>
											</tr>
											<tr class="low">
												<th>문항</th>
												<th>배점</th>
												<th>1등급<br>오답률</th>
												<th>문항</th>
												<th>배점</th>
												<th>2등급<br>오답률</th>
												<th>문항</th>
												<th>배점</th>
												<th>3등급<br>오답률</th>
												<th>문항</th>
												<th>배점</th>
												<th>4등급<br>오답률</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th class="bg-gray">1</th>
												<td>22번</td>
												<td>4</td>
												<td>74%</td>
												<td>14번</td>
												<td>4</td>
												<td>43%</td>
												<td>21번</td>
												<td>4</td>
												<td>46%</td>
												<td>11번</td>
												<td>4</td>
												<td>19%</td>
											</tr>
											<tr>
												<th class="bg-gray">2</th>
												<td>28번</td>
												<td>4</td>
												<td>69%</td>
												<td>20번</td>
												<td>4</td>
												<td>27%</td>
												<td>26번</td>
												<td>3</td>
												<td>17%</td>
												<td>9번</td>
												<td>4</td>
												<td>18%</td>
											</tr>
											<tr>
												<th class="bg-gray">3</th>
												<td>30번</td>
												<td>4</td>
												<td>63%</td>
												<td>19번</td>
												<td>3</td>
												<td>25%</td>
												<td>13번</td>
												<td>4</td>
												<td>14%</td>
												<td>3번</td>
												<td>3</td>
												<td>13%</td>
											</tr>
											<tr>
												<th class="bg-gray">4</th>
												<td>29번</td>
												<td>4</td>
												<td>37%</td>
												<td>12번</td>
												<td>4</td>
												<td>15%</td>
												<td>25번</td>
												<td>3</td>
												<td>13%</td>
												<td>16번</td>
												<td>3</td>
												<td>12%</td>
											</tr>
											<tr>
												<th class="bg-gray">5</th>
												<td>27번</td>
												<td>3</td>
												<td>10%</td>
												<td>15번</td>
												<td>4</td>
												<td>14%</td>
												<td>10번</td>
												<td>4</td>
												<td>11%</td>
												<td>24번</td>
												<td>3</td>
												<td>11%</td>
											</tr>
										</tbody>
									</table>
									<ul class="list-04 mb50">
										<li>문항 번호는 홀수형 기준으로 작성되었습니다.</li>
										<li>각 등급대에서 오답률이 높아 등급을 하락시키는 문항을 최대 5개까지 분석하여 제공합니다.</li>
										<li>메가스터디 채점 데이터 기준이며, 실제 결과와 다를 수 있으므로 단순 참고용으로 확인해 주시기 바랍니다.</li>
										<li>국어, 수학의 경우 공통 문항도 동일 선택과목 응시자별로 집계됩니다. (선택과목별 공통 문항의 오답률 비교 및 등급 상승·하락의 변수가 되는 문항 차이 비교에 활용하시기 바랍니다.)</li>
									</ul>
								</div>
								<div class="tab-cont">
									<table class="tbl-01">
										<colgroup>
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
										</colgroup>
										<thead>
											<tr class="low">
												<th rowspan="2">순위</th>
												<th colspan="3">만점~1등급</th>
												<th colspan="3">1등급~2등급</th>
												<th colspan="3">2등급~3등급</th>
												<th colspan="3">3등급~4등급</th>
											</tr>
											<tr class="low">
												<th>문항</th>
												<th>배점</th>
												<th>1등급<br>오답률</th>
												<th>문항</th>
												<th>배점</th>
												<th>2등급<br>오답률</th>
												<th>문항</th>
												<th>배점</th>
												<th>3등급<br>오답률</th>
												<th>문항</th>
												<th>배점</th>
												<th>4등급<br>오답률</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th class="bg-gray">1</th>
												<td>22번</td>
												<td>4</td>
												<td>77%</td>
												<td>14번</td>
												<td>4</td>
												<td>58%</td>
												<td>12번</td>
												<td>4</td>
												<td>20%</td>
												<td>13번</td>
												<td>4</td>
												<td>25%</td>
											</tr>
											<tr>
												<th class="bg-gray">2</th>
												<td>30번</td>
												<td>4</td>
												<td>20%</td>
												<td>27번</td>
												<td>3</td>
												<td>22%</td>
												<td>10번</td>
												<td>4</td>
												<td>10%</td>
												<td>11번</td>
												<td>4</td>
												<td>24%</td>
											</tr>
											<tr>
												<th class="bg-gray">3</th>
												<td>29번</td>
												<td>4</td>
												<td>20%</td>
												<td>21번</td>
												<td>4</td>
												<td>17%</td>
												<td></td>
												<td></td>
												<td></td>
												<td>26번</td>
												<td>3</td>
												<td>20%</td>
											</tr>
											<tr>
												<th class="bg-gray">4</th>
												<td>19번</td>
												<td>3</td>
												<td>14%</td>
												<td>20번</td>
												<td>4</td>
												<td>17%</td>
												<td></td>
												<td></td>
												<td></td>
												<td>3번</td>
												<td>3</td>
												<td>15%</td>
											</tr>
											<tr>
												<th class="bg-gray">5</th>
												<td>28번</td>
												<td>4</td>
												<td>12%</td>
												<td>15번</td>
												<td>4</td>
												<td>16%</td>
												<td></td>
												<td></td>
												<td></td>
												<td>16번</td>
												<td>3</td>
												<td>10%</td>
											</tr>
										</tbody>
									</table>
									<ul class="list-04 mb50">
										<li>문항 번호는 홀수형 기준으로 작성되었습니다.</li>
										<li>각 등급대에서 오답률이 높아 등급을 하락시키는 문항을 최대 5개까지 분석하여 제공합니다.</li>
										<li>메가스터디 채점 데이터 기준이며, 실제 결과와 다를 수 있으므로 단순 참고용으로 확인해 주시기 바랍니다.</li>
										<li>국어, 수학의 경우 공통 문항도 동일 선택과목 응시자별로 집계됩니다. (선택과목별 공통 문항의 오답률 비교 및 등급 상승·하락의 변수가 되는 문항 차이 비교에 활용하시기 바랍니다.)</li>
									</ul>
								</div>
								<div class="tab-cont">
									<table class="tbl-01">
										<colgroup>
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
											<col style="width: %;">
										</colgroup>
										<thead>
											<tr class="low">
												<th rowspan="2">순위</th>
												<th colspan="3">만점~1등급</th>
												<th colspan="3">1등급~2등급</th>
												<th colspan="3">2등급~3등급</th>
												<th colspan="3">3등급~4등급</th>
											</tr>
											<tr class="low">
												<th>문항</th>
												<th>배점</th>
												<th>1등급<br>오답률</th>
												<th>문항</th>
												<th>배점</th>
												<th>2등급<br>오답률</th>
												<th>문항</th>
												<th>배점</th>
												<th>3등급<br>오답률</th>
												<th>문항</th>
												<th>배점</th>
												<th>4등급<br>오답률</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th class="bg-gray">1</th>
												<td>33번</td>
												<td>3</td>
												<td>46%</td>
												<td>32번</td>
												<td>2</td>
												<td>47%</td>
												<td>42번</td>
												<td>2</td>
												<td>50%</td>
												<td>11번</td>
												<td>2</td>
												<td>55%</td>
											</tr>
											<tr>
												<th class="bg-gray">2</th>
												<td>34번</td>
												<td>3</td>
												<td>32%</td>
												<td>38번</td>
												<td>2</td>
												<td>37%</td>
												<td>41번</td>
												<td>2</td>
												<td>47%</td>
												<td>43번</td>
												<td>2</td>
												<td>47%</td>
											</tr>
											<tr>
												<th class="bg-gray">3</th>
												<td>36번</td>
												<td>2</td>
												<td>30%</td>
												<td>29번</td>
												<td>2</td>
												<td>29%</td>
												<td>21번</td>
												<td>3</td>
												<td>41%</td>
												<td>20번</td>
												<td>2</td>
												<td>42%</td>
											</tr>
											<tr>
												<th class="bg-gray">4</th>
												<td>39번</td>
												<td>3</td>
												<td>27%</td>
												<td>40번</td>
												<td>2</td>
												<td>27%</td>
												<td>30번</td>
												<td>3</td>
												<td>36%</td>
												<td>31번</td>
												<td>2</td>
												<td>40%</td>
											</tr>
											<tr>
												<th class="bg-gray">5</th>
												<td>37번</td>
												<td>3</td>
												<td>23%</td>
												<td>23번</td>
												<td>2</td>
												<td>25%</td>
												<td>24번</td>
												<td>3</td>
												<td>31%</td>
												<td>35번</td>
												<td>2</td>
												<td>38%</td>
											</tr>
										</tbody>
									</table>
									<ul class="list-04 mb50">
										<li>문항 번호는 홀수형 기준으로 작성되었습니다.</li>
										<li>각 등급대에서 오답률이 높아 등급을 하락시키는 문항을 최대 5개까지 분석하여 제공합니다.</li>
										<li>메가스터디 채점 데이터 기준이며, 실제 결과와 다를 수 있으므로 단순 참고용으로 확인해 주시기 바랍니다.</li>
										<li>국어, 수학의 경우 공통 문항도 동일 선택과목 응시자별로 집계됩니다. (선택과목별 공통 문항의 오답률 비교 및 등급 상승·하락의 변수가 되는 문항 차이 비교에 활용하시기 바랍니다.)</li>
									</ul>
								</div>
							</div>
						</div>

						<div class="top-con">
							<p class="stit">채점결과 및 정답률</p>
							<p class="date">* Updated. 2023.12.12(화)</p>
						</div>
						<div class="second-tab">
							<div class="tab-menu02" id="subject_list">
								<li class="on"><a href="javascript:;" onclick="getSubject(11)"><strong>국어</strong></a></li>
								<li><a href="javascript:;" onclick="getSubject(13)"><strong>수학</strong></a></li>
								<li><a href="javascript:;" onclick="getSubject(12)"><strong>영어</strong></a></li>
								<li><a href="javascript:;" onclick="getSubject(43)"><strong>사회탐구</strong></a></li>
								<li><a href="javascript:;" onclick="getSubject(42)"><strong>과학탐구</strong></a></li>
							</div>

							<div class="tab-wrap02">
								<div class="tab-cont on">
									<div id="subject"></div>
									<div id="score_analysis"></div>
								</div>
								
								<ul class="list-04 mb50">
									<li>문항 번호는 홀수형 기준으로 작성되었습니다.</li>
									<li>메가스터디 채점 데이터 기준이며, 실제 결과와 다를 수 있으므로 단순 참고용으로 확인해 주시기 바랍니다.</li>
									<li>정답률에 의한 난이도 기준 - 최상 : 30%미만, 상 : 30% ~ 49%, 중상 : 50% ~ 59%, 중 : 60% ~ 79%, 중하 : 80% ~ 89%, 하 : 90% ~ 100%</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
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

	getSubject(11);
});


function getSubject(dom_cd) {
	$.ajax({
		type : "POST",
		url : "./subject_list.asp",
		data: {"V_MEM_CD" : "<%=gLoginMemId%>", "V_DOM_CD" : dom_cd},
		dataType: 'html',
		contentType: 'application/x-www-form-urlencoded; charset=euc-kr',
		success: function(html) {
			$("#subject").html(html);
			getScoreAnalysis('',dom_cd);

			$("#101").addClass("on");
			$("#103").addClass("on");
			$("#22").addClass("on");
			$("#32").addClass("on");
		},
		error: function(xhr, textStatus) {
			alert("문항 난이도별 정답율 불러오기에 실패하였습니다.\n다시 시도 해주세요.");
			return;
		}
	})
}

function getScoreAnalysis(sub_cd,dom_cd) {
	
	$.ajax({
		type : "POST",
		url : "./score_analysis_ax.asp",
		data: {"V_MEM_ID" : "<%=gLoginMemId%>", "V_SUBJ_CD" : sub_cd, "V_DOM_CD" : dom_cd},
		dataType: 'html',
		contentType: 'application/x-www-form-urlencoded; charset=euc-kr',
		success: function(html) {
			$( "#score_analysis" ).html(html);

			$("#subject li a").click(function(){
				var click_sub = $(this).attr("data-sub");
				$("#subject li").removeClass("on");
				$("#"+click_sub).addClass("on");
			});
		},
		error: function(xhr, textStatus) {
			alert("문항 난이도별 정답율 불러오기에 실패하였습니다.\n다시 시도 해주세요.");
			return;
		}
	})
}
</script>
<script src="/intro/2023/csat/ui.js"></script>
</body>
</html>