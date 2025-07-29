<!DOCTYPE html>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<%
	mock_cd = fncRequest("mock_cd")
    mem_cd  = fncRequest("mem_cd")
    sYear   = fncRequest("year")
    aca_cd  = fncRequest("aca_cd")
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
				<!-- <p class="txt-al-r">※ 총합 = 국수탐(2) 기준</p> -->
			</div>
			<div class="tb-type1 tbl-flex">
				<table summary="이 표는 시험정보를 제공하며 시험명, 수험번호, 이름, 총점, 평균학원, 평균전체로 구성되어있습니다." class="score-info">
                    <caption>시험 정보</caption>
					<colgroup>
						<col style="width:33%;">
						<col style="width:33%;">
						<col style="width:33%;">
					</colgroup>
					<thead>
						<tr>
							<th>시험명</th>
							<th>수험번호</th>
							<th>이름</th>
						</tr>
					</thead>
					<tbody>
                    <%
                        strSQL = "" 
                        strSQL = strSQL & " SELECT JM_TRY_NM, (SELECT MM_MEM_NM FROM AMS_MEM_MAS (NOLOCK) WHERE	MM_MEM_CD = '" & mem_cd & "') AS JD_MEM_NM , JD_MEM_CD "
                        strSQL = strSQL & " FROM AMS_JTRY_DTL WITH(NOLOCK) " 
                        strSQL = strSQL & " INNER JOIN AMS_JTRY_MAS ON JM_IDX = JD_JM_IDX "
                        strSQL = strSQL & " WHERE JD_IDX = '" & mock_cd & "' "
                        
                         Set RS = amsobjdb.sqlQuery(strSQL,3)

					    If RS.EOF <> True Then
				    %>
                        <tr>
                            <td><%=RS("JM_TRY_NM")%></td>
                            <td><%=RS("JD_MEM_CD")%></td>
                            <td><%=RS("JD_MEM_NM")%></td>
                        </tr>
                    <%
                        END IF
                        
                        RS.close
						Set RS = Nothing 
					%>		
                    </tbody>
				</table>
                <table summary="이 표는 시험정보를 제공하며 시험명, 수험번호, 이름, 총점, 평균학원, 평균전체로 구성되어있습니다." class="score-info">
					<caption>시험 정보</caption>
					<colgroup>
						<col style="width:33%;">
						<col style="width:33%;">
						<col style="width:33%;">
					</colgroup>
					<thead>
						<tr>
							<th>총점</th>
							<th>평균(학원)</th>
							<th>평균(전체)</th>
						</tr>
					</thead>
					<tbody>
                        <%
                            strSQL = ""
						    strSQL = strSQL & " SELECT JM_TRY_NM, MONTH(JM_TRY_DAY) AS JM_TRY_DAY, JM_TRY_RANGE, JD_ANS_SCORE, JD_TRY_NUM, JD_ACA_CD, JD_JM_IDX, JM_TRY_SUBJECT, JD_TRY_TOTAL, "
						    strSQL = strSQL & " (SELECT CONVERT(NUMERIC(3,0),ROUND(AVG(CAST(JD_ANS_SCORE AS DECIMAL(10,6))),0)) FROM AMS_JTRY_DTL WITH(NOLOCK) WHERE A.JD_JM_IDX = JD_JM_IDX)AS WHOLE_AVG_SCORE , "
                            strSQL = strSQL & " (SELECT CONVERT(NUMERIC(3,0),ROUND(AVG(CAST(JD_ANS_SCORE AS DECIMAL(10,6))),0)) FROM AMS_JTRY_DTL WITH(NOLOCK) WHERE  A.JD_JM_IDX  = JD_JM_IDX AND A.JD_ACA_CD=JD_ACA_CD) AS ACA_AVG_SCORE, "
                            strSQL = strSQL & " (SELECT CONVERT(NUMERIC(4,1),ROUND(AVG(CAST(JD_ANS_SCORE AS DECIMAL(10,6))),1)) FROM (SELECT TOP 30 PERCENT JD_ANS_SCORE FROM ( SELECT DISTINCT JD_ANS_SCORE, JD_MEM_CD FROM AMS_JTRY_DTL WITH(NOLOCK) WHERE A.JD_JM_IDX = JD_JM_IDX) B ORDER BY JD_ANS_SCORE DESC) B) AS WHOLE_AVG_TOP30 "
                            strSQL = strSQL & " FROM AMS_JTRY_DTL A (NOLOCK)  "
                            strSQL = strSQL & " INNER JOIN AMS_JTRY_MAS ON JM_IDX = JD_JM_IDX "
                            strSQL = strSQL & " WHERE       JD_IDX = '" & mock_cd & "' "
                            
                            
                            
                            Set RS = amsobjdb.sqlQuery(strSQL,3)

							    If RS.EOF <> True Then
                                    JM_TRY_NM = RS("JM_TRY_NM")
                                    JM_TRY_DAY = RS("JM_TRY_DAY")
                                    JM_TRY_RENGE = RS("JM_TRY_RANGE")
                                    JD_ANS_SCORE = RS("JD_ANS_SCORE")
                                    JD_TRY_NUM = RS("JD_TRY_NUM")
                                    JD_ACA_CD = RS("JD_ACA_CD")
                                    JD_JM_IDX = RS("JD_JM_IDX")
                                    JM_TRY_SUBJECT = RS("JM_TRY_SUBJECT")
                                    JD_TRY_TOTAL = RS("JD_TRY_TOTAL")
                                    WHOLE_AVG_SCORE = RS("WHOLE_AVG_SCORE")
                                    ACA_AVG_SCORE  = RS("ACA_AVG_SCORE")
                                    WHOLE_AVG_TOP30 = RS("WHOLE_AVG_TOP30")

                                    if JD_TRY_NUM = "" or isnull(JD_TRY_NUM) = true then
                                        JD_TRY_NUM = 15
                                    end if
                        %>
                        <tr>
                            <td><%=JD_ANS_SCORE%></td>
                            <td><%=ACA_AVG_SCORE%></td>
                            <td><%=WHOLE_AVG_SCORE%></td>
                        </tr>
                        <%
                                END IF
                            RS.close
						    Set RS = Nothing 
						%>		
					</tbody>
				</table>
			</div>
            <div class="title-box mt30">
				<h3 class="title">성적 상세 정보</h3>
				<!-- <p class="txt-al-r">※ 총합 = 국수탐(2) 기준</p> -->
			</div>
            <div class="tb-type1 mo-t-scroll">
				<table  summary="이 표는 시험정보를 제공하며 점수, 평균학원, 평균전체, 평균상위30%로 구성되어있습니다." class="score-info">
					<caption>성적 상세 정보</caption>
                    <colgroup>
                        <col style="width:5%;">
                        <col style="width:12%;">
                        <col style="width:8%;">
                        <col style="width:5%;">
                        <col style="width:5%;">
                        <col style="width:5%;">
                        <col style="width:5%;">
                        <col style="width:5%;">
                        <col style="width:5%;">
                        <col style="width:5%;">
                        <col style="width:5%;">
                        <col style="width:5%;">
                        <col style="width:5%;">
                        <col style="width:5%;">
                        <col style="width:5%;">
                        <col style="width:5%;">
                        <col style="width:5%;">
                        <col style="width:5%;">
                    </colgroup>
					<tbody>
                        <tr>
                            <td class="bg-g" rowspan="12"><%=JM_TRY_DAY%>월</td>
                            <td rowspan="12">
                                <%=JM_TRY_RENGE%><br><br><%=JM_TRY_SUBJECT%><br><br><%=JD_TRY_TOTAL%>점 만점
                            </td>
                            <td class="bg-g">내 점수</td>
                            <td colspan="2"><%=JD_ANS_SCORE%></td>
                            <td colspan="2" class="bg-g">평균(학원)</td>
                            <td colspan="2"><%=ACA_AVG_SCORE%></td>
                            <td colspan="2" class="bg-g">평균(전체)</td>
                            <td colspan="2"><%=WHOLE_AVG_SCORE%></td>
                            <td colspan="3" class="bg-g">평균(상위 30%)</td>
                            <td colspan="2"><%=WHOLE_AVG_TOP30%></td>
                        </tr>
                        <%
                            iColCnt     = 15 '한줄에 표시될 답안 숫자
                            iQuestion_Cnt = JD_TRY_NUM '문항

                            num2 = 0
                           
                            For num = 0 To (-int(-(cdbl(iQuestion_Cnt) / cdbl(iColCnt))))-1
                           
                        %>
                        <tr class="bg-b">
                            <td class="b-l" style="width:40px;">문항</td>
                            <%
                            for cnt = num2+1 to iColCnt+num2
                            %>
                            <%if cnt=iQuestion_Cnt+1 OR cnt>iQuestion_Cnt+1 THEN%>
                            <td></td>
                            <%else%>
                            <td><%=cnt%></td>
                            <%end if%>
                            <%
                            next
                            %>
                        </tr>
                       
                        <%
                            ' iColCnt     = 15 '한줄에 표시될 답안 숫자
                            ' iQuestion_Cnt = JD_TRY_NUM '문항
                          
                            strSql = ""
                            strSql = strSql & vbcrlf & " SELECT	"
                            
                            for i= num2 to iColCnt+num2-1
                            
                                strSql = strSql & vbcrlf & "JD_ANS_NO"&i+1&" "
                                if i <> iColCnt+num2-1 then
                                    strSql = strSql & vbcrlf & "," 
                                end If 
                            next
                            strSql = strSql & vbcrlf & " FROM		AMS_JTRY_DTL WITH(NOLOCK) "
                            strSql = strSql & vbcrlf & " WHERE		JD_IDX = "&mock_cd


                            Set RS = amsobjdb.sqlQuery(strSQL,3)
                            IF NOT RS.EOF THEN
                                arrAnswer = RS.GetRows()
                            END IF

                            RS.close
                            SET RS = nothing
                           
                        %>
                        <tr>
                            <td class="b-l">정답</td>
                        <%
                            
                            For k=1 To iColCnt
                               sAnswer = arrAnswer(k-1,0)
                        
                        %>
                            <td><%=sAnswer%></td>
                        <%
                            NEXT 
                        %>
                        </tr>
                       
                        <%
                            strSQL = "" 
                            strSql = strSql & vbcrlf & " SELECT	"
                            for i=num2 to iColCnt+num2-1
                                
                                strSql = strSql & vbcrlf & "JP_PER"&i+1&" "
                                if i <> iColCnt+num2-1 then
                                    strSql = strSql & vbcrlf & "," 
                                end If 
                            next
                            strSQL = strSQL & " FROM AMS_JTRY_PER WITH(NOLOCK) " 
                            strSQL = strSQL & " WHERE JP_JM_IDX = '" & JD_JM_IDX & "' AND JP_ACA_CD = '" & ACA_CD & "' "

                          
                            ' RESPONSE.END
                            
                            Set RS = amsobjdb.sqlQuery(strSQL,3)
                            IF NOT RS.EOF THEN
                                arrAca_per = RS.GetRows()
                            END IF
                            RS.close
                            SET RS = nothing

                        %>
                        <tr>
                            <!-- <td class="b-l" class=""></td> -->
                            <td class="b-l">정답률(학원)</td>
                        <%
                            For k=1 To iColCnt
                               sAcaPer = arrAca_per(k-1,0)
                        %>
                            <%if k=iQuestion_Cnt+1 OR k>iQuestion_Cnt+1 THEN%>
                            <td></td>
                            <% Else %>
                            <td><%=sAcaPer%>%</td>
                            <% end if %>
                        <%
                            NEXT
                        %>
                        </tr>
                      
                        <%
                            strSQL = "" 
                            strSql = strSql & vbcrlf & " SELECT	"
                            for i=num2 to iColCnt+num2-1
                                
                                strSql = strSql & vbcrlf & "JP_PER"&i+1&" "
                                if i <> iColCnt+num2-1 then
                                    strSql = strSql & vbcrlf & "," 
                                end If 
                            next
                            strSQL = strSQL & " FROM AMS_JTRY_PER WITH(NOLOCK) " 
                            strSQL = strSQL & " WHERE JP_JM_IDX = '" & JD_JM_IDX & "' AND JP_ACA_CD = '0' "
                                
                            Set RS = amsobjdb.sqlQuery(strSQL,3)
                            IF NOT RS.EOF THEN
                                arrWhole_per = RS.GetRows()
                            END IF
                            RS.close
                            SET RS = nothing
                            
                        %>
                        <tr>
                            <!-- <td class="b-l"></td> -->
                            <td class="b-l">정답률(전체)</td>
                        <%
                            For k=1 To iColCnt
                               sWholePer = arrWhole_per(k-1,0)
                        %>
                            <%if k=iQuestion_Cnt+1 OR k>iQuestion_Cnt+1 THEN%>
                            <td></td>
                            <%else%>
                            <td><%=sWholePer%>%</td>
                            <%end if%>
                        <%
                            NEXT
                        %>
                        </tr>
                        <%
                            num2 = num2 + iColCnt
                            NEXT
                        %>
                    </tbody>
				</table>
			</div>
		</div>
	</section>
</div>
<script>
	// //정오표
	// function popTable(try_cd, subj_cd){
	// 	window.open("popSchedule.asp?try_cd="+try_cd+"&subj_cd="+subj_cd,"","width=1000, height=520, resizable=no, scrollbars=yes, status=no, left=50px, top=100px");
	// }

	function fnc_pop(){
		window.open('popAllBaza.asp?mem_cd=<%=mem_cd%>&year=<%=sYear%>&ACA_CD=<%=ACA_CD%>','popAllBaza','width=1020, height=768, resizable=no, scrollbars=yes, status=no, left=50px, top=100px');
	}
</script>
</body>
</html>
