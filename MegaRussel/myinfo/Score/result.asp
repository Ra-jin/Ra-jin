<!DOCTYPE html>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/Member/login_check.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<%
	sYear			= fncRequest("V_SEL_YEAR")

	if sYear = "" then
		sYear = YEAR(now)
	end if
	
%>
<html lang="ko">
<head>
	<meta charset="euc-kr" />
	<title>성적조회 - 성적조회시스템</title>
	<!-- #include virtual = "/include/head.asp" -->
</head>
<body>
<div class="wrap">
	<header class="sub">
		<a href="/index.asp" class="btnPrev">성적조회</a>
		
		
		<!-- #include virtual = "/include/header.asp" -->
		<!-- <ul class="info">
            <li class="student"><%=gLoginMemName%>(<%=nRmsMemCd%>)</li>
		</ul>
        <a href="javascript:void(0);" onclick="javascript:location.href='<%=header_addr2%>/russel/member/logout.asp?rtnUrl=<%=header_addr2%>';" class="btnClose btnLogout">로그아웃</a> -->
	</header>
	<section class="sub">
		<div class="inBox">
			<div class="tabCommon">
				<ul class="tabList">
					<li class="on"><a href="result.asp">성적조회</a></li>
					<li><a href="consulting.asp">성적상담</a></li>
				</ul>
				<div class="tabCon">
					<div class="tabConList">
						<h2 class="blind">성적조회 응시현황</h2>
						<div class="s-tab-wrap">
							<div class="s-tab">
								<a href="result.asp" class="on">모의고사</a>
								<a href="baza.asp">바자관 콘텐츠</a>
							</div>
							<div class="pos-r">
								<div class="select-box">
									<form method="post" target="_self">
									<select name="V_SEL_YEAR" id="" style="width:80px;" onchange="javascript:submit();"><%
										strSQL = ""
										strSQL = strSQL & " SELECT		CONVERT(char(4), DATEADD(YY, number, DATEADD(YY, -5, GETDATE())), 112) AS YEAR "
										strSQL = strSQL & " FROM		master..SPT_VALUES (NOLOCK) "
										strSQL = strSQL & " WHERE		TYPE = 'P' "
										strSQL = strSQL & " AND			number <= 5 "
										strSQL = strSQL & " ORDER BY	YEAR DESC "

										Set RS = amsobjdb.sqlQuery(strSQL,3)

										If RS.EOF <> True Then
											DO WHILE NOT RS.EOF %>
												<option value="<%=RS("YEAR")%>" <% if sYear = RS("YEAR") then Response.Write "selected" end if %>><%=RS("YEAR")%></option>
												<% RS.MoveNext
											LOOP
										END IF

										RS.close
										Set RS = Nothing %>
									</select>
									</form>
								</div>
							</div>
						</div>
						<div class="s-tabCon">
							<div class="tb-type2 score-result mt30">
								<table summary="이 표는 성적조회를 제공하며 순번, 시험구분, 시행일, 시험명, 원점수, 표준점수, 백분위, 상세보기로 구성되어있습니다.">
									<caption>미수령현황</caption>
									<colgroup>
										<col style="width:*;">
										<col style="width:*;">
										<col style="width:*;">
										<col style="width:*;">
										<col style="width:*;">
										<col style="width:*;">
										<col style="width:*;">
										<col style="width:*;">
									</colgroup>
									<thead>
										<tr>
											<th>순번</th>
											<th>시험구분</th>
											<th class="mo-no">시행일</th>
											<th>시험명</th>
											<th class="mo-no">원점수</th>
											<th class="mo-no">표준점수</th>
											<th class="mo-no">백분위</th>
											<th>상세보기</th>
										</tr>
									</thead>
									<tbody>
										<%
										strSQL = ""
										strSQL = strSQL & " SELECT		TM_TRY_CD, MS_EXAM_CD, dbo.UF_GET_COM_DTL(140, TM_DIV_CD) AS DIV_NM, CONVERT(CHAR(10), TM_REG_DT, 102) AS TRY_DT, TM_TRY_NM "
										strSQL = strSQL & "             , SUM(ISNULL(MS_LANG_OPT, 0) + ISNULL(MS_MATH_OPT, 0) + ISNULL(MS_SEL1_OPT, 0) + ISNULL(MS_SEL2_OPT, 0)) AS TOTAL_OPT "
										strSQL = strSQL & "             , SUM(ISNULL(MS_LANG_SPT, 0) + ISNULL(MS_MATH_SPT, 0) + ISNULL(MS_SEL1_SPT, 0) + ISNULL(MS_SEL2_SPT, 0)) AS TOTAL_SPT "
										strSQL = strSQL & "             , SUM(ISNULL(MS_LANG_PPT, 0) + ISNULL(MS_MATH_PPT, 0) + ISNULL(MS_SEL1_PPT, 0) + ISNULL(MS_SEL2_PPT, 0)) AS TOTAL_PPT "
										strSQL = strSQL & " FROM		AMS_TRY_MAS A (NOLOCK) "
										strSQL = strSQL & " INNER JOIN	AMS_MEM_SCORE B (NOLOCK) ON A.TM_TRY_CD = B.MS_TRY_CD "
										strSQL = strSQL & " WHERE		YEAR(TM_REG_DT) = '" & sYear & "' "
										strSQL = strSQL & " AND			B.MS_MEM_CD = '" & nRmsMemCd & "' "
										strSQL = strSQL & " GROUP BY	TM_TRY_CD, MS_EXAM_CD, TM_DIV_CD, TM_REG_DT, TM_TRY_NM, MS_MEM_CD "
										strSQL = strSQL & " ORDER BY	TM_REG_DT DESC "

										Set RS = amsobjdb.sqlQuery(strSQL,3)
										i = 1
										If RS.EOF <> True Then
											DO WHILE NOT RS.EOF
										
											 %>
												<tr>
													<td><%=i%></td>
													<td><%=RS("DIV_NM")%></td>
													<td class="mo-no"><%=RS("TRY_DT")%></td>
													<td><span class="subject"><%=RS("TM_TRY_NM")%></span></td>
													<td class="mo-no"><%=RS("TOTAL_OPT")%></td>
													<td class="mo-no"><%=RS("TOTAL_SPT")%></td>
													<td class="mo-no"><%=RS("TOTAL_PPT")%></td>
													<td><a href="#none" onclick="javascript:fnc_pop('<%= RS("TM_TRY_CD") %>','<%=RS("MS_EXAM_CD")%>','<%=nRmsMemCd%>');return false;" class="btnType-b-l">상세보기</a></td>
												</tr>
												
												<% RS.MoveNext
												i = i + 1
											LOOP
										END IF

										RS.close
										Set RS = Nothing %>
									</tbody>
								</table>
							</div>
							<p class="tableInfo">※ 원점수, 표준점수, 백분위 총합 = 국수탐(2) 기준</p>
						</div>
					</div>
					<div class="tabConList">
						<h2 class="blind">성적상담</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>

<!-- footer -->
<!-- #include virtual = "/include/footer.asp" -->
<!-- //footer -->
<script>
	//성적조회 팝업
	function fnc_pop(try_cd, exam_cd, mem_cd){
		window.open("popResult.asp?try_cd="+try_cd+"&exam_cd="+exam_cd+"&mem_cd="+mem_cd,"","width=1020, height=768, resizable=no, scrollbars=yes, status=no, left=50px, top=100px");
	}


</script>
</body>
</html>
