<!DOCTYPE html>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<%
	sTry_CD          = fncRequest("try_cd")
%>
<html lang="ko">
<head>
	<meta charset="euc-kr" />
	<title>성적조회 - 성적조회시스템</title>
	<!-- #include virtual = "/include/head.asp" -->
</head>
<body>
<div class="wrap">
	<header class="pop-header">
		<h2>성적조회</h2>
		<a href="javascript:fnc_pop();" class="score-top-btn">전체시험정보</a>
		<span class="btn-close" onclick="window.close();">x</span>

	</header>
	<section class="popup-content">
		<div class="content-in">
			<div class="title-box">
				<h3 class="title">시험 정보</h3>
				<p class="txt-al-r">※ 총합 = 국수탐(2) 기준</p>
			</div>
			<div class="tb-type1">
				<table summary="이 표는 시험정보를 제공하며 시험일자, 시험명, 수험번호, 이름, 원점수총합, 표준점수총합, 백분위총합으로 구성되어있습니다." class="score-info mo-table">
					<caption>시험 정보</caption>
					<colgroup>
						<col style="width:*;">
						<col style="width:30%;">
						<col style="width:*;">
						<col style="width:*;">
						<col style="width:*;">
						<col style="width:*;">
						<col style="width:*;">
					</colgroup>
					<thead>
						<tr>
							<th>시험일자</th>
							<th>시험명</th>
							<th>수험번호</th>
							<th>이름</th>
							<th class="bg-b">원점수 총합</th>
							<th class="bg-b">표준점수 총합</th>
							<th class="bg-b">백분위 총합</th>
						</tr>
					</thead>
					<tbody><%
						strSQL = ""
						strSQL = strSQL & " SELECT		TM_TRY_CD, dbo.UF_GET_COM_DTL(140, TM_DIV_CD) AS DIV_NM, CONVERT(CHAR(10), TM_REG_DT, 102) AS TRY_DT, TM_TRY_NM "
						strSQL = strSQL & "             , SUM(ISNULL(MS_LANG_OPT, 0) + ISNULL(MS_MATH_OPT, 0) + ISNULL(MS_SEL1_OPT, 0) + ISNULL(MS_SEL2_OPT, 0)) AS TOTAL_OPT "
						strSQL = strSQL & "             , SUM(ISNULL(MS_LANG_SPT, 0) + ISNULL(MS_MATH_SPT, 0) + ISNULL(MS_SEL1_SPT, 0) + ISNULL(MS_SEL2_SPT, 0)) AS TOTAL_SPT "
						strSQL = strSQL & "             , SUM(ISNULL(MS_LANG_PPT, 0) + ISNULL(MS_MATH_PPT, 0) + ISNULL(MS_SEL1_PPT, 0) + ISNULL(MS_SEL2_PPT, 0)) AS TOTAL_PPT "
						strSQL = strSQL & " FROM		AMS_TRY_MAS A (NOLOCK) "
						strSQL = strSQL & " INNER JOIN	AMS_MEM_SCORE B (NOLOCK) ON A.TM_TRY_CD = B.MS_TRY_CD "
						strSQL = strSQL & " WHERE		A.TM_TRY_CD = '" & sTry_CD & "' "
						strSQL = strSQL & " AND			B.MS_MEM_CD = '" & nRmsMemCd & "' "
						strSQL = strSQL & " GROUP BY	TM_TRY_CD, TM_DIV_CD, TM_REG_DT, TM_TRY_NM, MS_MEM_CD "
						strSQL = strSQL & " ORDER BY	TM_REG_DT DESC "

						Set RS = amsobjdb.sqlQuery(strSQL,3)

						if RS.BOF OR RS.EOF then %>
							<tr>
								<td colspan="7">성적 데이터 없음</td>
							</tr>
						<% else %>
							<tr>
								<td data-label="과목"><%=RS("TRY_DT")%></td>
								<td class="con" data-label="시험명"><span class="subject"><%=RS("TM_TRY_NM")%></span></td>
								<td data-label="수험번호"><%=nRmsMemCd%></td>
								<td data-label="이름"><%=gLoginMemName%></td>
								<td class="fc-b" data-label="원점수 총합"><%=RS("TOTAL_OPT")%></td>
								<td class="fc-b" data-label="표준점수 총합"><%=RS("TOTAL_SPT")%></td>
								<td class="fc-b" data-label="백분위 총합"><%=RS("TOTAL_PPT")%></td>
							</tr>
						<% end if
						RS.close
                        Set RS = Nothing %>
					</tbody>
				</table>
			</div>
			<div class="title-box mt30">
				<h3 class="title">성적 상세 정보</h3>
				<p class="txt-al-r">※ 응시 인원은 [전 러셀 재원생 대상] 입니다.</p>
			</div>
			<div class="tb-type1 box-horizon">
				<div class="in-horizon">
					<table summary="이 표는 시험정보를 제공하며 시험일자, 시험명, 수험번호, 이름, 원점수총합, 표준점수총합, 백분위총합으로 구성되어있습니다.">
						<caption>시험 정보</caption>
						<colgroup>
							<col style="width:9%;">
							<col style="width:7%;">
							<col style="width:8%;">
							<col style="width:8%;">
							<col style="width:10%;">
							<col style="width:10%;">
							<col style="width:10%;">
							<col style="width:10%;">
							<col style="width:10%;">
							<col style="width:8%;">
							<col style="width:10%;">
						</colgroup>
						<thead>
							<tr>
								<th rowspan="2">과목</th>
								<th rowspan="2">응시</th>
								<th rowspan="2">전체평균</th>
								<th rowspan="2">상위30%</th>
								<th colspan="5" class="bg-p">내점수</th>
								<th rowspan="2">전체석차</th>
								<th rowspan="2">과목별<br>정오표</th>
							</tr>
							<tr>
								<th class="border-l bg-p">유형</th>
								<th class="bg-p">원점수</th>
								<th class="bg-p">표준점수</th>
								<th class="bg-p">백분위</th>
								<th class="bg-p">등급</th>
							</tr>
						</thead>
						<tbody><%
							strSQL = ""
							strSQL = strSQL & " SELECT  "
							strSQL = strSQL & " 			(SELECT COUNT(*) FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD AND MS_LANG_CD IS NOT NULL AND MS_LANG_CD <> 0) AS LANG_CNT "
							strSQL = strSQL & " 			, CONVERT(NUMERIC(3,0), ROUND((SELECT AVG(MS_LANG_SPT) FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD),0)) AS LANG_AVG "
							strSQL = strSQL & " 			, CONVERT(NUMERIC(3,0), ROUND((SELECT AVG(MS_LANG_SPT) FROM (SELECT TOP 30 PERCENT MS_LANG_SPT FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD ORDER BY MS_LANG_SPT DESC) A),0)) AS LANG_AVG_TOP30 "
							strSQL = strSQL & " 			, dbo.UF_GET_COM_DTL(111,MS_LANG_CD) AS MS_LANG_NM, MS_LANG_OPT, MS_LANG_SPT, MS_LANG_PPT, MS_LANG_GPT "
							strSQL = strSQL & " 			, (SELECT LANG_RANK FROM (SELECT RANK() OVER (ORDER BY MS_LANG_SPT DESC) AS LANG_RANK, MS_MEM_CD FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD AND MS_LANG_CD IS NOT NULL AND MS_LANG_CD <> 0) B WHERE B.MS_MEM_CD = A.MS_MEM_CD) AS LANG_RANK "
							strSQL = strSQL & " 			, MS_LANG_CD "
							strSQL = strSQL & " 			, (SELECT COUNT(*) FROM AMS_TRY_ANSWER (NOLOCK) WHERE TA_TRY_CD = A.MS_TRY_CD AND TA_MEM_CD = A.MS_MEM_CD AND TA_SUBJ_CD = MS_LANG_CD) AS LANG_ANSWER_CNT "
							
							strSQL = strSQL & " 			, (SELECT COUNT(*) FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD AND MS_MATH_CD IS NOT NULL AND MS_MATH_CD <> 0) AS MATH_CNT "
							strSQL = strSQL & " 			, CONVERT(NUMERIC(3,0), ROUND((SELECT AVG(MS_MATH_SPT) FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD),0)) AS MATH_AVG "
							strSQL = strSQL & " 			, CONVERT(NUMERIC(3,0), ROUND((SELECT AVG(MS_MATH_SPT) FROM (SELECT TOP 30 PERCENT MS_MATH_SPT FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD ORDER BY MS_MATH_SPT DESC) A),0)) AS MATH_AVG_TOP30 "
							strSQL = strSQL & " 			, dbo.UF_GET_COM_DTL(111,MS_MATH_CD) AS MS_MATH_NM, MS_MATH_OPT, MS_MATH_SPT, MS_MATH_PPT, MS_MATH_GPT "
							strSQL = strSQL & " 			, (SELECT MATH_RANK FROM (SELECT RANK() OVER (ORDER BY MS_MATH_SPT DESC) AS MATH_RANK, MS_MEM_CD FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD AND MS_MATH_CD IS NOT NULL AND MS_MATH_CD <> 0) B WHERE B.MS_MEM_CD = A.MS_MEM_CD) AS MATH_RANK "
							strSQL = strSQL & " 			, MS_MATH_CD "
							strSQL = strSQL & " 			, (SELECT COUNT(*) FROM AMS_TRY_ANSWER (NOLOCK) WHERE TA_TRY_CD = A.MS_TRY_CD AND TA_MEM_CD = A.MS_MEM_CD AND TA_SUBJ_CD = MS_MATH_CD) AS MATH_ANSWER_CNT "
							
							strSQL = strSQL & " 			, (SELECT COUNT(*) FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD AND MS_ENG_CD IS NOT NULL AND MS_ENG_CD <> 0) AS ENG_CNT "
							strSQL = strSQL & " 			, CONVERT(NUMERIC(3,0), ROUND((SELECT AVG(MS_ENG_SPT) FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD),0)) AS ENG_AVG "
							strSQL = strSQL & " 			, CONVERT(NUMERIC(3,0), ROUND((SELECT AVG(MS_ENG_SPT) FROM (SELECT TOP 30 PERCENT MS_ENG_SPT FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD ORDER BY MS_ENG_SPT DESC) A),0)) AS ENG_AVG_TOP30 "
							strSQL = strSQL & " 			, dbo.UF_GET_COM_DTL(111,MS_ENG_CD) AS MS_ENG_NM, MS_ENG_OPT, MS_ENG_SPT, MS_ENG_PPT, MS_ENG_GPT "
							strSQL = strSQL & " 			, (SELECT ENG_RANK FROM (SELECT RANK() OVER (ORDER BY MS_ENG_SPT DESC) AS ENG_RANK, MS_MEM_CD FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD AND MS_ENG_CD IS NOT NULL AND MS_ENG_CD <> 0) B WHERE B.MS_MEM_CD = A.MS_MEM_CD) AS ENG_RANK "
							strSQL = strSQL & " 			, MS_ENG_CD "
							strSQL = strSQL & " 			, (SELECT COUNT(*) FROM AMS_TRY_ANSWER (NOLOCK) WHERE TA_TRY_CD = A.MS_TRY_CD AND TA_MEM_CD = A.MS_MEM_CD AND TA_SUBJ_CD = MS_ENG_CD) AS ENG_ANSWER_CNT "
							
							strSQL = strSQL & " 			, (SELECT COUNT(*) FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD AND MS_SEL3_CD IS NOT NULL AND MS_SEL3_CD <> 0) AS SEL3_CNT "
							strSQL = strSQL & " 			, CONVERT(NUMERIC(3,0), ROUND((SELECT AVG(MS_SEL3_SPT) FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD),0)) AS SEL3_AVG "
							strSQL = strSQL & " 			, CONVERT(NUMERIC(3,0), ROUND((SELECT AVG(MS_SEL3_SPT) FROM (SELECT TOP 30 PERCENT MS_SEL3_SPT FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD ORDER BY MS_SEL3_SPT DESC) A),0)) AS SEL3_AVG_TOP30 "
							strSQL = strSQL & " 			, dbo.UF_GET_COM_DTL(111,MS_SEL3_CD) AS MS_SEL3_NM, MS_SEL3_OPT, MS_SEL3_SPT, MS_SEL3_PPT, MS_SEL3_GPT "
							strSQL = strSQL & " 			, (SELECT SEL3_RANK FROM (SELECT RANK() OVER (ORDER BY MS_SEL3_SPT DESC) AS SEL3_RANK, MS_MEM_CD FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD AND MS_SEL3_CD IS NOT NULL AND MS_SEL3_CD <> 0) B WHERE B.MS_MEM_CD = A.MS_MEM_CD) AS SEL3_RANK "
							strSQL = strSQL & " 			, MS_SEL3_CD "
							strSQL = strSQL & " 			, (SELECT COUNT(*) FROM AMS_TRY_ANSWER (NOLOCK) WHERE TA_TRY_CD = A.MS_TRY_CD AND TA_MEM_CD = A.MS_MEM_CD AND TA_SUBJ_CD = MS_SEL3_CD) AS SEL3_ANSWER_CNT "
							
							strSQL = strSQL & " 			, (SELECT COUNT(*) FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD AND MS_SEL1_CD IS NOT NULL AND MS_SEL1_CD <> 0) AS SEL1_CNT "
							strSQL = strSQL & " 			, CONVERT(NUMERIC(3,0), ROUND((SELECT AVG(MS_SEL1_SPT) FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD),0)) AS SEL1_AVG "
							strSQL = strSQL & " 			, CONVERT(NUMERIC(3,0), ROUND((SELECT AVG(MS_SEL1_SPT) FROM (SELECT TOP 30 PERCENT MS_SEL1_SPT FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD ORDER BY MS_SEL1_SPT DESC) A),0)) AS SEL1_AVG_TOP30 "
							strSQL = strSQL & " 			, dbo.UF_GET_COM_DTL(111,MS_SEL1_CD) AS MS_SEL1_NM, MS_SEL1_OPT, MS_SEL1_SPT, MS_SEL1_PPT, MS_SEL1_GPT "
							strSQL = strSQL & " 			, (SELECT SEL1_RANK FROM (SELECT RANK() OVER (ORDER BY MS_SEL1_SPT DESC) AS SEL1_RANK, MS_MEM_CD FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD AND MS_SEL1_CD IS NOT NULL AND MS_SEL1_CD <> 0) B WHERE B.MS_MEM_CD = A.MS_MEM_CD) AS SEL1_RANK "
							strSQL = strSQL & " 			, MS_SEL1_CD "
							strSQL = strSQL & " 			, (SELECT COUNT(*) FROM AMS_TRY_ANSWER (NOLOCK) WHERE TA_TRY_CD = A.MS_TRY_CD AND TA_MEM_CD = A.MS_MEM_CD AND TA_SUBJ_CD = MS_SEL1_CD) AS SEL1_ANSWER_CNT "
							
							strSQL = strSQL & " 			, (SELECT COUNT(*) FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD AND MS_SEL2_CD IS NOT NULL AND MS_SEL2_CD <> 0) AS SEL2_CNT "
							strSQL = strSQL & " 			, CONVERT(NUMERIC(3,0), ROUND((SELECT AVG(MS_SEL2_SPT) FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD),0)) AS SEL2_AVG "
							strSQL = strSQL & " 			, CONVERT(NUMERIC(3,0), ROUND((SELECT AVG(MS_SEL2_SPT) FROM (SELECT TOP 30 PERCENT MS_SEL2_SPT FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD ORDER BY MS_SEL2_SPT DESC) A),0)) AS SEL2_AVG_TOP30 "
							strSQL = strSQL & " 			, dbo.UF_GET_COM_DTL(111,MS_SEL2_CD) AS MS_SEL2_NM, MS_SEL2_OPT, MS_SEL2_SPT, MS_SEL2_PPT, MS_SEL2_GPT "
							strSQL = strSQL & " 			, (SELECT SEL2_RANK FROM (SELECT RANK() OVER (ORDER BY MS_SEL2_SPT DESC) AS SEL2_RANK, MS_MEM_CD FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD AND MS_SEL2_CD IS NOT NULL AND MS_SEL2_CD <> 0) B WHERE B.MS_MEM_CD = A.MS_MEM_CD) AS SEL2_RANK "
							strSQL = strSQL & " 			, MS_SEL2_CD "
							strSQL = strSQL & " 			, (SELECT COUNT(*) FROM AMS_TRY_ANSWER (NOLOCK) WHERE TA_TRY_CD = A.MS_TRY_CD AND TA_MEM_CD = A.MS_MEM_CD AND TA_SUBJ_CD = MS_SEL2_CD) AS SEL2_ANSWER_CNT "
							
							strSQL = strSQL & " 			, (SELECT COUNT(*) FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD AND MS_FOR_CD IS NOT NULL AND MS_FOR_CD <> 0) AS FOR_CNT "
							strSQL = strSQL & " 			, CONVERT(NUMERIC(3,0), ROUND((SELECT AVG(MS_FOR_SPT) FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD),0)) AS FOR_AVG "
							strSQL = strSQL & " 			, CONVERT(NUMERIC(3,0), ROUND((SELECT AVG(MS_FOR_SPT) FROM (SELECT TOP 30 PERCENT MS_FOR_SPT FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD ORDER BY MS_FOR_SPT DESC) A),0)) AS FOR_AVG_TOP30 "
							strSQL = strSQL & " 			, dbo.UF_GET_COM_DTL(111,MS_FOR_CD) AS MS_FOR_NM, MS_FOR_OPT, MS_FOR_SPT, MS_FOR_PPT, MS_FOR_GPT "
							strSQL = strSQL & " 			, (SELECT FOR_RANK FROM (SELECT RANK() OVER (ORDER BY MS_FOR_SPT DESC) AS FOR_RANK, MS_MEM_CD FROM AMS_MEM_SCORE (NOLOCK) WHERE MS_TRY_CD = A.MS_TRY_CD AND MS_FOR_CD IS NOT NULL AND MS_FOR_CD <> 0) B WHERE B.MS_MEM_CD = A.MS_MEM_CD) AS FOR_RANK "
							strSQL = strSQL & " 			, MS_FOR_CD "
							strSQL = strSQL & " 			, (SELECT COUNT(*) FROM AMS_TRY_ANSWER (NOLOCK) WHERE TA_TRY_CD = A.MS_TRY_CD AND TA_MEM_CD = A.MS_MEM_CD AND TA_SUBJ_CD = MS_FOR_CD) AS FOR_ANSWER_CNT "
							strSQL = strSQL & " FROM		AMS_MEM_SCORE A (NOLOCK) "
							strSQL = strSQL & " WHERE		A.MS_TRY_CD = '" & sTry_CD & "' "
							strSQL = strSQL & " AND			A.MS_MEM_CD = '" & nRmsMemCd & "' "

							Set RS = amsobjdb.sqlQuery(strSQL,3)

							if RS.BOF OR RS.EOF then %>
								<tr>
									<td colspan="11">성적 데이터 없음</td>
								</tr>
							<% else 
								LANG_CNT			= RS("LANG_CNT")
								LANG_AVG			= RS("LANG_AVG")
								LANG_AVG_TOP30		= RS("LANG_AVG_TOP30")
								LANG_NM				= RS("MS_LANG_NM")
								LANG_OPT			= RS("MS_LANG_OPT")
								LANG_SPT			= RS("MS_LANG_SPT")
								LANG_PPT			= RS("MS_LANG_PPT")
								LANG_GPT			= RS("MS_LANG_GPT")
								LANG_RANK			= RS("LANG_RANK")
								LANG_SUBJ_CD		= RS("MS_LANG_CD")
								LANG_ANSWER_CNT		= RS("LANG_ANSWER_CNT")

								if ValueCheck(LANG_AVG) = false then LANG_AVG = 0
								if ValueCheck(LANG_AVG_TOP30) = false then LANG_AVG_TOP30 = 0

								if ValueCheck(LANG_NM) = false then
									LANG_NM			= "-"
									LANG_OPT		= "-"
									LANG_SPT		= "-"
									LANG_PPT		= "-"
									LANG_GPT		= "-"
									LANG_RANK		= "-"
								end if

								MATH_CNT			= RS("MATH_CNT")
								MATH_AVG			= RS("MATH_AVG")
								MATH_AVG_TOP30		= RS("MATH_AVG_TOP30")
								MATH_NM				= RS("MS_MATH_NM")
								MATH_OPT			= RS("MS_MATH_OPT")
								MATH_SPT			= RS("MS_MATH_SPT")
								MATH_PPT			= RS("MS_MATH_PPT")
								MATH_GPT			= RS("MS_MATH_GPT")
								MATH_RANK			= RS("MATH_RANK")
								MATH_SUBJ_CD		= RS("MS_MATH_CD")
								MATH_ANSWER_CNT		= RS("MATH_ANSWER_CNT")

								if ValueCheck(MATH_AVG) = false then MATH_AVG = 0
								if ValueCheck(MATH_AVG_TOP30) = false then MATH_AVG_TOP30 = 0

								if ValueCheck(MATH_NM) = false then
									MATH_NM			= "-"
									MATH_OPT		= "-"
									MATH_SPT		= "-"
									MATH_PPT		= "-"
									MATH_GPT		= "-"
									MATH_RANK		= "-"
								end if

								ENG_CNT				= RS("ENG_CNT")
								ENG_AVG				= RS("ENG_AVG")
								ENG_AVG_TOP30		= RS("ENG_AVG_TOP30")
								ENG_NM				= RS("MS_ENG_NM")
								ENG_OPT				= RS("MS_ENG_OPT")
								ENG_SPT				= RS("MS_ENG_SPT")
								ENG_PPT				= RS("MS_ENG_PPT")
								ENG_GPT				= RS("MS_ENG_GPT")
								ENG_RANK			= RS("ENG_RANK")
								ENG_SUBJ_CD			= RS("MS_ENG_CD")
								ENG_ANSWER_CNT		= RS("ENG_ANSWER_CNT")

								if ValueCheck(ENG_AVG) = false then ENG_AVG = 0
								if ValueCheck(ENG_AVG_TOP30) = false then ENG_AVG_TOP30 = 0

								if ValueCheck(ENG_NM) = false then
									ENG_NM			= "-"
									ENG_OPT		= "-"
									ENG_SPT		= "-"
									ENG_PPT		= "-"
									ENG_GPT		= "-"
									ENG_RANK		= "-"
								end if

								SEL3_CNT				= RS("SEL3_CNT")
								SEL3_AVG				= RS("SEL3_AVG")
								SEL3_AVG_TOP30			= RS("SEL3_AVG_TOP30")
								SEL3_NM					= RS("MS_SEL3_NM")
								SEL3_OPT				= RS("MS_SEL3_OPT")
								SEL3_SPT				= RS("MS_SEL3_SPT")
								SEL3_PPT				= RS("MS_SEL3_PPT")
								SEL3_GPT				= RS("MS_SEL3_GPT")
								SEL3_RANK				= RS("SEL3_RANK")
								SEL3_SUBJ_CD			= RS("MS_SEL3_CD")
								SEL3_ANSWER_CNT			= RS("SEL3_ANSWER_CNT")

								if ValueCheck(SEL3_AVG) = false then SEL3_AVG = 0
								if ValueCheck(SEL3_AVG_TOP30) = false then SEL3_AVG_TOP30 = 0

								if ValueCheck(SEL3_NM) = false then
									SEL3_NM			= "-"
									SEL3_OPT		= "-"
									SEL3_SPT		= "-"
									SEL3_PPT		= "-"
									SEL3_GPT		= "-"
									SEL3_RANK		= "-"
								end if

								SEL1_CNT				= RS("SEL1_CNT")
								SEL1_AVG				= RS("SEL1_AVG")
								SEL1_AVG_TOP30			= RS("SEL1_AVG_TOP30")
								SEL1_NM					= RS("MS_SEL1_NM")
								SEL1_OPT				= RS("MS_SEL1_OPT")
								SEL1_SPT				= RS("MS_SEL1_SPT")
								SEL1_PPT				= RS("MS_SEL1_PPT")
								SEL1_GPT				= RS("MS_SEL1_GPT")
								SEL1_RANK				= RS("SEL1_RANK")
								SEL1_SUBJ_CD			= RS("MS_SEL1_CD")
								SEL1_ANSWER_CNT			= RS("SEL1_ANSWER_CNT")

								if ValueCheck(SEL1_AVG) = false then SEL1_AVG = 0
								if ValueCheck(SEL1_AVG_TOP30) = false then SEL1_AVG_TOP30 = 0

								if ValueCheck(SEL1_NM) = false then
									SEL1_NM			= "-"
									SEL1_OPT		= "-"
									SEL1_SPT		= "-"
									SEL1_PPT		= "-"
									SEL1_GPT		= "-"
									SEL1_RANK		= "-"
								end if

								SEL2_CNT				= RS("SEL2_CNT")
								SEL2_AVG				= RS("SEL2_AVG")
								SEL2_AVG_TOP30			= RS("SEL2_AVG_TOP30")
								SEL2_NM					= RS("MS_SEL2_NM")
								SEL2_OPT				= RS("MS_SEL2_OPT")
								SEL2_SPT				= RS("MS_SEL2_SPT")
								SEL2_PPT				= RS("MS_SEL2_PPT")
								SEL2_GPT				= RS("MS_SEL2_GPT")
								SEL2_RANK				= RS("SEL2_RANK")
								SEL2_SUBJ_CD			= RS("MS_SEL2_CD")
								SEL2_ANSWER_CNT			= RS("SEL2_ANSWER_CNT")

								if ValueCheck(SEL2_AVG) = false then SEL2_AVG = 0
								if ValueCheck(SEL2_AVG_TOP30) = false then SEL2_AVG_TOP30 = 0

								if ValueCheck(SEL2_NM) = false then
									SEL2_NM			= "-"
									SEL2_OPT		= "-"
									SEL2_SPT		= "-"
									SEL2_PPT		= "-"
									SEL2_GPT		= "-"
									SEL2_RANK		= "-"
								end if

								LMS2_OPT = 0
								if LANG_OPT <> "-" then LMS2_OPT = LMS2_OPT + cdbl(LANG_OPT)
								if MATH_OPT <> "-" then LMS2_OPT = LMS2_OPT + cdbl(MATH_OPT)
								if SEL1_OPT <> "-" then LMS2_OPT = LMS2_OPT + cdbl(SEL1_OPT)
								if SEL2_OPT <> "-" then LMS2_OPT = LMS2_OPT + cdbl(SEL2_OPT)

								LMS2_SPT = 0
								if LANG_SPT <> "-" then LMS2_SPT = LMS2_SPT + cdbl(LANG_SPT)
								if MATH_SPT <> "-" then LMS2_SPT = LMS2_SPT + cdbl(MATH_SPT)
								if SEL1_SPT <> "-" then LMS2_SPT = LMS2_SPT + cdbl(SEL1_SPT)
								if SEL2_SPT <> "-" then LMS2_SPT = LMS2_SPT + cdbl(SEL2_SPT)

								LMS2_PPT = 0
								if LANG_PPT <> "-" then LMS2_PPT = LMS2_PPT + cdbl(LANG_PPT)
								if MATH_PPT <> "-" then LMS2_PPT = LMS2_PPT + cdbl(MATH_PPT)
								if SEL1_PPT <> "-" then LMS2_PPT = LMS2_PPT + cdbl(SEL1_PPT)
								if SEL2_PPT <> "-" then LMS2_PPT = LMS2_PPT + cdbl(SEL2_PPT)
								%>
								<tr>
									<td>국어</td>
									<td><%=LANG_CNT%></td>
									<td><%=LANG_AVG%></td>
									<td><%=LANG_AVG_TOP30%></td>
									<td class="bg-p"><strong><%=LANG_NM%></strong></td>
									<td class="bg-p"><%=LANG_OPT%></td>
									<td class="bg-p"><%=LANG_SPT%></td>
									<td class="bg-p"><%=LANG_PPT%></td>
									<td class="bg-p"><%=LANG_GPT%></td>
									<td><%if LANG_RANK <> "-" then %> <%=LANG_RANK%>/<%=LANG_CNT%> <%else%><%=LANG_RANK%><%end if%></td>
									<td><%if LANG_RANK <> "-" AND LANG_ANSWER_CNT > 0 then %> <a href="#none" class="btnType-b-s" onclick="popTable('<%=sTry_CD%>','<%=LANG_SUBJ_CD%>');return false;">정오표</a> <%end if%></td>
								</tr>
								<tr>
									<td>수학</td>
									<td><%=MATH_CNT%></td>
									<td><%=MATH_AVG%></td>
									<td><%=MATH_AVG_TOP30%></td>
									<td class="bg-p"><strong><%=MATH_NM%></strong></td>
									<td class="bg-p"><%=MATH_OPT%></td>
									<td class="bg-p"><%=MATH_SPT%></td>
									<td class="bg-p"><%=MATH_PPT%></td>
									<td class="bg-p"><%=MATH_GPT%></td>
									<td><%if MATH_RANK <> "-" then %> <%=MATH_RANK%>/<%=LANG_CNT%> <%else%><%=MATH_RANK%><%end if%></td>
									<td><%if MATH_RANK <> "-" AND MATH_ANSWER_CNT > 0 then %> <a href="#none" class="btnType-b-s" onclick="popTable('<%=sTry_CD%>','<%=MATH_SUBJ_CD%>');return false;">정오표</a> <%end if%></td>
								</tr>
								<tr>
									<td>영어</td>
									<td><%=ENG_CNT%></td>
									<td class="bg-g"></td>
									<td class="bg-g"></td>
									<td class="bg-p"><strong><%=ENG_NM%></strong></td>
									<td class="bg-p"><%=ENG_OPT%></td>
									<td class="bg-g"></td>
									<td class="bg-g"></td>
									<td class="bg-p"><%=ENG_GPT%></td>
									<td class="bg-g"></td>
									<td><%if ENG_RANK <> "-"  AND ENG_ANSWER_CNT > 0 then %> <a href="#none" class="btnType-b-s" onclick="popTable('<%=sTry_CD%>','<%=ENG_SUBJ_CD%>');return false;">정오표</a> <%end if%></td>
								</tr>
								<tr>
									<td>한국사</td>
									<td><%=SEL3_CNT%></td>
									<td class="bg-g"></td>
									<td class="bg-g"></td>
									<td class="bg-p"><strong><%=SEL3_NM%></strong></td>
									<td class="bg-p"><%=SEL3_OPT%></td>
									<td class="bg-g"></td>
									<td class="bg-g"></td>
									<td class="bg-p"><%=SEL3_GPT%></td>
									<td class="bg-g"></td>
									<td><%if SEL3_RANK <> "-" AND SEL3_ANSWER_CNT > 0 then %> <a href="#none" class="btnType-b-s" onclick="popTable('<%=sTry_CD%>','<%=SEL3_SUBJ_CD%>');return false;">정오표</a> <%end if%></td>
								</tr>
								<tr>
									<td>탐구1</td>
									<td><%=SEL1_CNT%></td>
									<td><%=SEL1_AVG%></td>
									<td><%=SEL1_AVG_TOP30%></td>
									<td class="bg-p"><strong><%=SEL1_NM%></strong></td>
									<td class="bg-p"><%=SEL1_OPT%></td>
									<td class="bg-p"><%=SEL1_SPT%></td>
									<td class="bg-p"><%=SEL1_PPT%></td>
									<td class="bg-p"><%=SEL1_GPT%></td>
									<td><%if SEL1_RANK <> "-" then %> <%=SEL1_RANK%>/<%=LANG_CNT%> <%else%><%=SEL1_RANK%><%end if%></td>
									<td><%if SEL1_RANK <> "-" AND SEL1_ANSWER_CNT > 0 then %> <a href="#none" class="btnType-b-s" onclick="popTable('<%=sTry_CD%>','<%=SEL1_SUBJ_CD%>');return false;">정오표</a> <%end if%></td>
								</tr>
								<tr>
									<td>탐구2</td>
									<td><%=SEL2_CNT%></td>
									<td><%=SEL2_AVG%></td>
									<td><%=SEL2_AVG_TOP30%></td>
									<td class="bg-p"><strong><%=SEL2_NM%></strong></td>
									<td class="bg-p"><%=SEL2_OPT%></td>
									<td class="bg-p"><%=SEL2_SPT%></td>
									<td class="bg-p"><%=SEL2_PPT%></td>
									<td class="bg-p"><%=SEL2_GPT%></td>
									<td><%if SEL2_RANK <> "-" then %> <%=SEL2_RANK%>/<%=LANG_CNT%> <%else%><%=SEL2_RANK%><%end if%></td>
									<td><%if SEL2_RANK <> "-" AND SEL2_ANSWER_CNT > 0 then %> <a href="#none" class="btnType-b-s" onclick="popTable('<%=sTry_CD%>','<%=SEL2_SUBJ_CD%>');return false;">정오표</a> <%end if%></td>
								</tr>
								<tr class="bg-b">
									<td>종합<br/>(국수탐2)</td>
									<td>-</td>
									<td><%=cdbl(LANG_AVG) + cdbl(MATH_AVG) + cdbl(SEL1_AVG) + cdbl(SEL2_AVG)%></td>
									<td><%=cdbl(LANG_AVG_TOP30) + cdbl(MATH_AVG_TOP30) + cdbl(SEL1_AVG_TOP30) + cdbl(SEL2_AVG_TOP30)%></td>
									<td></td>
									<td><%=LMS2_OPT%></td>
									<td><%=LMS2_SPT%></td>
									<td><%=LMS2_PPT%></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							<% end if

							RS.close
							Set RS = Nothing %>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
</div>
<script>
	//정오표
	function popTable(try_cd, subj_cd){
		window.open("popSchedule.asp?try_cd="+try_cd+"&subj_cd="+subj_cd,"","width=1000, height=520, resizable=no, scrollbars=yes, status=no, left=50px, top=100px");
	}

	function fnc_pop(){
		window.open('popAllresult.asp','popAllresult','width=1020, height=768, resizable=no, scrollbars=yes, status=no, left=50px, top=100px');
	}
</script>
</body>
</html>
