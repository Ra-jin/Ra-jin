<% @Language="VBScript" CODEPAGE="949" %>
<%
Response.CharSet="euc-kr"
Session.codepage="949"
Response.codepage="949"
Response.ContentType="text/html;charset=euc-kr"
%>

<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<%
MEM_ID = VARS("V_MEM_ID")
V_DOM_CD = VARS("V_DOM_CD")
V_SUBJ_CD = VARS("V_SUBJ_CD")

if V_DOM_CD = "" then 
    V_DOM_CD = "11"
end if

if V_DOM_CD = "" then 
    alert("과목을 선택하세요.")
    response.end
end if

strSql = "SELECT CM_EXAM_CD FROM MR_CSAT_MAS (NOLOCK) WHERE CM_EXAM_NM = '2024 러셀 수능 모의체험'"
EXAM_CD = russelobjdb.sqlResult(strSql)

'과목명
strSql = ""
strSql = "SELECT dbo.UF_GET_COM_DTL(111, " & V_DOM_CD & ")"
sDom_NM = amsobjdb.sqlResult(strSql)

If V_SUBJ_CD = "" Then '선택 과목명 디폴트
	IF V_DOM_CD = "11" Then '국어
		V_SUBJ_CD = "101"
	ELSEIF V_DOM_CD = "13" Then '수학
		V_SUBJ_CD = "103"
	ELSEIF V_DOM_CD = "12" Then '영어
		V_SUBJ_CD = "12"
	ELSEIF V_DOM_CD = "43" Then '사탐
		V_SUBJ_CD = "22"
	ELSEIF V_DOM_CD = "42" Then '과학
		V_SUBJ_CD = "32"
	END IF
End If

'선택 과목 명
strSql = ""
strSql = "SELECT dbo.UF_GET_COM_DTL(111, " & V_SUBJ_CD & ")"

sSubj_NM = amsobjdb.sqlResult(strSql)

If EXAM_CD <> "" AND V_SUBJ_CD <> "" AND MEM_ID <> "" THEN
	'과목 문항 정보
	strSql = ""
	strSql = strSql & " SELECT CD_EXAM_NUM "
	strSql = strSql & " FROM MR_CSAT_DTL (NOLOCK) "
	strSql = strSql & " WHERE CD_EXAM_MAS_CD = "&EXAM_CD&" AND CD_SUBJECT_CD = "&V_SUBJ_CD&" "

	EXAM_NUM = russelobjdb.sqlResult(strSql)

	'응시자 정보
	strSql = ""
	strSql = strSql & " SELECT CMM_CD, CMM_MEM_NM, CMM_MEM_ID, CMM_SUBJECT_CD, CMM_MEM_JUMSU "
	strSql = strSql & " FROM MR_CSAT_MEM_MAS (NOLOCK) "
	strSql = strSql & " WHERE CMM_EXAM_CD = "&EXAM_CD&" AND CMM_MEM_ID = '"&MEM_ID&"' AND CMM_SUBJECT_CD = "&V_SUBJ_CD&" "

	set Rs = russelobjdb.sqlQuery(strSql,1)
    	Do until Rs.eof
			CMM_CD 			= Rs("CMM_CD")
			CMM_MEM_NM 		= Rs("CMM_MEM_NM")
			CMM_MEM_ID 		= Rs("CMM_MEM_ID")
			CMM_SUBJECT_CD 	= Rs("CMM_SUBJECT_CD")
			CMM_MEM_JUMSU 	= Rs("CMM_MEM_JUMSU")
		Rs.movenext
		loop
	Rs.close
    set Rs = Nothing
END IF
%>

<div class="tab-wrap03">
    <div class="tab-cont on">
		
		<% if V_DOM_CD <> "12" then %>
    	<p class="r-txt">※ 정답률 및 선지별 선택 비율은 동일 선택과목 응시자 기준으로 집계됩니다. (공통 문항도 동일)</p>
		<% end if %>
    	<div class="tit-box">
    		<p><strong><%=sDom_NM%><%if V_DOM_CD="42" or V_DOM_CD="43" then%>탐구<%end if%></strong> (선택과목 - <%=sSubj_NM%>) , <%=EXAM_NUM%>문항 <% if CMM_MEM_JUMSU <> "" then %><span class="blue bold">(나의 원점수 : <%=CMM_MEM_JUMSU%>점)<% end if %></span></p>
    	</div>
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
    		</colgroup>
    		<thead>
    			<tr class="low">
    				<th rowspan="2">번호</th>
    				<th rowspan="2">정오</th>
    				<th rowspan="2">정답</th>
    				<th rowspan="2">선택답</th>
    				<th rowspan="2">난이도</th>
    				<th rowspan="2">배점</th>
    				<th rowspan="2">정답률</th>
    				<th colspan="5">선지별 선택비율</th>
    			</tr>
    			<tr class="low">
    				<th>1</th>
    				<th>2</th>
    				<th>3</th>
    				<th>4</th>
    				<th>5</th>
    			</tr>
    		</thead>
    		<tbody>
			<%
				If CMM_CD <> "" THEN '해당 학생이 응시과목일때
					
					strSql = ""
					strSql = strSql & " SELECT C.CCA_EXAM_NUM, B.CMD_MEM_VALUE, C.CCA_EXAM_ANS, B.CMD_MEM_ANSWER, C.CCA_EXAM_LEVEL, C.CCA_EXAM_JUM, C.CCA_ANS_PER, C.CCA_ANS_PER1, C.CCA_ANS_PER2, C.CCA_ANS_PER3, C.CCA_ANS_PER4, C.CCA_ANS_PER5, C.CCA_SHORT_ANS_PER "
					strSql = strSql & " FROM MR_CSAT_MEM_MAS A "
					strSql = strSql & " LEFT JOIN MR_CSAT_MEM_DTL B on CMM_CD = CMD_CMM_CD "
					strSql = strSql & " INNER JOIN MR_CSAT_COM_ANS C on A.CMM_EXAM_CD = CCA_EXAM_CODE AND  CMM_SUBJECT_CD = CCA_SUBJECT_CODE AND CMD_QA_NUM = CCA_EXAM_NUM "
					strSql = strSql & " WHERE CMD_CMM_CD = "&CMM_CD&" "
					strSql = strSql & " ORDER BY CCA_EXAM_NUM "

					set Rs = russelobjdb.sqlQuery(strSql,1)
                	Do until Rs.eof
			%>
    			<tr>
    				<th><%=Rs("CCA_EXAM_NUM")%></th>
    				<td><span <%If Rs("CMD_MEM_VALUE") = "O" Then%> class="blue" <%else%> class="red_txt" <%end if%>><%=Rs("CMD_MEM_VALUE")%></span></td>
    				<td><%=Rs("CCA_EXAM_ANS")%></td>
    				<td><%=Rs("CMD_MEM_ANSWER")%></td>
    				<td><%=Rs("CCA_EXAM_LEVEL")%></td>
    				<td><%=Rs("CCA_EXAM_JUM")%></td>
    				<td><%=Rs("CCA_ANS_PER")%>%</td>
					<% if isnull(Rs("CCA_SHORT_ANS_PER")) or Rs("CCA_SHORT_ANS_PER") = "" then %>
    				<td><%=Rs("CCA_ANS_PER1")%>%</td>
    				<td><%=Rs("CCA_ANS_PER2")%>%</td>
    				<td><%=Rs("CCA_ANS_PER3")%>%</td>
    				<td><%=Rs("CCA_ANS_PER4")%>%</td>
    				<td><%=Rs("CCA_ANS_PER5")%>%</td>
					<% else %>
					<td colspan="5"><%=Rs("CCA_SHORT_ANS_PER")%>% (주관식)</td>
					<% end if%>
    			</tr>
			<%
                    	Rs.movenext
					loop
					Rs.close
                	set Rs = Nothing

				ELSE '응시 과목아닐때
					strSql = ""
					strSql = strSql & " SELECT CCA_EXAM_NUM,CCA_EXAM_ANS,CCA_EXAM_LEVEL,CCA_EXAM_JUM,CCA_ANS_PER,CCA_ANS_PER1,CCA_ANS_PER2,CCA_ANS_PER3,CCA_ANS_PER4,CCA_ANS_PER5,CCA_SHORT_ANS_PER "
					strSql = strSql & " FROM MR_CSAT_COM_ANS "
					strSql = strSql & " WHERE CCA_EXAM_CODE = "&EXAM_CD&" AND CCA_SUBJECT_CODE = "&V_SUBJ_CD&" "
					strSql = strSql & " ORDER BY CCA_EXAM_NUM "
					
					set Rs = russelobjdb.sqlQuery(strSql,1)
                	Do until Rs.eof
			%>
    			<tr>
    				<th><%=Rs("CCA_EXAM_NUM")%></th>
    				<td>-</td>
    				<td><%=Rs("CCA_EXAM_ANS")%></td>
    				<td>-</td>
    				<td><%=Rs("CCA_EXAM_LEVEL")%></td>
    				<td><%=Rs("CCA_EXAM_JUM")%></td>
    				<td><%=Rs("CCA_ANS_PER")%>%</td>
    				<% if isnull(Rs("CCA_SHORT_ANS_PER")) or Rs("CCA_SHORT_ANS_PER") = "" then %>
    				<td><%=Rs("CCA_ANS_PER1")%>%</td>
    				<td><%=Rs("CCA_ANS_PER2")%>%</td>
    				<td><%=Rs("CCA_ANS_PER3")%>%</td>
    				<td><%=Rs("CCA_ANS_PER4")%>%</td>
    				<td><%=Rs("CCA_ANS_PER5")%>%</td>
					<% else %>
					<td colspan="5"><%=Rs("CCA_SHORT_ANS_PER")%>% (주관식)</td>
					<% end if%>
    			</tr>
			<%
                    	Rs.movenext
					loop
					Rs.close
                	set Rs = Nothing
				End If
    		%>	
    		</tbody>
    	</table>
    </div>
</div>