<% @Language="VBScript" CODEPAGE="949" %>
<%
Response.CharSet="euc-kr"
Session.codepage="949"
Response.codepage="949"
Response.ContentType="text/html;charset=euc-kr"
%>

<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<%
    nRmsMemCd         = fncRequest("rms_mem_cd")
    sPT_Type          = fncRequest("pt_type")
    sSubject          = unescape(fncRequest("subject"))
    sReturn           = ""

    strSQL = strSQL & " SELECT		A.* "
    strSQL = strSQL & "             , ISNULL(B.MS_LANG_SPT, 0) AS MS_LANG_SPT, ISNULL(B.MS_LANG_PPT, 0) AS MS_LANG_PPT, ISNULL(B.MS_LANG_GPT, 0) AS MS_LANG_GPT "
    strSQL = strSQL & "             , ISNULL(B.MS_MATH_SPT, 0) AS MS_MATH_SPT, ISNULL(B.MS_MATH_PPT, 0) AS MS_MATH_PPT, ISNULL(B.MS_MATH_GPT, 0) AS MS_MATH_GPT "
    strSQL = strSQL & "             , ISNULL(B.MS_ENG_SPT , 0) AS MS_ENG_SPT , ISNULL(B.MS_ENG_PPT , 0) AS MS_ENG_PPT , ISNULL(B.MS_ENG_GPT , 0) AS MS_ENG_GPT  "
    strSQL = strSQL & "             , ISNULL(B.MS_SEL3_SPT, 0) AS MS_SEL3_SPT, ISNULL(B.MS_SEL3_PPT, 0) AS MS_SEL3_PPT, ISNULL(B.MS_SEL3_GPT, 0) AS MS_SEL3_GPT "
    strSQL = strSQL & "             , ISNULL(B.MS_SEL1_SPT, 0) AS MS_SEL1_SPT, ISNULL(B.MS_SEL1_PPT, 0) AS MS_SEL1_PPT, ISNULL(B.MS_SEL1_GPT, 0) AS MS_SEL1_GPT "
    strSQL = strSQL & "             , ISNULL(B.MS_SEL2_SPT, 0) AS MS_SEL2_SPT, ISNULL(B.MS_SEL2_PPT, 0) AS MS_SEL2_PPT, ISNULL(B.MS_SEL2_GPT, 0) AS MS_SEL2_GPT "
    strSQL = strSQL & " FROM		( "
    strSQL = strSQL & "             SELECT		TM_TRY_CD, dbo.UF_GET_COM_DTL(140, TM_DIV_CD) AS DIV_NM, CONVERT(CHAR(10), TM_REG_DT, 102) AS TRY_DT, TM_TRY_NM, MS_MEM_CD "
    strSQL = strSQL & "                         , SUM(ISNULL(MS_LANG_SPT, 0) + ISNULL(MS_MATH_SPT, 0) + ISNULL(MS_SEL1_SPT, 0) + ISNULL(MS_SEL2_SPT, 0)) AS MS_TOTAL_SPT "
    strSQL = strSQL & "                         , SUM(ISNULL(MS_LANG_PPT, 0) + ISNULL(MS_MATH_PPT, 0) + ISNULL(MS_SEL1_PPT, 0) + ISNULL(MS_SEL2_PPT, 0)) AS MS_TOTAL_PPT "
    strSQL = strSQL & "                         , SUM(ISNULL(MS_LANG_GPT, 0) + ISNULL(MS_MATH_GPT, 0) + ISNULL(MS_SEL1_GPT, 0) + ISNULL(MS_SEL2_GPT, 0)) AS MS_TOTAL_GPT "
    strSQL = strSQL & "             FROM		AMS_TRY_MAS A (NOLOCK) "
    strSQL = strSQL & "             INNER JOIN	AMS_MEM_SCORE B (NOLOCK) ON A.TM_TRY_CD = B.MS_TRY_CD "
    strSQL = strSQL & "             WHERE		YEAR(TM_REG_DT) = YEAR(GETDATE()) "
    strSQL = strSQL & "             AND			B.MS_MEM_CD = '" & nRmsMemCd & "' "
    strSQL = strSQL & "             GROUP BY	TM_TRY_CD, TM_DIV_CD, TM_REG_DT, TM_TRY_NM, MS_MEM_CD "
    strSQL = strSQL & "             ) A "
    strSQL = strSQL & " INNER JOIN	AMS_MEM_SCORE B ON A.TM_TRY_CD = B.MS_TRY_CD AND A.MS_MEM_CD = B.MS_MEM_CD "
    strSQL = strSQL & " ORDER BY	A.TRY_DT "

    Set RS = amsobjdb.sqlQuery(strSQL,3)

    If RS.EOF <> True Then
        DO WHILE NOT RS.EOF
            valSubject = ""

            if sSubject = "ÃÑÁ¡" then valSubject = "TOTAL"
            if sSubject = "±¹¾î" then valSubject = "LANG"
            if sSubject = "¼öÇÐ" then valSubject = "MATH"
            if sSubject = "¿µ¾î" then valSubject = "ENG"
            if sSubject = "Å½±¸1" then valSubject = "SEL1"
            if sSubject = "Å½±¸2" then valSubject = "SEL2"
            if sSubject = "ÇÑ±¹»ç" then valSubject = "SEL3"

            sReturn = sReturn & "['" & RS("TM_TRY_NM") & "', " & RS("MS_" & valSubject & "_" & sPT_Type) & ", '" & RS("MS_" & valSubject & "_" & sPT_Type) & "']"
            RS.MoveNext

            If RS.EOF <> True Then sReturn = sReturn & "||"
        LOOP
    END IF

    RS.close
    Set RS = Nothing

    Response.Write   sReturn
%>