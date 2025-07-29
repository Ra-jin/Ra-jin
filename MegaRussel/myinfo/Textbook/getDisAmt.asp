<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<%
    book_sale_amt = 0

    strSql = ""
	strSql = strSql & " Exec Msp_Get_Pay_Dis_Amt_New_03_New "
	strSql = strSql & "     NULL, "
	strSql = strSql & "		" & VARS("V_DIS_NO") & ", "
	strSql = strSql & "		" & "13, "
	strSql = strSql & "		'" & VARS("V_BOOK_CD") & "' "

	set RS = amsobjdb.sqlQuery(strSql,2)

	IF NOT RS.EOF THEN
		DO WHILE NOT RS.EOF
			if RS(1) = "41" then
				book_sale_amt = FormatNumber(RS(0), 0)
			end if

			RS.MoveNext()
		LOOP
	END IF

    Response.Write book_sale_amt
%>