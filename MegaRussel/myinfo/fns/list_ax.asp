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

sMode               = VARS("V_MODE")
nRmsMemCd           = VARS("V_MEM_CD")
nTopCnt             = VARS("V_COUNT")

if nTopCnt = "" then nTopCnt = 10

if sMode = "pay" then
    strSQL = ""
    strSQL = strSQL & " SELECT		COUNT(*) "
    strSQL = strSQL & " FROM		AMS_SALE_BOOK	A (NOLOCK) "
    strSQL = strSQL & " INNER JOIN	AMS_BOOK_MAS	B (NOLOCK) ON SB_BOOK_CD = BM_BOOK_CD "
    strSQL = strSQL & " WHERE		1=1 "
    strSQL = strSQL & " AND			A.SB_MEM_CD = '" & nRmsMemCd & "' "
    strSQL = strSQL & " AND			B.BM_PRO_TYPE = 'F' "
    strSQL = strSQL & " AND			A.SB_SALE_DT >= DATEADD(M, -6, GETDATE()) "
    strSQL = strSQL & " GROUP BY	CONVERT(VARCHAR(10), SB_SALE_DT, 23), BM_BOOK_NM, SB_BOOK_CD "
    strSQL = strSQL & " ORDER BY	CONVERT(VARCHAR(10), SB_SALE_DT, 23) DESC, BM_BOOK_NM DESC "
    iMaxCnt = amsobjdb.sqlResult(strSql)
    if iMaxCnt = "" then iMaxCnt = 0

    strSQL = ""
    strSQL = strSQL & " SELECT		TOP " & nTopCnt & " CONVERT(VARCHAR(10), SB_SALE_DT, 23) AS SALE_DT, BM_BOOK_NM AS PRO_NM, COUNT(*) AS PRO_CNT, SUM(SB_REAL_AMT) AS PRO_AMT "
    strSQL = strSQL & " FROM		AMS_SALE_BOOK	A (NOLOCK) "
    strSQL = strSQL & " INNER JOIN	AMS_BOOK_MAS	B (NOLOCK) ON SB_BOOK_CD = BM_BOOK_CD "
    strSQL = strSQL & " WHERE		1=1 "
    strSQL = strSQL & " AND			A.SB_MEM_CD = '" & nRmsMemCd & "' "
    strSQL = strSQL & " AND			B.BM_PRO_TYPE = 'F' "
    strSQL = strSQL & " AND			A.SB_SALE_DT >= DATEADD(M, -6, GETDATE()) "
    strSQL = strSQL & " GROUP BY	CONVERT(VARCHAR(10), SB_SALE_DT, 23), BM_BOOK_NM, SB_BOOK_CD "
    strSQL = strSQL & " ORDER BY	CONVERT(VARCHAR(10), SB_SALE_DT, 23) DESC, BM_BOOK_NM DESC "
    set RS = amsobjdb.sqlQuery(strSql,3)
    If RS.EOF <> True Then
        DO WHILE NOT RS.EOF%>
            <tr>
                <td><%=RS("SALE_DT")%></td>
                <td><%=RS("PRO_NM")%></td>
                <td class="price"><%=FormatCurrencySTR(RS("PRO_AMT"))%></td>
                <td><%=RS("PRO_CNT")%></td>
            </tr>
            <%RS.MoveNext
        LOOP
    END IF

    RS.close
    Set RS = Nothing
    %>
    <input type="hidden" name="V_MAX_LIST" value="<%=iMaxCnt%>" />
<% elseif sMode = "runout" then
    strSQL = ""
    strSQL = strSQL & " SELECT		COUNT(*) "
    strSQL = strSQL & " FROM		AMS_SALE_BOOK	A (NOLOCK) "
    strSQL = strSQL & " INNER JOIN	AMS_BOOK_MAS	B (NOLOCK) ON SB_BOOK_CD = BM_BOOK_CD "
    strSQL = strSQL & " LEFT JOIN	AMS_MEAL_RESERVATION C (NOLOCK) ON SB_SB_CD = MR_SB_CD "
    strSQL = strSQL & " INNER JOIN	AMS_ACA_MAS		D (NOLOCK) ON  MR_ACA_CD = AM_ACA_CD "
    strSQL = strSQL & " WHERE		1=1 "
    strSQL = strSQL & " AND			A.SB_MEM_CD = '" & nRmsMemCd & "' "
    strSQL = strSQL & " AND			A.SB_SALE_ST = 11 "
    strSQL = strSQL & " AND			A.SB_REF_DT IS NULL "
    strSQL = strSQL & " AND			B.BM_PRO_TYPE = 'F' "
    strSQL = strSQL & " AND			C.MR_SB_CD IS NOT NULL "
    strSQL = strSQL & " AND			CONVERT(VARCHAR(8), C.MR_MEAL_DT, 112) < CONVERT(VARCHAR(8), GETDATE(), 112) "
    strSQL = strSQL & " AND			C.MR_MEAL_DT >= DATEADD(M, -6, GETDATE()) "
    iMaxCnt = amsobjdb.sqlResult(strSql)
    if iMaxCnt = "" then iMaxCnt = 0

    strSQL = ""
    strSQL = strSQL & " SELECT		TOP " & nTopCnt & " CONVERT(VARCHAR(10), C.MR_MEAL_DT, 23) AS MR_MEAL_DT "
    strSQL = strSQL & " 			, AM_ACA_ABBR "
    strSQL = strSQL & " 			, CASE WHEN C.MR_MEAL_KIND = 2 THEN '중식소진' WHEN C.MR_MEAL_KIND = 3 THEN '석식소진' END AS MR_MEAL_KIND "
    strSQL = strSQL & " FROM		AMS_SALE_BOOK	A (NOLOCK) "
    strSQL = strSQL & " INNER JOIN	AMS_BOOK_MAS	B (NOLOCK) ON SB_BOOK_CD = BM_BOOK_CD "
    strSQL = strSQL & " LEFT JOIN	AMS_MEAL_RESERVATION C (NOLOCK) ON SB_SB_CD = MR_SB_CD "
    strSQL = strSQL & " INNER JOIN	AMS_ACA_MAS		D (NOLOCK) ON  MR_ACA_CD = AM_ACA_CD "
    strSQL = strSQL & " WHERE		1=1 "
    strSQL = strSQL & " AND			A.SB_MEM_CD = '" & nRmsMemCd & "' "
    strSQL = strSQL & " AND			A.SB_SALE_ST = 11 "
    strSQL = strSQL & " AND			A.SB_REF_DT IS NULL "
    strSQL = strSQL & " AND			B.BM_PRO_TYPE = 'F' "
    strSQL = strSQL & " AND			C.MR_SB_CD IS NOT NULL "
    strSQL = strSQL & " AND			CONVERT(VARCHAR(8), C.MR_MEAL_DT, 112) < CONVERT(VARCHAR(8), GETDATE(), 112) "
    strSQL = strSQL & " AND			C.MR_MEAL_DT >= DATEADD(M, -6, GETDATE()) "
    strSQL = strSQL & " ORDER BY	CONVERT(VARCHAR(10), C.MR_MEAL_DT, 23) DESC, C.MR_MEAL_KIND DESC "
    set RS = amsobjdb.sqlQuery(strSql,3)
    If RS.EOF <> True Then
        DO WHILE NOT RS.EOF%>
            <tr>
                <td><%=RS("MR_MEAL_DT")%></td>
                <td><%=RS("AM_ACA_ABBR")%></td>
                <td><%=RS("MR_MEAL_KIND")%></td>
            </tr>
            <%RS.MoveNext
        LOOP
    END IF

    RS.close
    Set RS = Nothing
    %>
    <input type="hidden" name="V_MAX_LIST" value="<%=iMaxCnt%>" />
<% elseif sMode = "refund" then
    strSQL = ""
    strSQL = strSQL & " SELECT		COUNT(*) "
    strSQL = strSQL & " FROM		AMS_ACCREF_HIS	A (NOLOCK) "
    strSQL = strSQL & " INNER JOIN	( "
    strSQL = strSQL & " 				SELECT		RM_MEM_CD, RM_BACK_CD, COUNT(*) AS REF_CNT "
    strSQL = strSQL & " 				FROM		AMS_SALE_BOOK	A (NOLOCK) "
    strSQL = strSQL & " 				INNER JOIN	AMS_BOOK_MAS	B (NOLOCK) ON SB_BOOK_CD = BM_BOOK_CD "
    strSQL = strSQL & " 				INNER JOIN	AMS_REFUND_MAS	C (NOLOCK) ON SB_SB_CD = RM_SB_CD "
    strSQL = strSQL & " 				WHERE		1=1 "
    strSQL = strSQL & " 				AND			A.SB_SALE_ST = 13 "
    strSQL = strSQL & " 				AND			A.SB_REF_DT IS NOT NULL "
    strSQL = strSQL & " 				AND			B.BM_PRO_TYPE = 'F' "
    strSQL = strSQL & " 				GROUP BY	RM_MEM_CD, RM_BACK_CD "
    strSQL = strSQL & " 			) B ON AH_MEM_CD = RM_MEM_CD AND AH_BACK_CD = RM_BACK_CD "
    strSQL = strSQL & " INNER JOIN	(SELECT TOP 1 * FROM AMS_REF_ACCT (NOLOCK) WHERE RA_MEM_CD = '" & nRmsMemCd & "' AND RA_USE_YN = 'Y' ORDER BY RA_REG_DT DESC) C ON AH_MEM_CD = RA_MEM_CD "
    strSQL = strSQL & " WHERE		1=1 "
    strSQL = strSQL & " AND			AH_MEM_CD = '" & nRmsMemCd & "' "
    strSQL = strSQL & " AND			AH_REF_DT >= DATEADD(M, -6, GETDATE()) "
    strSQL = strSQL & " AND			AH_END_DT IS NOT NULL "
    iMaxCnt = amsobjdb.sqlResult(strSql)
    if iMaxCnt = "" then iMaxCnt = 0

    strSQL = ""
    strSQL = strSQL & " SELECT		TOP " & nTopCnt & " CONVERT(VARCHAR(10), AH_REF_DT, 23) AS AH_REF_DT "
    strSQL = strSQL & " 			, dbo.UF_GET_COM_DTL(149, RA_BANK_CD) AS BANK_NM, RA_RCV_NM, dbo.UF_GET_Decode(RA_ACCT_NUM) AS RA_ACCT_NUM "
    strSQL = strSQL & " 			, REF_CNT, AH_REF_AMT "
    strSQL = strSQL & " 			, CONVERT(VARCHAR(10), AH_END_DT, 23) AS AH_END_DT "
    strSQL = strSQL & " FROM		AMS_ACCREF_HIS	A (NOLOCK) "
    strSQL = strSQL & " INNER JOIN	( "
    strSQL = strSQL & " 				SELECT		RM_MEM_CD, RM_BACK_CD, COUNT(*) AS REF_CNT "
    strSQL = strSQL & " 				FROM		AMS_SALE_BOOK	A (NOLOCK) "
    strSQL = strSQL & " 				INNER JOIN	AMS_BOOK_MAS	B (NOLOCK) ON SB_BOOK_CD = BM_BOOK_CD "
    strSQL = strSQL & " 				INNER JOIN	AMS_REFUND_MAS	C (NOLOCK) ON SB_SB_CD = RM_SB_CD "
    strSQL = strSQL & " 				WHERE		1=1 "
    strSQL = strSQL & " 				AND			A.SB_SALE_ST = 13 "
    strSQL = strSQL & " 				AND			A.SB_REF_DT IS NOT NULL "
    strSQL = strSQL & " 				AND			B.BM_PRO_TYPE = 'F' "
    strSQL = strSQL & " 				GROUP BY	RM_MEM_CD, RM_BACK_CD "
    strSQL = strSQL & " 			) B ON AH_MEM_CD = RM_MEM_CD AND AH_BACK_CD = RM_BACK_CD "
    strSQL = strSQL & " INNER JOIN	(SELECT TOP 1 * FROM AMS_REF_ACCT (NOLOCK) WHERE RA_MEM_CD = '" & nRmsMemCd & "' AND RA_USE_YN = 'Y' ORDER BY RA_REG_DT DESC) C ON AH_MEM_CD = RA_MEM_CD "
    strSQL = strSQL & " WHERE		1=1 "
    strSQL = strSQL & " AND			AH_MEM_CD = '" & nRmsMemCd & "' "
    strSQL = strSQL & " AND			AH_REF_DT >= DATEADD(M, -6, GETDATE()) "
    strSQL = strSQL & " AND			AH_END_DT IS NOT NULL "
    strSQL = strSQL & " ORDER BY	AH_REF_DT DESC "
    set RS = amsobjdb.sqlQuery(strSql,3)
    If RS.EOF <> True Then
        DO WHILE NOT RS.EOF%>
            <tr>
                <td><%=RS("AH_REF_DT")%></td>
                <td class="price">-<%=RS("REF_CNT")%></td>
                <td class="price"><%=FormatCurrencySTR(RS("AH_REF_AMT"))%></td>
                <td><%=RS("BANK_NM")%>(<%=RS("RA_RCV_NM")%>)<br><%=RS("RA_ACCT_NUM")%></td>
                <td><%=RS("AH_END_DT")%></td>
                <td>환불<br>완료</td>
            </tr>
            <%RS.MoveNext
        LOOP
    END IF

    RS.close
    Set RS = Nothing
    %>
    <input type="hidden" name="V_MAX_LIST" value="<%=iMaxCnt%>" />
<% end if %>