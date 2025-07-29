<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<%
Response.CharSet="euc-kr"
Session.codepage="949"
Response.codepage="949"
Response.ContentType="text/html;charset=euc-kr"
formFilter() ' SQL 인젝션 문자열 필터링
nAmsMemCd = ""
cIsParents = "N"
lec_count = 0
arrLecCou = Null
nLecCouTot = 0

    Ams_Mcode = objDB.sqlResult("select Rms_Mem_Cd from Mg_Member with(nolock) where Code = '" & gLoginMemCode &"' and uKind='1' and uDel_fg='N' ")
    nAmsMemCd = Ams_Mcode
    nAmsMemCd = CheckNumber_reset(nAmsMemCd, 0)

    'nAmsMemCd = "412836" '테스트

    TodayNow =  FormatDateTime(Now(), 2) &" "& FormatDateTime(Now(), 4) & Right(Now(), 3)
    Lec_idx = VARS("idx")

If VAlueCheck(Lec_idx) Then

	server.ScriptTimeout = 10 ' 10초 제한

    strSql = " SELECT 'Y' "
    strSql = strSql & "FROM MG_RESERVATION_MAS RM WITH(NOLOCK)  "
    strSql = strSql & "INNER JOIN MG_RESERVATION_LEC RL WITH(NOLOCK) ON RM.IDX = RL.MIDX   "
    strSql = strSql & "WHERE RL.IDX = '"& Lec_idx &"' "
    'strSql = strSql & "AND DATEDIFF ( mi , start_dt, getdate()) >= 0 "
    'strSql = strSql & "AND DATEDIFF ( mi , end_dt , getdate()) <= 0 "
    strSql = strSql & "AND DATEDIFF ( mi , start_dt, '"& TodayNow &"') >= 0  "
    strSql = strSql & "AND DATEDIFF ( mi , end_dt , '"& TodayNow &"') <= 0  "

    ' rYN = russelobjdb.sqlResult(strSql)

	Set Rs1 = russelobjdb.sqlQuery(strSql, 1)
	IF NOT Rs1 IS NOTHING THEN
		IF Rs1.State <>0 THEN
			IF NOT (Rs1.eof Or Rs1.bof) THEN
				rYN = Rs1(0)
			END IF
		END IF
	END IF
	Rs1.close
	Set Rs1 = Nothing

    If rYN <> "Y" Then
		js_close("예약 기간이 아닙니다.")
		Response.end
    End if

    'strSql = ""
	'strSql = strSql & "SELECT RL.IDX,RL.Lec_Sym,RL.Lec_Name, "
	'strSql = strSql & "RA.CCODE,RA.LEC_INFO, RA.TEC_NAME,RA.LEC_NAME AS CLASS_NAME,RA.START_DT,RA.END_DT,RA.LEC_DT, "
	'strSql = strSql & "ISNULL(RI.IDX,'0') AS lIDX,RI.ROW_NUM,RI.COL_NUM,RA.IDX AS MIDX "
	'strSql = strSql & "FROM MG_RESERVATION_LEC RL WITH(NOLOCK) "
	'strSql = strSql & "INNER JOIN MG_RESERVATION_MEM RM WITH(NOLOCK) ON RL.LEC_CODE = RM.LEC_CODE "
	'strSql = strSql & "LEFT OUTER JOIN MG_RESERVATION_MAS RA WITH(NOLOCK) ON RL.MIDX = RA.IDX "
	'strSql = strSql & "LEFT OUTER JOIN MG_RESERVATION_LIST RI WITH(NOLOCK) ON RL.MIDX = RI.MIDX AND RI.MEM_CODE = RM.MEM_CODE "
	'strSql = strSql & "WHERE RM.MEM_CODE = '"& nAmsMemCd &"' "
	'strSql = strSql & "AND RL.IDX = '"& Lec_idx &"' "
	' WAITFOR DELAY '00:00:11';
	strSql = "EXEC SP_SET_MG_RESERVATION_LIST "& nAmsMemCd &","& Lec_idx &" "


	Set Rs = russelobjdb.sqlQuery(strSql,1)

	If Not (Rs.eof Or Rs.bof) Then

		dbLec_IDX = Rs("IDX")
		dbLec_Sym = Rs("Lec_Sym")
		dbLec_Name = Rs("Lec_Name")
		dbCCODE = Rs("CCODE")
		dbLEC_INFO = Rs("LEC_INFO")
		dbTEC_NAME = Rs("TEC_NAME")
		dbCLASS_NAME = Rs("CLASS_NAME")
		dbSTART_DT = Rs("START_DT")
		dbEND_DT = Rs("END_DT")
		dbLEC_DT = Rs("LEC_DT")
		dbIDX= Rs("lIDX")
		dbROW_NUM= Rs("ROW_NUM")
		dbCOL_NUM= Rs("COL_NUM")
		dbMIDX= Rs("MIDX")


        weekDate = weekDay(dbLEC_DT)
        select case weekDate
        case "1" weekDate = "일"
        case "2" weekDate = "월"
        case "3" weekDate = "화"
        case "4" weekDate = "수"
        case "5" weekDate = "목"
        case "6" weekDate = "금"
        case "7" weekDate = "토"
        end select

        If Len(Minute(dbLEC_DT)) < 2 Then
            Ldt_Min = "0" & Minute(dbLEC_DT)
        Else
            Ldt_Min = Minute(dbLEC_DT)
        End if

        If Len(Minute(dbSTART_DT)) < 2 Then
            Sdt_Min = "0" & Minute(dbSTART_DT)
        Else
            Sdt_Min = Minute(dbSTART_DT)
        End if

        If Len(Minute(dbEND_DT)) < 2 Then
            Edt_Min = "0" & Minute(dbEND_DT)
        Else
            Edt_Min = Minute(dbEND_DT)
        End if

        Ldt = Left(dbLEC_DT,10) & " ("& weekDate & ")"& "<br/>" & Hour(dbLEC_DT) & ":" & Ldt_Min
        Sdt = Left(dbSTART_DT,10) &" "& Hour(dbSTART_DT) & ":" & Sdt_Min
        Edt = Left(dbEND_DT,10) &" "& Hour(dbEND_DT) & ":" & Edt_Min
		CAM_NAME = 	AmsDName(dbCCODE)

	Else
		js_close("해당내용이 없습니다.")
		Response.end
	End If

	Rs.close
	Set Rs = Nothing

Else
	js_close("해당내용이 없습니다.")
	Response.end
End if

%>
			<div class="tb-type1">
				<table border="0" cellspacing="0" cellpadding="0">
					<colgroup>
						<col width="12%">
						<col width="">
						<col width="12%">
						<col width="10%">
						<col width="17%">
						<col width="23%">
					</colgroup>
					<thead>
						<tr>
							<th>학원명</th>
							<th>강좌명</th>
							<th>수강기호</th>
							<th>강의실</th>
							<th>수업일시</th>
							<th>예약기간</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><%=CAM_NAME%></td>
							<td class="txt_left pl10"><%=dbLec_Name%></td>
							<td><%=dbLec_Sym%></td>
							<td><%=dbCLASS_NAME%></td>
							<td><%=Ldt%></td>
							<td><%=Sdt%><br><span class="orange">~ <%=Edt%></span></td>
						</tr>
						<!--
						<tr>
							<td height="25" align="center" colspan="6">예약 가능한 강좌가 없습니다.</td>
						</tr>
						-->
					</tbody>
				</table>
			</div>


