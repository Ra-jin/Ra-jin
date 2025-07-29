<!DOCTYPE html>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<%
	sTry_CD          = fncRequest("try_cd")
    sSubj_CD         = fncRequest("subj_cd")
%>
<html lang="ko">
<head>
	<meta charset="euc-kr" />
	<title>성적조회 - 성적조회시스템</title>
	<!-- #include virtual = "/include/head.asp" -->
</head>
<%
strSQL = ""
strSQL = strSQL & " SELECT		dbo.UF_GET_COM_DTL(111,'" & sSubj_CD & "') "
Set RS = amsobjdb.sqlQuery(strSQL,3)

sSubj_NM = RS(0)

RS.close
Set RS = Nothing
%>
<body>
<div class="wrap">
	<header class="pop-header">
		<h2>성적조회</h2>
		<span class="btn-close" onclick="window.close();">x</span>
	</header>
	<section class="popup-content">
		<div class="content-in">
			<div class="title-box">
				<h3 class="title"><%=sSubj_NM%></h3>
				<p class="txt-al-r">
					<span class="blt-sample blt-gray">객관식</span>
					<span class="blt-sample blt-blue">주관식</span>
				</p>
			</div>
			<%
			strSQL = ""
			strSQL = strSQL & " SELECT		TA_QUES_NO "
			strSQL = strSQL & "             , TA_ANSWER_NO "
			strSQL = strSQL & "             , TA_CORRECT_OX "
			strSQL = strSQL & " FROM		AMS_TRY_ANSWER (nolock) "
			strSQL = strSQL & " WHERE		TA_TRY_CD = '" & sTry_CD & "' "
			strSQL = strSQL & " AND			TA_MEM_CD = '" & nRmsMemCd & "' "
			strSQL = strSQL & " AND			TA_SUBJ_CD = '" & sSubj_CD & "' "
			strSQL = strSQL & " ORDER BY	TA_QUES_NO "

			Set RS = amsobjdb.sqlQuery(strSQL,3)
			
			iAnswer_Cnt = 0
			CntPerRow   = 25
			if RS.BOF OR RS.EOF then
			else
				arrAnswer = RS.GetRows
				iAnswer_Cnt = RS.RecordCount
			end if
			RS.close
			Set RS = Nothing 

			'Row_Cnt = -(int(-(iAnswer_Cnt / CntPerRow)))
			Row_Cnt = 2

			if iAnswer_Cnt = 0 then %>
				<div class="tb-type1 tb-tdBlack">
					<table summary="이 표는 정오표를 제공하며 문항, 정답, 입력값으로 구성되어있습니다.">
						<tbody>
							<tr><td>정오표 데이터 없음</td></tr>
						</tbody>
					</table>
				</div><%
			else 
				For i=0 To Row_Cnt-1 %>
					<div class="tb-type1 mo-no">
						<table summary="이 표는 정오표를 제공하며 문항, 정답, 입력값으로 구성되어있습니다.">
							<caption>정오표 정보</caption>
							<colgroup>
								<col style="width:5%;">
								<col style="width:3%;">
								<col style="width:3%;">
								<col style="width:3%;">
								<col style="width:3%;">
								<col style="width:3%;">
								<col style="width:3%;">
								<col style="width:3%;">
								<col style="width:3%;">
								<col style="width:3%;">
								<col style="width:3%;">
								<col style="width:3%;">
								<col style="width:3%;">
								<col style="width:3%;">
								<col style="width:3%;">
								<col style="width:3%;">
								<col style="width:3%;">
								<col style="width:3%;">
								<col style="width:3%;">
								<col style="width:3%;">
								<col style="width:3%;">
								<col style="width:3%;">
								<col style="width:3%;">
								<col style="width:3%;">
								<col style="width:3%;">
								<col style="width:3%;">
							</colgroup>
							<thead>
								<tr>
									<th>문항</th>
									<% For j=0 To CntPerRow-1 
										color = ""
										if (i * CntPerRow + j) < iAnswer_Cnt then 
											if instr(arrAnswer(1, (i * CntPerRow + j)), "B") > 0 then color = "bg-b"
										end if%>
										<th class="<%=color%>"><%=(i * CntPerRow + j + 1)%></th>
									<% Next %>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>정답</td>
									<% For j=0 To CntPerRow-1
										if (i * CntPerRow + j) < iAnswer_Cnt then
											color = ""
											if ucase(arrAnswer(2, (i * CntPerRow + j))) = "X" then
												color = "fc-r"
											end if
											Response.Write "<td class=""" & color & """>" & arrAnswer(2, (i * CntPerRow + j)) & "</td>"
										else
											Response.Write "<td></td>"
										end if%>
									<% Next %>
								</tr>
								<tr class="borderB-n">
									<td>입력값</td>
									<% For j=0 To CntPerRow-1 %>
										<td><%
											if (i * CntPerRow + j) < iAnswer_Cnt then
												Response.Write arrAnswer(1, (i * CntPerRow + j))
											else
												Response.Write ""
											end if%>
										</td>
									<% Next %>
								</tr>
							</tbody>
						</table>
						
					
				
					</div>
				<%Next
			end if %>
			<!--<p class="tableInfo">※ 주관식 답안은 제공되지 않습니다.</p>-->
			
		</div>
		
		<!-- 모바일일 경우 -->
		<div class="content-in">
			<div class="table-wrap pc-no">
				<div>
					<table class="tb-type1">
						<thead>
							<tr>
								<th>문항</th>
								<th>정답</th>
								<th>입력값</th>
							</tr>
						</thead>
						<tbody>
							<% if iAnswer_Cnt = 0 then %>
								<tr>
									<td colspan="3">정오표 데이터 없음</td>
								</tr>
							<% else
								For i=0 To iAnswer_Cnt-1 %>
									<tr>
										<td><%=i + 1%></td>
										<td><%=arrAnswer(2, i)%></td>
										<td><%=arrAnswer(1, i)%></td>
									</tr>
								<%Next
							end if %>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!-- 모바일일 경우 -->
	</section>
</div>
</body>
</html>
