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
sDay                = "01"
nRmsMemCd           = VARS("V_MEM_CD")
sIsTec              = VARS("V_IS_TEC")

strSQL = ""
strSQL = strSQL & " SELECT		B.sDate, sKind_l, sKind_s, sDate_hflag, sDate_htext, C.MR_LOC_CD, D.MR_LOC_CD "
strSQL = strSQL & " FROM		MegaRussel..MG_AMS_CODE		A (NOLOCK) "
strSQL = strSQL & " INNER JOIN	MegaRussel..MG_MEAL			B (NOLOCK) ON A.CAMPUS_CODE = B.sCode "
strSQL = strSQL & " LEFT JOIN	AMS_MEAL_RESERVATION		C (NOLOCK) ON A.AMS_CODE_ACA = C.MR_ACA_CD AND B.sDate = C.MR_MEAL_DT AND B.sKind_l = 'Y' AND C.MR_MEAL_KIND = 2 AND C.MR_MEM_CD = '" & nRmsMemCd & "' "
strSQL = strSQL & " LEFT JOIN	AMS_MEAL_RESERVATION		D (NOLOCK) ON A.AMS_CODE_ACA = D.MR_ACA_CD AND B.sDate = D.MR_MEAL_DT AND B.sKind_s = 'Y' AND D.MR_MEAL_KIND = 3 AND D.MR_MEM_CD = '" & nRmsMemCd & "' "
strSQL = strSQL & " WHERE		1=1 "
strSQL = strSQL & " AND			A.AMS_CODE_ACA = '" & sAcaCd & "' "
strSQL = strSQL & " AND			YEAR(B.sDate) = '" & sYear & "' "
strSQL = strSQL & " AND			MONTH(B.sDate) = '" & VARS("V_MONTH") & "' "
strSQL = strSQL & " ORDER BY    sDate "

set RS = amsobjdb.sqlQuery(strSql,2)

iCntMealSch = 0
If not (RS.eof or RS.bof) then
    arrMealSchList = RS.getrows
    iCntMealSch = RS.RecordCount
Else
End If
RS.close
set RS = nothing

strSQL = ""
strSQL = strSQL & " SELECT		sDate "
strSQL = strSQL & " FROM		( "
strSQL = strSQL & " 			SELECT		RANK() OVER (ORDER BY sDate) AS RANKING, B.sDate "
strSQL = strSQL & " 			FROM		MegaRussel..MG_AMS_CODE		A (NOLOCK) "
strSQL = strSQL & " 			INNER JOIN	MegaRussel..MG_MEAL			B (NOLOCK) ON A.CAMPUS_CODE = B.sCode "
strSQL = strSQL & " 			WHERE		1=1 "
strSQL = strSQL & "             AND			A.AMS_CODE_ACA = '" & sAcaCd & "' "
strSQL = strSQL & " 			AND			B.sDate >= CONVERT(VARCHAR(10), GETDATE(), 23) "
strSQL = strSQL & " 			AND			B.sDate_hflag = 'N' "
strSQL = strSQL & " 			) A "
strSQL = strSQL & " WHERE		1=1 "
strSQL = strSQL & " AND			RANKING = 3 "
set RS = amsobjdb.sqlQuery(strSql,2)

sFixDay = ""
If not (RS.eof or RS.bof) then
    sFixDay = RS("sDate")
Else
    sFixDay = year(now) & "-" & right("0" & month(now), 2) & "-" & day(now)
End If
RS.close
set RS = nothing

Function GetDaysInMonth(iMonth, iYear)
    Dim dTemp
    dTemp = DateAdd("d", -1, DateSerial(iYear, iMonth + 1, 1))
    GetDaysInMonth = Day(dTemp)
End Function

Function GetWeekdayMonthStartsOn(dAnyDayInTheMonth)
    Dim dTemp
    dTemp = DateAdd("d", -(Day(dAnyDayInTheMonth) - 1), dAnyDayInTheMonth)
    GetWeekdayMonthStartsOn = WeekDay(dTemp)
End Function

Function SubtractOneMonth(dDate)
    SubtractOneMonth = DateAdd("m", -1, dDate)
End Function

Function AddOneMonth(dDate)
    AddOneMonth = DateAdd("m", 1, dDate)
End Function

Dim dDate     ' Date we're displaying calendar for
Dim iDIM      ' Days In Month
Dim iDOW      ' Day Of Week that month starts on
Dim iCurrent  ' Variable we use to hold current day of month as we write table
Dim iPosition ' Variable we use to hold current position in table
Dim arrWeek(6)

arrWeek(0) = "일"
arrWeek(1) = "월"
arrWeek(2) = "화"
arrWeek(3) = "수"
arrWeek(4) = "목"
arrWeek(5) = "금"
arrWeek(6) = "토"

dDate = CDate(sYear & "-" & sMonth & "-" & sDay)

'now we've got the date.  now get Days in the choosen month and the day of the week it starts on.
iDIM = GetDaysInMonth(Month(dDate), Year(dDate))
iDOW = GetWeekdayMonthStartsOn(dDate)
%>

<table>
    <colgroup>
		<col width="30%">
		<col width="20%">
		<col width="20%">
		<col width="30%">
	</colgroup>
    <tbody>
<%
If iDOW <> 1 Then
    iPosition = 1
    Do While iPosition < iDOW
        iPosition = iPosition + 1
    Loop
End If
iCurrent = 1
iPosition = iDOW
iMealSchIdx = 0
iCntReservation = 0
Do While iCurrent <= iDIM
    bIsPrevDay = false
    bIsPrevFixDay = false
    sClass_Sun = ""
    sClass_Today = ""
    sClass_prev = ""
    sSpan_Text = ""
    sDivTool_text = ""

    sMemo = ""
    sProp_Chk_Lun = ""
    sProp_Chk_Din = ""

    IF Year(now) > Year(dDate) THEN
        bIsPrevDay = true
    ELSEIF Year(now) = Year(dDate) THEN
        IF Month(now) > Month(dDate) THEN
            bIsPrevDay = true
        ELSEIF Month(now) = Month(dDate) THEN
            IF Day(now) > iCurrent THEN
                bIsPrevDay = true
            ELSEIF Day(now) = iCurrent THEN
                sClass_Today = "today"
            END IF
        END IF
    END IF

    IF sIsTec = "Y" THEN
        'RMS 바로가기로 로그인 한 경우 영업일 +3 부터 예약가능 조건 무시
        bIsPrevFixDay = false
    ELSE
        IF Year(sFixDay) > Year(dDate) THEN
            bIsPrevFixDay = true
        ELSEIF Year(sFixDay) = Year(dDate) THEN
            IF Month(sFixDay) > Month(dDate) THEN
                bIsPrevFixDay = true
            ELSEIF Month(sFixDay) = Month(dDate) THEN
                IF Day(sFixDay) >= iCurrent THEN
                    bIsPrevFixDay = true
                END IF
            END IF
        END IF
    END IF

    if isArray(arrMealSchList) and iMealSchIdx < iCntMealSch then
        if bIsPrevDay = true then
            sProp_Chk_Lun = "disabled"
            sProp_Chk_Din = "disabled"
            sClass_prev = "disabled"
        elseif bIsPrevDay = false and bIsPrevFixDay = true then
            sProp_Chk_Lun = "disabled"
            sProp_Chk_Din = "disabled"
            sClass_prev = "disabled no-update"
            sMemo = "영업일 3일기준 변경불가"
        end if

        if iCurrent = day(arrMealSchList(0,iMealSchIdx)) then
            if arrMealSchList(3, iMealSchIdx) = "Y" then ' 휴무일 체크
                sMemo = "휴무"
                sProp_Chk_Lun = "disabled"
                sProp_Chk_Din = "disabled"
                if arrMealSchList(4, iMealSchIdx) <> "" then sMemo = sMemo & "(" & arrMealSchList(4, iMealSchIdx) & ")"
            else
                if arrMealSchList(1, iMealSchIdx) = "Y" then ' 중식 체크
                    if arrMealSchList(5, iMealSchIdx) <> "" then ' 중식 예약 체크
                        
                    end if
                else
                    sProp_Chk_Lun = "disabled"
                end if

                if arrMealSchList(2, iMealSchIdx) = "Y" then ' 석식체크 체크
                    if arrMealSchList(6, iMealSchIdx) <> "" then ' 석식 예약 체크
                        
                    end if
                else
                    sProp_Chk_Din = "disabled"
                end if

            end if
            iMealSchIdx = iMealSchIdx + 1
        else
            sProp_Chk_Lun = "disabled"
            sProp_Chk_Din = "disabled"
            sClass_prev = "disabled"
        end if
    else
        sProp_Chk_Lun = "disabled"
        sProp_Chk_Din = "disabled"
        sClass_prev = "disabled"
    end if

    If iPosition = 1 Then
        sClass_Sun = "sunday"
    End If

    Response.Write vbTab & "<TR id=""LIST_" & sYear & "-" & sMonth & "-" & right("00" & iCurrent, 2) & """ class=""" & sClass_prev & """>" & vbCrLf
    Response.Write vbTab & vbTab & "<TD class=""" & sClass_Sun & sClass_Today & """><span>" & VARS("V_MONTH") & "월 " & iCurrent & "일(" & arrWeek(iPosition-1) & ")</span></TD>" & vbCrLf
    Response.Write vbTab & vbTab & "<TD><span class=""imgCheck""><input type=""checkbox"" title=""선택"" name=""V_LIST_LUN"" value=""Y"" " & sProp_Chk_Lun & " ></span></TD>" & vbCrLf
    Response.Write vbTab & vbTab & "<TD><span class=""imgCheck""><input type=""checkbox"" title=""선택"" name=""V_LIST_DIN"" value=""Y"" " & sProp_Chk_Din & " ></span></TD>" & vbCrLf
    Response.Write vbTab & vbTab & "<TD>" & sMemo & "</TD>" & vbCrLf
    Response.Write vbTab & vbTab & "<input type=""hidden"" name=""V_LIST_DATE"" value=""" & right("00" & iCurrent, 2) & """>" & vbCrLf
    Response.Write vbTab & "</TR>" & vbCrLf

    If iPosition = 7 Then
        iPosition = 0
    End If

    iCurrent = iCurrent + 1
    iPosition = iPosition + 1

Loop
%>
    </tbody>
</table>