<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/Member/login_check.asp" -->
<!-- 공통 인클루드 페이지 종료 -->

<%
On Error Resume Next

    nRmsMemCd           = VARS("V_MEM_CD")
    sAcaCd              = VARS("sel_aca_cd")
    sLocCd              = VARS("V_LOC_CD")
    sMod                = VARS("V_MOD")
    'sSetCd              = VARS("V_SET_CD")
    bDoLun              = replace(VARS("V_MEAL_LUN"), " " , "")
    bDoDin              = replace(VARS("V_MEAL_DIN"), " " , "")
    sYear               = VARS("V_YEAR")
    sMonth              = right("0" & VARS("V_MONTH"), 2)
    sDays               = replace(VARS("V_RESERVATION_DAY"), " ", "")

    arrDoLun            = split(bDoLun, ",")
    arrDoDin            = split(bDoDin, ",")
    arrDays             = split(sDays, ",")

    'Response.Write nRmsMemCd & "<br/>"
    'Response.Write sAcaCd & "<br/>"
    'Response.Write sLocCd & "<br/>"
    'Response.Write sMod & "<br/>"
    'Response.Write sSetCd & "<br/>"
    'Response.Write bDoLun & "<br/>"
    'Response.Write bDoDin & "<br/>"
    'Response.Write sDays & "<br/>"
    'response.end

    if nRmsMemCd = "" or sAcaCd = "" or sMod = "" then
        call js_redirect("/fns/calendar.asp", "잘못된 데이터 입니다.")
    end if

    if ubound(arrDays) <> ubound(arrDoLun) or ubound(arrDays) <> ubound(arrDoDin) then
        call js_redirect("/fns/calendar.asp", "잘못된 데이터 입니다.")
    end if

    if sMod = "R" then
        if sLocCd = "" then
            call js_redirect("/fns/calendar.asp", "잘못된 데이터 입니다.")
        end if
        ' 예약 가능한 식권 코드 가져오기
        strSQL = ""
        strSQL = strSQL & " SELECT		SB_SB_CD "
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
        strSQL = strSQL & " AND			MR_SB_CD IS NULL "
        strSQL = strSQL & " ORDER BY	SB_SB_CD "
        
        set RS = amsobjdb.sqlQuery(strSql,2)
        iTicketCnt = 0
        If not (RS.eof or RS.bof) then
            arrTicket = RS.getrows
            iTicketCnt = RS.RecordCount
        End If
        RS.close
        set RS = nothing

        iLunDateCnt = 0
        iDinDateCnt = 0

        if isArray(arrDays) = true then
            sWhereDate = ""
            for i=0 to ubound(arrDays)
                if arrDoLun(i) = "Y" then
                    if sWhereDate <> "" then
                        sWhereDate = sWhereDate & ", "
                    end if
                    sWhereDate = sWhereDate & "'" & arrDays(i) & "'"
                end if
            next

            if sWhereDate <> "" then
                strSQL = ""
                strSQL = strSQL & " SELECT      sDate "
                strSQL = strSQL & " FROM		MG_Meal		A (NOLOCK) "
                strSQL = strSQL & " INNER JOIN	MG_AMS_CODE	B (NOLOCK) ON sCode = CAMPUS_CODE "
                strSQL = strSQL & " WHERE		1=1 "
                strSQL = strSQL & " AND			sKind_l = 'Y' "
                strSQL = strSQL & " AND			AMS_CODE_ACA = '" & sAcaCd & "' "
                strSQL = strSQL & " AND			sDate IN (" & sWhereDate & ") "
                strSQL = strSQL & " ORDER BY    sDate "

                set RS = russelobjdb.sqlQuery(strSql,2)
                If not (RS.eof or RS.bof) then
                    arrLunDate = RS.getrows
                    iLunDateCnt = RS.RecordCount
                End If
                RS.close
                set RS = nothing
            end if

            sWhereDate = ""
            for i=0 to ubound(arrDays)
                if arrDoDin(i) = "Y" then
                    if sWhereDate <> "" then
                        sWhereDate = sWhereDate & ", "
                    end if

                    sWhereDate = sWhereDate & "'" & arrDays(i) & "'"
                end if
            next

            if sWhereDate <> "" then
                strSQL = ""
                strSQL = strSQL & " SELECT      sDate "
                strSQL = strSQL & " FROM		MG_Meal		A (NOLOCK) "
                strSQL = strSQL & " INNER JOIN	MG_AMS_CODE	B (NOLOCK) ON sCode = CAMPUS_CODE "
                strSQL = strSQL & " WHERE		1=1 "
                strSQL = strSQL & " AND			sKind_s = 'Y' "
                strSQL = strSQL & " AND			AMS_CODE_ACA = '" & sAcaCd & "' "
                strSQL = strSQL & " AND			sDate IN (" & sWhereDate & ") "
                strSQL = strSQL & " ORDER BY    sDate "

                set RS = russelobjdb.sqlQuery(strSql,2)
                If not (RS.eof or RS.bof) then
                    arrDinDate = RS.getrows
                    iDinDateCnt = RS.RecordCount
                End If
                RS.close
                set RS = nothing
            end if
        end if
        
        if (iLunDateCnt + iDinDateCnt) > iTicketCnt then
            call js_redirect("/fns/calendar.asp", "식권이 부족 합니다.")
        end if

        strSQL = ""
        strSQL_His = ""
        
        ticketInx = 0
        if isArray(arrLunDate) = true then
            for i=0 to ubound(arrLunDate, 2)
                strSQL_His = strSQL_His & " INSERT INTO AMS_MEAL_RESERVATION_HIS VALUES(GETDATE(), 'R', '" & arrLunDate(0,i) & "', '2', '" & nRmsMemCd & "', '" & sAcaCd & "', '" & sLocCd & "', '" & arrTicket(0, ticketInx) & "', GETDATE()); "
                strSQL = strSQL & " INSERT INTO AMS_MEAL_RESERVATION VALUES('" & arrLunDate(0,i) & "', '2', '" & nRmsMemCd & "', '" & sAcaCd & "', '" & sLocCd & "', '" & arrTicket(0, ticketInx) & "', GETDATE()); "
                ticketInx = ticketInx + 1
            next
        end if 

        if isArray(arrDinDate) = true then
            for i=0 to ubound(arrDinDate, 2)
                strSQL_His = strSQL_His & " INSERT INTO AMS_MEAL_RESERVATION_HIS VALUES(GETDATE(), 'R', '" & arrDinDate(0,i) & "', '3', '" & nRmsMemCd & "', '" & sAcaCd & "', '" & sLocCd & "', '" & arrTicket(0, ticketInx) & "', GETDATE()); "
                strSQL = strSQL & " INSERT INTO AMS_MEAL_RESERVATION VALUES('" & arrDinDate(0,i) & "', '3', '" & nRmsMemCd & "', '" & sAcaCd & "', '" & sLocCd & "', '" & arrTicket(0, ticketInx) & "', GETDATE()); "
                ticketInx = ticketInx + 1
            next
        end if

        if strSQL_His & strSQL <> "" then
            amsobjdb.begin()
            amsobjdb.sqlExecute(strSQL_His & strSQL)
            amsobjdb.trans("")
        end if

        call js_redirect("/fns/calendar.asp", "선택한 일자의 예약이 완료 되었습니다.")
    elseif sMod = "C" then
        strSQL = ""
        strSQL_His = ""
        if isArray(arrDays) = true then
            for i=0 to ubound(arrDays)
                if arrDoLun(i) = "Y" then
                    strSQL_His = strSQL_His & " INSERT INTO AMS_MEAL_RESERVATION_HIS "
                    strSQL_His = strSQL_His & " SELECT		GETDATE(), 'C', * "
                    strSQL_His = strSQL_His & " FROM		AMS_MEAL_RESERVATION (NOLOCK) "
                    strSQL_His = strSQL_His & " WHERE		1 = 1 "
                    strSQL_His = strSQL_His & " AND			MR_MEAL_DT = '" & arrDays(i) & "' "
                    strSQL_His = strSQL_His & " AND			MR_MEAL_KIND = '2' "
                    strSQL_His = strSQL_His & " AND			MR_MEM_CD = '" & nRmsMemCd & "' "
                    strSQL_His = strSQL_His & " AND			MR_ACA_CD = '" & sAcaCd & "' "

                    strSQL = strSQL & " DELETE FROM AMS_MEAL_RESERVATION "
                    strSQL = strSQL & " WHERE		1 = 1 "
                    strSQL = strSQL & " AND			MR_MEAL_DT = '" & arrDays(i) & "' "
                    strSQL = strSQL & " AND			MR_MEAL_KIND = '2' "
                    strSQL = strSQL & " AND			MR_MEM_CD = '" & nRmsMemCd & "' "
                    strSQL = strSQL & " AND			MR_ACA_CD = '" & sAcaCd & "' "
                end if
            next

            for i=0 to ubound(arrDays)
                if arrDoDin(i) = "Y" then
                    strSQL_His = strSQL_His & " INSERT INTO AMS_MEAL_RESERVATION_HIS "
                    strSQL_His = strSQL_His & " SELECT		GETDATE(), 'C', * "
                    strSQL_His = strSQL_His & " FROM		AMS_MEAL_RESERVATION (NOLOCK) "
                    strSQL_His = strSQL_His & " WHERE		1 = 1 "
                    strSQL_His = strSQL_His & " AND			MR_MEAL_DT = '" & arrDays(i) & "' "
                    strSQL_His = strSQL_His & " AND			MR_MEAL_KIND = '3' "
                    strSQL_His = strSQL_His & " AND			MR_MEM_CD = '" & nRmsMemCd & "' "
                    strSQL_His = strSQL_His & " AND			MR_ACA_CD = '" & sAcaCd & "' "

                    strSQL = strSQL & " DELETE FROM AMS_MEAL_RESERVATION "
                    strSQL = strSQL & " WHERE		1 = 1 "
                    strSQL = strSQL & " AND			MR_MEAL_DT = '" & arrDays(i) & "' "
                    strSQL = strSQL & " AND			MR_MEAL_KIND = '3' "
                    strSQL = strSQL & " AND			MR_MEM_CD = '" & nRmsMemCd & "' "
                    strSQL = strSQL & " AND			MR_ACA_CD = '" & sAcaCd & "' "
                end if
            next
        end if

        if strSQL_His & strSQL <> "" then
            amsobjdb.begin()
            amsobjdb.sqlExecute(strSQL_His & strSQL)
            amsobjdb.trans("")
        end if

        call js_redirect("/fns/calendar.asp", "선택한 예약이\n취소되었습니다.")
    end if
%>