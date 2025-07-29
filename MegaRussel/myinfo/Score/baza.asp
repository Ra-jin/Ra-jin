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
								<a href="result.asp">모의고사</a>
								<a href="baza.asp" class="on">바자관 콘텐츠</a>
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
										Set RS = Nothing 
										
										%>
									</select>
									</form>
								</div>
							</div>
						</div>
						<div class="s-tabCon">
							<div class="tb-type2 score-result mt30">
								<table summary="이 표는 바자관 콘텐츠를 제공하며 회차, 시험명, 문항수, 총점, 내 점수, 평균(학원/전체/상위30%), 상세보기로 구성되어있습니다.">
									<caption>바자관 콘텐츠</caption>
									<colgroup>
										<col style="width:8%;">
										<col style="width:20%;">
										<col style="width:10%;">
										<col style="width:13%;">
										<col style="width:13%;">
										<col style="width:13%;">
										<col style="width:13%;">
										<col style="width:10%;">
									</colgroup>
									<thead>
										<tr>
											<th rowspan="2">회차</th>
											<th rowspan="2">시험명</th>
											<th rowspan="2" class="mo-no">문항수</th>
											<th colspan="4" class="mo-no">총점</th>
											<th rowspan="2">상세보기</th>

										</tr>
										<tr>
											<th class="mo-no ">내점수</th>
											<th class="mo-no">평균(학원)</th>
											<th class="mo-no">평균(전체)</th>
											<th class="mo-no">평균(상위 30%)</th>
										</tr>
									</thead>
									<tbody>
										<%
									
							
										strSQL = ""
										strSQL = strSQL & " SELECT JM_TRY_NM, JD_ANS_SCORE, JD_TRY_NUM, JD_ACA_CD, JD_JM_IDX, JD_IDX, "
										strSQL = strSQL & " (SELECT CONVERT(NUMERIC(3,0),ROUND(AVG(CAST(JD_ANS_SCORE AS DECIMAL(10,6))),0)) FROM AMS_JTRY_DTL WITH(NOLOCK) WHERE A.JD_JM_IDX = JD_JM_IDX)AS WHOLE_AVG_SCORE , "
                						strSQL = strSQL & " (SELECT CONVERT(NUMERIC(3,0),ROUND(AVG(CAST(JD_ANS_SCORE AS DECIMAL(10,6))),0)) FROM AMS_JTRY_DTL WITH(NOLOCK) WHERE  A.JD_JM_IDX  = JD_JM_IDX AND A.JD_ACA_CD=JD_ACA_CD) AS ACA_AVG_SCORE, "
                						strSQL = strSQL & " (SELECT CONVERT(NUMERIC(4,1),ROUND(AVG(CAST(JD_ANS_SCORE AS DECIMAL(10,6))),1)) FROM (SELECT TOP 30 PERCENT JD_ANS_SCORE FROM ( SELECT DISTINCT JD_ANS_SCORE, JD_MEM_CD FROM AMS_JTRY_DTL WITH(NOLOCK) WHERE A.JD_JM_IDX = JD_JM_IDX) B ORDER BY JD_ANS_SCORE DESC) B) AS WHOLE_AVG_TOP30, "
										strSQL = strSQL & " JM_TRY_DAY "
                                        strSQL = strSQL & " FROM AMS_JTRY_DTL A (NOLOCK)  "
                                        strSQL = strSQL & " INNER JOIN AMS_JTRY_MAS ON JM_IDX = JD_JM_IDX "
                                    	strSQL = strSQL & " WHERE		JD_MEM_CD = '" & nRmsMemCd & "' "
										strSQL = strSQL & " AND 		YEAR(JM_TRY_DAY) = '"& sYear &"' "
										strSQL = strSQL & " ORDER BY JM_TRY_DAY "
										
									
										Set RS = amsobjdb.sqlQuery(strSQL,3)

										
										i = 1
										If RS.EOF <> True Then
											DO WHILE NOT RS.EOF 

										%>
										<tr>
											<td><%=i%></td>
											<td><%=RS("JM_TRY_NM")%></td>
											<td class="mo-no"><%=RS("JD_TRY_NUM")%></td>
											<td class="mo-no"><%=RS("JD_ANS_SCORE")%></td>
											<td class="mo-no"><%=RS("ACA_AVG_SCORE")%></td>
											<td class="mo-no"><%=RS("WHOLE_AVG_SCORE")%></td>
											<td class="mo-no"><%=RS("WHOLE_AVG_TOP30")%></td>
											<td><a href="javascript:;" onclick="baza_pop('<%=RS("JD_IDX")%>','<%=RS("JD_ACA_CD")%>')" class="btnType-b-l">상세보기</a></td>
										</tr>
										<% 
											
										RS.MoveNext
										i = i + 1
											LOOP
										END IF

										RS.close
										Set RS = Nothing 
											
										%>
									</tbody>
								</table>
							</div>
							<!-- <p class="tableInfo">※ 원점수, 표준점수, 백분위 총합 = 국수탐(2) 기준</p> -->
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

	//바자관콘텐츠
	function baza_pop(mock_cd,aca_cd){
		var mem_cd = <%=nRmsMemCd%>
		var year = <%=sYear%>
		window.open("popBaza.asp?mock_cd="+mock_cd+"&mem_cd="+mem_cd+"&year="+year+"&aca_cd="+aca_cd,"","width=1020, height=768, resizable=no, scrollbars=yes, status=no, left=50px, top=100px");
	}
</script>
</body>
</html>
