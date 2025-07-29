<!DOCTYPE html>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/Member/login_check.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<%
	sTry_CD          = fncRequest("try_cd")
	sIsTec 			 = GetLoginCookie("isTec")
%>
<html lang="ko">
<head>
	<meta charset="euc-kr" />
	<title>상담정보 - 성적조회시스템</title>
	<!-- #include virtual = "/include/head.asp" -->
</head>
<body>
<div class="wrap">
	<header class="pop-header">
		<h2>전체시험정보</h2>
		<span class="btn-close" onclick="window.close();">x</span>
	</header>
	<section class="popup-content">
		<div class="content-in">
			<div class="tb-type1 box-horizon">
				<div class="in-horizon no-2">
					<table summary="이 표는 시험정보를 제공하며 시험일자, 시험명, 수험번호, 이름, 원점수총합, 표준점수총합, 백분위총합으로 구성되어있습니다." class="small-th">
						<caption>시험 정보</caption>
						<colgroup>
							<col width="*">
							<col width="4%">
							<col width="4.5%">
							<col width="4%">
							<col width="4%">
							<col width="4.5%">
							<col width="4%">
							<col width="4%">
							<col width="5%">
							<col width="7%">
							<col width="4%">
							<col width="4.5%">
							<col width="4%">
							<col width="7%">
							<col width="4%">
							<col width="4.5%">
							<col width="4%">
							<col width="4%">
							<col width="4.5%">
							<col width="5%">
						</colgroup>
						<thead>
							<tr>
								<th rowspan="2" >구분</th>
								<th colspan="3">국어</th>
								<th colspan="3">수학</th>
								<th>영어</th>
								<th>한국사</th>
								<th colspan="4">탐구1</th>
								<th colspan="4">탐구2</th>
								<th colspan="3">국수탐(2) 합산</th>
							</tr>
							<tr>
								<th class="border-l">표준<br>점수</th>
								<th>백분위</th>
								<th>등급</th>
								<th>표준<br>점수</th>
								<th>백분위</th>
								<th>등급</th>
								<th>등급</th>
								<th>등급</th>
								<th>과목</th>
								<th>표준<br>점수</th>
								<th>백분위</th>
								<th>등급</th>
								<th>과목</th>
								<th>표준<br>점수</th>
								<th>백분위</th>
								<th>등급</th>
								<th>표준<br>점수</th>
								<th>백분위</th>
								<th>향상<br>백분위</th>
							</tr>
						</thead>
						<tbody><%
							strSQL = ""
							strSQL = strSQL & " SELECT		TM_TRY_NM "
							strSQL = strSQL & " 			, ISNULL(MS_LANG_SPT, 0) AS MS_LANG_SPT, ISNULL(MS_LANG_PPT, 0) AS MS_LANG_PPT, ISNULL(MS_LANG_GPT, 0) AS MS_LANG_GPT "
							strSQL = strSQL & " 			, ISNULL(MS_MATH_SPT, 0) AS MS_MATH_SPT, ISNULL(MS_MATH_PPT, 0) AS MS_MATH_PPT, ISNULL(MS_MATH_GPT, 0) AS MS_MATH_GPT "
							strSQL = strSQL & " 			, ISNULL(MS_ENG_GPT , 0) AS MS_ENG_GPT , ISNULL(MS_SEL3_GPT, 0) AS MS_SEL3_GPT			   "
							strSQL = strSQL & " 			, ISNULL(dbo.UF_GET_COM_DTL(111,MS_SEL1_CD), '-') AS MS_SEL1_NM, ISNULL(MS_SEL1_SPT, 0) AS MS_SEL1_SPT, ISNULL(MS_SEL1_PPT, 0) AS MS_SEL1_PPT, ISNULL(MS_SEL1_GPT, 0) AS MS_SEL1_GPT "
							strSQL = strSQL & " 			, ISNULL(dbo.UF_GET_COM_DTL(111,MS_SEL2_CD), '-') AS MS_SEL2_NM, ISNULL(MS_SEL2_SPT, 0) AS MS_SEL2_SPT, ISNULL(MS_SEL2_PPT, 0) AS MS_SEL2_PPT, ISNULL(MS_SEL2_GPT, 0) AS MS_SEL2_GPT "
							strSQL = strSQL & " FROM		AMS_TRY_MAS A (NOLOCK) "
							strSQL = strSQL & " INNER JOIN	AMS_MEM_SCORE B (NOLOCK) ON A.TM_TRY_CD = B.MS_TRY_CD "
							strSQL = strSQL & " WHERE		YEAR(TM_REG_DT) = YEAR(GETDATE()) "
							strSQL = strSQL & " AND			B.MS_MEM_CD = '" & nRmsMemCd & "' "
							strSQL = strSQL & " ORDER BY	TM_REG_DT "

							Set RS = amsobjdb.sqlQuery(strSQL,3)

							if (not rs.Eof AND not rs.Bof) Then
								arrData = RS.GetRows
							end if

							if isArray(arrData) then
								iLMS2_PPT = 0
								iLang_TOT_SPT	= 0
								iLang_TOT_PPT	= 0
								iLang_TOT_GPT	= 0
								iMath_TOT_SPT	= 0
								iMath_TOT_PPT	= 0
								iMath_TOT_GPT	= 0
								iEng_TOT_GPT	= 0
								iSel3_TOT_GPT	= 0
								iSel1TOT__NM	= 0
								iSel1_TOT_SPT	= 0
								iSel1_TOT_PPT	= 0
								iSel1_TOT_GPT	= 0
								iSel2TOT__NM	= 0
								iSel2_TOT_SPT	= 0
								iSel2_TOT_PPT	= 0
								iSel2_TOT_GPT	= 0
								iLMS2_TOT_SPT	= 0
								iLMS2_TOT_PPT	= 0

								For i=0 To ubound(arrData, 2)
									sTryNM		= arrData(0, i)
									iLang_SPT	= cint(arrData(1, i))
									iLang_PPT	= cint(arrData(2, i))
									iLang_GPT	= cint(arrData(3, i))
									iMath_SPT	= cint(arrData(4, i))
									iMath_PPT	= cint(arrData(5, i))
									iMath_GPT	= cint(arrData(6, i))
									iEng_GPT	= cint(arrData(7, i))
									iSel3_GPT	= cint(arrData(8, i))
									iSel1_NM	= arrData(9, i)
									iSel1_SPT	= cint(arrData(10, i))
									iSel1_PPT	= cint(arrData(11, i))
									iSel1_GPT	= cint(arrData(12, i))
									iSel2_NM	= arrData(13, i)
									iSel2_SPT	= cint(arrData(14, i))
									iSel2_PPT	= cint(arrData(15, i))
									iSel2_GPT	= cint(arrData(16, i))

									iLMS2_PPT_PREV = iLMS2_PPT

									iLMS2_SPT	= iLang_SPT + iMath_SPT + iSel1_SPT + iSel2_SPT
									iLMS2_PPT	= iLang_PPT + iMath_PPT + iSel1_PPT + iSel2_PPT
									iLMS2_PPT_DIFF = iLMS2_PPT - iLMS2_PPT_PREV

									iLang_TOT_SPT	= iLang_TOT_SPT	+ iLang_SPT
									iLang_TOT_PPT	= iLang_TOT_PPT	+ iLang_PPT
									iLang_TOT_GPT	= iLang_TOT_GPT	+ iLang_GPT
									iMath_TOT_SPT	= iMath_TOT_SPT	+ iMath_SPT
									iMath_TOT_PPT	= iMath_TOT_PPT	+ iMath_PPT
									iMath_TOT_GPT	= iMath_TOT_GPT	+ iMath_GPT
									iEng_TOT_GPT	= iEng_TOT_GPT	+ iEng_GPT
									iSel3_TOT_GPT	= iSel3_TOT_GPT	+ iSel3_GPT
									iSel1_TOT_SPT	= iSel1_TOT_SPT	+ iSel1_SPT
									iSel1_TOT_PPT	= iSel1_TOT_PPT	+ iSel1_PPT
									iSel1_TOT_GPT	= iSel1_TOT_GPT	+ iSel1_GPT
									iSel2_TOT_SPT	= iSel2_TOT_SPT	+ iSel2_SPT
									iSel2_TOT_PPT	= iSel2_TOT_PPT	+ iSel2_PPT
									iSel2_TOT_GPT	= iSel2_TOT_GPT	+ iSel2_GPT
									iLMS2_TOT_SPT	= iLMS2_TOT_SPT	+ iLMS2_SPT
									iLMS2_TOT_PPT	= iLMS2_TOT_PPT	+ iLMS2_PPT

									%>
									<tr>
										<td><%=sTryNM%></td>
										<td><%=iLang_SPT%></td>
										<td><%=iLang_PPT%></td>
										<td><%=iLang_GPT%></td>
										<td><%=iMath_SPT%></td>
										<td><%=iMath_PPT%></td>
										<td><%=iMath_GPT%></td>
										<td><%=iEng_GPT%></td>
										<td><%=iSel3_GPT%></td>
										<td><%=iSel1_NM%></td>
										<td><%=iSel1_SPT%></td>
										<td><%=iSel1_PPT%></td>
										<td><%=iSel1_GPT%></td>
										<td><%=iSel2_NM%></td>
										<td><%=iSel2_SPT%></td>
										<td><%=iSel2_PPT%></td>
										<td><%=iSel2_GPT%></td>
										<td><%=iLMS2_SPT%></td>
										<td><%=iLMS2_PPT%></td>
										<td class="<%if iLMS2_PPT_DIFF > 0 then%>fc-r<%elseif iLMS2_PPT_DIFF < 0 then%>fc-b<%end if%>"><%if iLMS2_PPT_DIFF > 0 then%>▲ <%elseif iLMS2_PPT_DIFF < 0 then%>▼ <%end if%><%=abs(iLMS2_PPT_DIFF)%></td>
									</tr>
								<%Next%>
								<tr class="bg-b">
									<td>평균</td>
									<td><%=Formatnumber(iLang_TOT_SPT / (ubound(arrData, 2) + 1), 0)%></td>
									<td><%=Formatnumber(iLang_TOT_PPT / (ubound(arrData, 2) + 1), 0)%></td>
									<td><%=Formatnumber(iLang_TOT_GPT / (ubound(arrData, 2) + 1), 0)%></td>
									<td><%=Formatnumber(iMath_TOT_SPT / (ubound(arrData, 2) + 1), 0)%></td>
									<td><%=Formatnumber(iMath_TOT_PPT / (ubound(arrData, 2) + 1), 0)%></td>
									<td><%=Formatnumber(iMath_TOT_GPT / (ubound(arrData, 2) + 1), 0)%></td>
									<td><%=Formatnumber(iEng_TOT_GPT / (ubound(arrData, 2) + 1), 0)%></td>
									<td><%=Formatnumber(iSel3_TOT_GPT / (ubound(arrData, 2) + 1), 0)%></td>
									<td><%=iSel1_NM%></td>
									<td><%=Formatnumber(iSel1_TOT_SPT / (ubound(arrData, 2) + 1), 0)%></td>
									<td><%=Formatnumber(iSel1_TOT_PPT / (ubound(arrData, 2) + 1), 0)%></td>
									<td><%=Formatnumber(iSel1_TOT_GPT / (ubound(arrData, 2) + 1), 0)%></td>
									<td><%=iSel2_NM%></td>
									<td><%=Formatnumber(iSel2_TOT_SPT / (ubound(arrData, 2) + 1), 0)%></td>
									<td><%=Formatnumber(iSel2_TOT_PPT / (ubound(arrData, 2) + 1), 0)%></td>
									<td><%=Formatnumber(iSel2_TOT_GPT / (ubound(arrData, 2) + 1), 0)%></td>
									<td><%=Formatnumber(iLMS2_TOT_SPT / (ubound(arrData, 2) + 1), 0)%></td>
									<td><%=Formatnumber(iLMS2_TOT_PPT / (ubound(arrData, 2) + 1), 0)%></td>
									<td></td>
								</tr>
							<%end if%>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<iframe name="runSource" width=0 height=0></iframe>
	</section>
</div>


</body>
</html>
