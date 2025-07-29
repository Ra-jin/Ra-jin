<% @Language="VBScript" CODEPAGE="949" %>
<%
Response.CharSet="euc-kr"
Session.codepage="949"
Response.codepage="949"
Response.ContentType="text/html;charset=euc-kr"
%>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/Member/login_check.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<%

sAcaCd              = VARS("V_ACA_CD")
sYear               = VARS("V_YEAR")
sMonth              = right("0" & VARS("V_MONTH"), 2)
nRmsMemCd           = VARS("V_MEM_CD")

strSQL = ""
strSQL = strSQL & " SELECT		0, BM_BOOK_NM, SUM(CASE WHEN MR_SB_CD IS NULL THEN 1 ELSE 0 END) "
strSQL = strSQL & " FROM		AMS_SALE_BOOK	A (NOLOCK) "
strSQL = strSQL & " INNER JOIN	AMS_BOOK_MAS	B (NOLOCK) ON SB_BOOK_CD = BM_BOOK_CD "
strSQL = strSQL & " INNER JOIN	AMS_BOOK_CMON	C (NOLOCK) ON BM_BOOK_CD = BC_BOOK_CD "
strSQL = strSQL & " INNER JOIN	AMS_BOOK_ACA	D (NOLOCK) ON BM_BOOK_CD = BA_BOOK_CD "
strSQL = strSQL & " INNER JOIN	MegaRussel..MG_AMS_CODE	E (NOLOCK) ON  BA_ACA_CD = AMS_CODE_FNS "
strSQL = strSQL & " LEFT JOIN	AMS_MEAL_RESERVATION	F (NOLOCK) ON SB_SB_CD = MR_SB_CD "
strSQL = strSQL & " WHERE		1=1 "
strSQL = strSQL & " AND			A.SB_MEM_CD = '" & nRmsMemCd & "' "
strSQL = strSQL & " AND			A.SB_SALE_ST = 11 "
strSQL = strSQL & " AND			A.SB_REF_DT IS NULL "
strSQL = strSQL & " AND			B.BM_PRO_TYPE = 'F' "
strSQL = strSQL & " AND			BC_SALE_MON = '" & sYear & sMonth & "' "
strSQL = strSQL & " AND			AMS_CODE_ACA = '" & sAcaCd & "' "
strSQL = strSQL & " GROUP BY	SB_BOOK_CD, BM_BOOK_NM "
strSQL = strSQL & " HAVING		SUM(CASE WHEN MR_SB_CD IS NULL THEN 1 ELSE 0 END) > 0 "
set RS = amsobjdb.sqlQuery(strSql,3)
If RS.EOF <> True Then%>
    <select name="V_TICKET_SET_CD">
    <%DO WHILE NOT RS.EOF%>
        <option value="0||<%=RS(2)%>">[<%=RS(1)%>] 예약가능 식권 : <%=RS(2)%>개</option>
        <%RS.MoveNext
    LOOP%>
    </select>
<%ELSE%>
    <select name="V_TICKET_SET_CD" disabled>
        <option value="0||0">잔여 식권 없음</option>
    </select>
<%END IF

RS.close
Set RS = Nothing
%>


    