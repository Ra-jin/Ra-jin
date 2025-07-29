<!DOCTYPE html>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/Member/login_check.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<%
	mem_cd          = fncRequest("mem_cd")
    sYear			= fncRequest("year")
    ACA_CD          = fncRequest("ACA_CD")

	if sYear = "" then
		sYear = YEAR(now)
	end if
	    
    strSQL = "" 
    strSQL = strSQL & " SELECT COUNT(*) "
    strSQL = strSQL & " FROM AMS_JTRY_DTL WITH(NOLOCK) " 
    strSQL = strSQL & " WHERE JD_MEM_CD = '" & mem_cd & "' " 

    EXAM_COUNT = amsobjDB.sqlresult(strSQL)

    strSQL = "" 
    strSQL = strSQL & " SELECT MONTH(JM_TRY_DAY) AS JM_TRY_DAY "
    strSQL = strSQL & " FROM AMS_JTRY_MAS A WITH(NOLOCK) " 
    strSQL = strSQL & " INNER JOIN AMS_JTRY_DTL B ON A.JM_IDX = B.JD_JM_IDX "
    strSQL = strSQL & " WHERE YEAR(JM_TRY_DAY) = '" & sYear & "' "
    strSQL = strSQL & " AND JD_MEM_CD = '" & mem_cd & "' "
    strSQL = strSQL & " ORDER BY JM_TRY_DAY "


    Set RS = amsobjdb.sqlQuery(strSQL,3)
  
	If RS.EOF <> True Then
		DO WHILE NOT RS.EOF 
            JM_TRY_DAY= JM_TRY_DAY & "," & RS("JM_TRY_DAY")
        RS.MoveNext
		LOOP
	END IF

	RS.close
	Set RS = Nothing 

    strSQL = "" 
    strSQL = strSQL & " SELECT DISTINCT JM_TRY_NM, JD_ANS_SCORE, JM_TRY_DAY "
    strSQL = strSQL & " FROM AMS_JTRY_DTL WITH(NOLOCK) " 
    strSQL = strSQL & " INNER JOIN AMS_JTRY_MAS ON JM_IDX = JD_JM_IDX "
    strSQL = strSQL & " WHERE YEAR(JM_TRY_DAY) = '" & sYear & "' "
    strSQL = strSQL & " AND JD_MEM_CD = '" & mem_cd & "' " 
    strSQL = strSQL & " ORDER BY JM_TRY_DAY "

    Set RS = amsobjdb.sqlQuery(strSQL,3)
  
	If RS.EOF <> True Then
		DO WHILE NOT RS.EOF 
            JM_ANS_SCORE= JM_ANS_SCORE & "," & RS("JD_ANS_SCORE")
        RS.MoveNext
		LOOP
	END IF

	RS.close
	Set RS = Nothing 

    strSQL = ""
	strSQL = strSQL & " SELECT JM_TRY_NM, JD_ACA_CD, "
	strSQL = strSQL & " (SELECT CONVERT(NUMERIC(3,0),ROUND(AVG(CAST(JD_ANS_SCORE AS DECIMAL(10,6))),0)) FROM AMS_JTRY_DTL (NOLOCK) WHERE  A.JD_JM_IDX  = JD_JM_IDX AND A.JD_ACA_CD=JD_ACA_CD) AS ACA_AVG_SCORE "
	strSQL = strSQL & " FROM AMS_JTRY_DTL A (NOLOCK)  "
    strSQL = strSQL & " INNER JOIN AMS_JTRY_MAS ON JM_IDX = JD_JM_IDX "
	strSQL = strSQL & " WHERE YEAR(JM_TRY_DAY) = '" & sYear & "' "
	strSQL = strSQL & " AND	JD_MEM_CD = '" & mem_Cd & "' "
    strSQL = strSQL & " ORDER BY JM_TRY_DAY"
	
    Set RS = amsobjdb.sqlQuery(strSQL,3)
  
	If RS.EOF <> True Then
		DO WHILE NOT RS.EOF 
            ACA_AVG_SCORE= ACA_AVG_SCORE & "," & RS("ACA_AVG_SCORE")
        RS.MoveNext
		LOOP
	END IF

	RS.close
	Set RS = Nothing 

    strSQL = ""
	strSQL = strSQL & " SELECT JM_TRY_NM, JD_ACA_CD, "
	strSQL = strSQL & " (SELECT CONVERT(NUMERIC(3,0),ROUND(AVG(CAST(JD_ANS_SCORE AS DECIMAL(10,6))),0)) FROM AMS_JTRY_DTL (NOLOCK)WHERE A.JD_JM_IDX = JD_JM_IDX) AS WHOLE_AVG_SCORE"
	strSQL = strSQL & " FROM AMS_JTRY_DTL A (NOLOCK)  "
    strSQL = strSQL & " INNER JOIN AMS_JTRY_MAS ON JM_IDX = JD_JM_IDX "
	strSQL = strSQL & " WHERE YEAR(JM_TRY_DAY) = '" & sYear & "' "
	strSQL = strSQL & " AND	JD_MEM_CD = '" & mem_Cd & "' "
    strSQL = strSQL & " ORDER BY JM_TRY_DAY"

    Set RS = amsobjdb.sqlQuery(strSQL,3)
  
	If RS.EOF <> True Then
		DO WHILE NOT RS.EOF 
            WHOLE_AVG_SCORE = WHOLE_AVG_SCORE & "," & RS("WHOLE_AVG_SCORE")
        RS.MoveNext
		LOOP
	END IF

	RS.close
	Set RS = Nothing 

%>
<html lang="ko">
<head>
	<title>상담정보 - 성적조회시스템</title>
	<!-- #include virtual = "/include/head.asp" -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
</head>
<body>
<div class="wrap">
	<header class="pop-header">
		<h2>전체시험정보</h2>
		<span class="btn-close" onclick="window.close();">x</span>
	</header>
	<section class="popup-content">
		<div class="content-in">	
            <div class="graph-wrap">
                <canvas id="mixed-chart" width="800" height="300"></canvas>
            </div>	
            <input type="hidden" name="exam_count" id="exam_count" value="<%=EXAM_COUNT%>">
            <input type="hidden" name="exam_month" id="exam_month" value="<%=JM_TRY_DAY%>">
            <input type="hidden" name="exam_myjumsu" id="exam_myjumsu" value="<%=JM_ANS_SCORE%>">
            <input type="hidden" name="aca_avg" id="aca_avg" value="<%=ACA_AVG_SCORE%>">
            <input type="hidden" name="whole_avg" id="whole_avg" value="<%=WHOLE_AVG_SCORE%>">

            <%
                strSQL = ""
				strSQL = strSQL & " SELECT	MONTH(JM_TRY_DAY) as JM_TRY_DAY, JM_TRY_RANGE, JM_TRY_SUBJECT, JD_TRY_TOTAL, JM_TRY_NM, JD_JM_IDX, JD_ANS_SCORE, JD_IDX, JD_ACA_CD, JD_TRY_NUM, "
                strSQL = strSQL & " (SELECT CONVERT(NUMERIC(3,0),ROUND(AVG(CAST(JD_ANS_SCORE AS DECIMAL(10,6))),0)) FROM AMS_JTRY_DTL (NOLOCK)WHERE A.JD_JM_IDX = JD_JM_IDX)AS WHOLE_AVG_SCORE , "
                strSQL = strSQL & " (SELECT CONVERT(NUMERIC(3,0),ROUND(AVG(CAST(JD_ANS_SCORE AS DECIMAL(10,6))),0)) FROM AMS_JTRY_DTL (NOLOCK) WHERE  A.JD_JM_IDX  = JD_JM_IDX AND A.JD_ACA_CD=JD_ACA_CD) AS ACA_AVG_SCORE, "
                strSQL = strSQL & " (SELECT CONVERT(NUMERIC(4,1),ROUND(AVG(CAST(JD_ANS_SCORE AS DECIMAL(10,6))),1)) FROM (SELECT TOP 30 PERCENT JD_ANS_SCORE FROM ( SELECT DISTINCT JD_ANS_SCORE, JD_MEM_CD FROM AMS_JTRY_DTL WHERE A.JD_JM_IDX = JD_JM_IDX) B ORDER BY JD_ANS_SCORE DESC) B) AS WHOLE_AVG_TOP30 "
                strSQL = strSQL & " FROM		AMS_JTRY_DTL A (NOLOCK)  "
                strSQL = strSQL & " INNER JOIN AMS_JTRY_MAS ON JM_IDX = JD_JM_IDX "
				strSQL = strSQL & " WHERE		YEAR(JM_TRY_DAY) = '" & sYear & "' "
				strSQL = strSQL & " AND			JD_MEM_CD = '" & mem_cd & "' "
				strSQL = strSQL & "	ORDER BY	JM_TRY_DAY"

                ' RESPONSE.WRITE strSQL
                ' RESPONSE.END
                
                Set RS = amsobjdb.sqlQuery(strSQL,3)
                Dim arrList : arrList = Null
                If Not (RS.EoF And RS.BoF) Then
                arrList = RS.getrows
                End If
                RS.close
                Set RS = Nothing

                If IsNull(arrList) = False Then
		       
		        For nLoopCnt = 0 To UBound(arrList,2)
			        JM_EXAM_DAY = arrList(0,nLoopCnt)
			        JM_EXAM_RANGE = arrList(1,nLoopCnt)
			        JM_EXAM_SUBJECT = arrList(2,nLoopCnt)
			        JM_EXAM_TOTAL = arrList(3,nLoopCnt)
			        JM_EXAM_NM = arrList(4,nLoopCnt)
                    JD_JM_IDX = arrList(5,nLoopCnt)
			        JM_ANS_SCORE = arrList(6,nLoopCnt)
                    JD_IDX   = arrList(7,nLoopCnt)
			        JM_ACA_CD = arrList(8,nLoopCnt)
                    JD_TRY_NUM = arrList(9,nLoopCnt)
			        WHOLE_AVG_SCORE = arrList(10,nLoopCnt)
			        ACA_AVG_SCORE = arrList(11,nLoopCnt)
                    WHOLE_AVG_TOP30 = arrList(12,nLoopCnt)

                    if JD_TRY_NUM = "" or isnull(JD_TRY_NUM) = true then
                        JD_TRY_NUM = 15
                    end if
                            
            %>

            <div class="tb-type1 mo-t-scroll mt30">
				<table summary="이 표는 시험정보를 제공하며 점수, 평균학원, 평균전체, 평균상위30%로 구성되어있습니다." class="score-info">
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
					<caption>시험 정보</caption>
					<tbody>
                        <tr>
                            <td class="bg-g" rowspan="12"><%=JM_EXAM_DAY%>월</td>
                            <td rowspan="12">
                                <%=JM_EXAM_RANGE%><br><br><%=JM_EXAM_SUBJECT%><br><br><%=JM_EXAM_TOTAL%>점 만점
                            </td>
                            <td class="bg-g">내 점수</td>
                            <td colspan="2"><%=JM_ANS_SCORE%></td>
                            <td colspan="2" class="bg-g">평균(학원)</td>
                            <td colspan="2"><%=ACA_AVG_SCORE%></td>
                            <td colspan="2" colspan="2" class="bg-g">평균(전체)</td>
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
                            <td class="b-l">문항</td>
                            <%
                            for cnt = num2+1 to iColCnt+num2
                            %>
                            <%if cnt=iQuestion_Cnt+1 OR cnt>iQuestion_Cnt+1 THEN%>
                            <td></td>
                            <%ELSE%>
                            <td><%=cnt%></td>
                            <%end if%>
                            <%
                                next
                            %>
                        </tr>
                        <%
                            
                            strSql = ""
                            strSql = strSql & vbcrlf & " SELECT	"
                            for i=num2 to iColCnt+num2-1
                                
                                strSql = strSql & vbcrlf & "JD_ANS_NO"&i+1&" "
                                if i <> iColCnt+num2-1 then
                                    strSql = strSql & vbcrlf & "," 
                                end If 
                            next
                            strSql = strSql & vbcrlf & " FROM		AMS_JTRY_DTL WITH(NOLOCK) "
                            strSql = strSql & vbcrlf & " WHERE		JD_IDX = "&JD_IDX

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
                            
                            Set RS = amsobjdb.sqlQuery(strSQL,3)
                            IF NOT RS.EOF THEN
                                arrAca_per = RS.GetRows()
                            END IF
                            RS.close
                            SET RS = nothing
                           
                        %>
                        <tr>
                            <!-- <td class="b-l"></td> -->
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
                                if i <> iColCnt+num2-1  then
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
            <% 
					Next
                End If
		    %>
        </div>
		<iframe name="runSource" width=0 height=0></iframe>
	</section>
</div>
<script src="https://russel.megastudy.net/common/js/plugin/chart.js"></script>
<script>
var count = document.getElementById('exam_count').value;
var month = document.getElementById('exam_month').value;
var jumsu = document.getElementById('exam_myjumsu').value;
var aca_avg = document.getElementById('aca_avg').value;
var whole_avg = document.getElementById('whole_avg').value;

var exam_month = month.split(',');
var exam_jumsu = jumsu.split(',');
var exam_aca_avg = aca_avg.split(',');
var exam_whole_avg = whole_avg.split(',');

var arr = new Array();
for(var i=0; i<count; i++){
    arr[i] = exam_month[i+1]+"월";
}

var arr2 = new Array();
for(var i=0; i<count; i++){
    arr2[i] = exam_jumsu[i+1];
}

var arr3 = new Array();
for(var i=0; i<count; i++){
    arr3[i] = exam_aca_avg[i+1];
}

var arr4 = new Array();
for(var i=0; i<count; i++){
    arr4[i] = exam_whole_avg[i+1];
}

var ctx = document.getElementById("mixed-chart");
var myChart = new Chart(ctx, {
    type: "bar",
    data: {
        labels: arr,
        datasets: [
            {
                type: "line",
                backgroundColor: "rgba(54, 162, 235, 0.5)",
                borderColor:"rgba(54, 162, 235, 0.5)",
                label: "내 점수",
                data: arr2
                
            },
            {
                type: "bar",
                backgroundColor: "rgba(75, 192, 192, 0.2)",
                label: "학원(평균)",
                data: arr3
            },
            {
                type: "bar",
                backgroundColor: "rgba(255, 159, 64, 0.2)",
                label: "전체(평균)",
                data: arr4
            }
        ]
    },
    options: {
        maintainAspectRatio: false,
        responsive: true,
        maxBarThickness: 60,
        plugins: {
            title: {
                display: true,
                text: '월별 성취도 현황',
                font:{size:20}
            }
        }
    }
});


</script>

</body>
</html>
