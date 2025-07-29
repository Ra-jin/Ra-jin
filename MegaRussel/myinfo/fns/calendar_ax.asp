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

dDate = CDate(sYear & "-" & sMonth & "-" & sDay)


'now we've got the date.  now get Days in the choosen month and the day of the week it starts on.
iDIM = GetDaysInMonth(Month(dDate), Year(dDate))
iDOW = GetWeekdayMonthStartsOn(dDate)
%>

<table>
    <colgroup>
        <col width="*">
        <col width="14.28%">
        <col width="14.28%">
        <col width="14.28%">
        <col width="14.28%">
        <col width="14.28%">
        <col width="14.28%">
    </colgroup>
    <thead>
        <tr>
            <th class="sunday">일</th>
            <th>월</th>
            <th>화</th>
            <th>수</th>
            <th>목</th>
            <th>금</th>
            <th>토</th>
        </tr>
    </thead>
    <tbody>
<%
If iDOW <> 1 Then
    Response.Write vbTab & "<TR>" & vbCrLf
    iPosition = 1
    Do While iPosition < iDOW
        Response.Write vbTab & vbTab & "<TD></TD>" & vbCrLf
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
    sIcon_Color = "gray"
    sDivTool_text = ""

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
            sIcon_Color = "gray"
            sClass_prev = "day-prev"
        elseif bIsPrevDay = false and bIsPrevFixDay = true then
            sIcon_Color = "red"
            sClass_prev = "day-prev no-update"
        else
            sIcon_Color = "blue"
        end if

        if iCurrent = day(arrMealSchList(0,iMealSchIdx)) then


            if arrMealSchList(3, iMealSchIdx) = "Y" then ' 휴무일 체크
                sSpan_Text = sSpan_Text & "<span class='holiday'>휴무</span>"
                if arrMealSchList(4, iMealSchIdx) <> "" then sSpan_Text = sSpan_Text & "<br/><span>(" & arrMealSchList(4, iMealSchIdx) & ")</span>"
            else
                if arrMealSchList(1, iMealSchIdx) = "Y" then ' 중식 체크
                    sSpan_Text = sSpan_Text & "<span>중식"
                    if arrMealSchList(5, iMealSchIdx) <> "" then ' 중식 예약 체크
                        sSpan_Text = sSpan_Text & "<img src=""" & Application("img_path_russel") & "/mypage/fns/icon_" & sIcon_Color & "_circle.png"" />"

                        sDivTool_text = sDivTool_text & "<span>중식(" & arrMealSchList(5, iMealSchIdx) & ")</span>"
                        if sIcon_Color <> "gray" then iCntReservation = iCntReservation + 1 ' 소진완료 되지 않은 식권은 예약카운트에 포함
                    end if
                    sSpan_Text = sSpan_Text & "</span>"
                end if

                if arrMealSchList(2, iMealSchIdx) = "Y" then ' 석식체크 체크
                    if sSpan_Text <> "" then sSpan_Text = sSpan_Text & "<br/>"
                    sSpan_Text = sSpan_Text & "<span>석식"
                    if arrMealSchList(6, iMealSchIdx) <> "" then ' 석식 예약 체크
                        sSpan_Text = sSpan_Text & "<img src=""" & Application("img_path_russel") & "/mypage/fns/icon_" & sIcon_Color & "_circle.png"" />"

                        if sDivTool_text <> "" then sDivTool_text = sDivTool_text & "<br/>"
                        sDivTool_text = sDivTool_text & "<span>석식(" & arrMealSchList(6, iMealSchIdx) & ")</span>"
                        if sIcon_Color <> "gray" then iCntReservation = iCntReservation + 1 ' 소진완료 되지 않은 식권은 예약카운트에 포함
                    end if
                    sSpan_Text = sSpan_Text & "</span>"
                end if

            end if
            iMealSchIdx = iMealSchIdx + 1
        end if
    end if

    If iPosition = 1 Then
        sClass_Sun = "sunday"
        Response.Write vbTab & "<TR>" & vbCrLf
    End If

    Response.Write vbTab & vbTab & "<TD id=""" & sYear & "-" & sMonth & "-" & right("00" & iCurrent, 2) & """ class=""" & sClass_Sun & " " & sClass_prev & """>" & vbCrLf
    Response.Write vbTab & vbTab & vbTab & "<DIV class=""" & sClass_Today & """>" & vbCrLf
    Response.Write vbTab & vbTab & vbTab & vbTab & "<P>" & iCurrent & "</P>" &vbCrLf
    Response.Write vbTab & vbTab & vbTab & vbTab & sSpan_Text &vbCrLf
    Response.Write vbTab & vbTab & vbTab & "</DIV>" & vbCrLf

    if sDivTool_text <> "" then
    Response.Write vbTab & vbTab & vbTab & "<div class=""tool"">" & vbCrLf
    Response.Write vbTab & vbTab & vbTab & vbTab & "<P>" & iCurrent & "</P>" &vbCrLf
    Response.Write vbTab & vbTab & vbTab & vbTab & "<p class=""close""><img src=""" & Application("img_path_russel") & "/mypage/fns/cal_tool_close.png"" /></p>" &vbCrLf
    Response.Write vbTab & vbTab & vbTab & vbTab & sDivTool_text &vbCrLf
    Response.Write vbTab & vbTab & vbTab & "</DIV>" & vbCrLf
    end if

    Response.Write vbTab & vbTab & "</TD>" & vbCrLf

    If iPosition = 7 Then
        Response.Write vbTab & "</TR>" & vbCrLf
        iPosition = 0
    End If

    iCurrent = iCurrent + 1
    iPosition = iPosition + 1

Loop

If iPosition <> 1 Then
    Do While iPosition <= 7
        Response.Write vbTab & vbTab & "<TD>&nbsp;</TD>" & vbCrLf
        iPosition = iPosition + 1
    Loop
    Response.Write vbTab & "</TR>" & vbCrLf
End If
%>
    </tbody>
</table>
<input type="hidden" id="V_CNT_RESERVATION" name="V_CNT_RESERVATION" value="<%=iCntReservation%>" />

<%
strSQL = ""
strSQL = strSQL & " SELECT		COUNT(CASE WHEN A.sKind_l = 'Y' THEN 1 END) AS CNT_AVAILABLE_LUN "
strSQL = strSQL & " 			, COUNT(CASE WHEN A.sKind_s = 'Y' THEN 1 END) AS CNT_AVAILABLE_DIN "
strSQL = strSQL & " FROM		( "
strSQL = strSQL & " 			SELECT		RANK() OVER (ORDER BY sDate) AS RANKING, B.sDate, B.sKind_l, B.sKind_s "
strSQL = strSQL & " 			FROM		MegaRussel..MG_AMS_CODE		A (NOLOCK) "
strSQL = strSQL & " 			INNER JOIN	MegaRussel..MG_MEAL			B (NOLOCK) ON A.CAMPUS_CODE = B.sCode "
strSQL = strSQL & " 			WHERE		1=1 "
strSQL = strSQL & "             AND			A.AMS_CODE_ACA = '" & sAcaCd & "' "
strSQL = strSQL & " 			AND			B.sDate >= CONVERT(VARCHAR(10), GETDATE(), 23) "
strSQL = strSQL & "             AND			YEAR(B.sDate) = '" & sYear & "' "
strSQL = strSQL & "             AND			MONTH(B.sDate) = '" & VARS("V_MONTH") & "' "
strSQL = strSQL & " 			AND			B.sDate_hflag = 'N' "
strSQL = strSQL & " 			) A "
strSQL = strSQL & " WHERE		1=1 "
strSQL = strSQL & " AND			RANKING > (CASE WHEN CONVERT(CHAR(6), GETDATE(), 112) < '" & sYear & sMonth & "' THEN 0 ELSE 3 END) "
set RS = amsobjdb.sqlQuery(strSql,2)

iCntAvailableLun = 0
iCntAvailableDin = 0
If not (RS.eof or RS.bof) then
    iCntAvailableLun = RS("CNT_AVAILABLE_LUN")
    iCntAvailableDin = RS("CNT_AVAILABLE_DIN")
Else
    
End If
RS.close
set RS = nothing
%>

<input type="hidden" id="V_CNT_AVAILABLE_LUN" name="V_CNT_AVAILABLE_LUN" value="<%=iCntAvailableLun%>" />
<input type="hidden" id="V_CNT_AVAILABLE_DIN" name="V_CNT_AVAILABLE_DIN" value="<%=iCntAvailableDin%>" />