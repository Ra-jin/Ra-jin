<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/Public/class.Page.asp" -->

<%
    Response.CharSet="euc-kr"
    Session.codepage="949"
    Response.codepage="949"
    Response.ContentType="text/html;charset=euc-kr"

    mode = VARS("mode")

    '마스터 번호
    If IsDevSvr() Then
		masterIdx = 6
	Else
		masterIdx = 2
	End If

    If Not gLoginOk Then
        response.write "LOGIN"
        response.end
    End If

    bReserv = False
    reservCnt = 0

    strSQL = ""
    strSQL = strSQL & " SELECT COUNT(1) "
    strSQL = strSQL & " FROM   dbo.MR_CONSULTING_RESERV WITH (NOLOCK) "
    strSQL = strSQL & "        JOIN dbo.MG_Member_RmsCd WITH (NOLOCK) ON MG_Member_RmsCd.CODE = CR_AMS_CODE "
    strSQL = strSQL & "        JOIN dbo.MR_CONSULTING_DTL WITH (NOLOCK) ON CD_IDX = CR_CD_IDX "
    strSQL = strSQL & "                                                    AND CD_CM_IDX = "& masterIdx &" "
    strSQL = strSQL & "        JOIN MegaRMS.dbo.AMS_GRP_HIS WITH (NOLOCK) ON GH_COLE_CD = CD_COLE_CD "
    strSQL = strSQL & "                                                      AND GH_MEM_CD = Rms_Mem_Cd "
    strSQL = strSQL & "                                                      AND GH_BE_CD = 11 "
    strSQL = strSQL & "                                                      AND GH_REFUND_CD IS NULL "
    strSQL = strSQL & " WHERE  CR_MEM_ID = '"& gLoginMemId &"' "

    reservCnt = russelobjDB.sqlResult(strSQL)

    If reservCnt > 0 Then bReserv = True
    
    If mode = "1" Then
        strSQL = ""
        strSQL = strSQL & " WITH DTL AS ( "
        strSQL = strSQL & "     SELECT   CD_ACA_CD AS DTL_ACA_CD, "
        strSQL = strSQL & "              COUNT(CD_IDX) AS TOTAL_CNT "
        strSQL = strSQL & "     FROM     dbo.MR_CONSULTING_DTL WITH (NOLOCK) "
        strSQL = strSQL & "     WHERE    CD_USE_FLG = 'Y' "
        strSQL = strSQL & "              AND CD_CM_IDX = "& masterIdx &" "
        strSQL = strSQL & "     GROUP BY CD_ACA_CD "
        strSQL = strSQL & " ), "
        strSQL = strSQL & " RESERV AS ( "
        strSQL = strSQL & "     SELECT   CD_ACA_CD AS RESERV_ACA_CD, "
        strSQL = strSQL & "              COUNT(DISTINCT CD_IDX) AS RESERV_CNT,  "
        strSQL = strSQL & "              COUNT(CASE WHEN CR_MEM_ID = '"& gLoginMemId &"' AND GH_MEM_CD = '"& gAmsSingleMemCd &"' THEN 1 END) AS MY_CNT  "
        strSQL = strSQL & "     FROM     dbo.MR_CONSULTING_DTL WITH (NOLOCK) "
        strSQL = strSQL & "              JOIN dbo.MR_CONSULTING_RESERV WITH (NOLOCK) ON CR_CD_IDX = CD_IDX "
        strSQL = strSQL & "              JOIN dbo.MG_Member_RmsCd WITH (NOLOCK) ON CODE = CR_AMS_CODE "
        strSQL = strSQL & "              JOIN MegaRMS.dbo.AMS_GRP_HIS WITH (NOLOCK) ON GH_COLE_CD = CD_COLE_CD "
        strSQL = strSQL & "                                                            AND GH_MEM_CD = Rms_Mem_Cd "
        strSQL = strSQL & "                                                            AND GH_REFUND_CD IS NULL "
        strSQL = strSQL & "     WHERE    CD_USE_FLG = 'Y' "
        strSQL = strSQL & "              AND CD_CM_IDX = "& masterIdx &" "
        strSQL = strSQL & "     GROUP BY CD_ACA_CD "
        strSQL = strSQL & " ), "
        strSQL = strSQL & " WAITING AS ( "
        strSQL = strSQL & "     SELECT LEFT(value, 6) AS WAITING_ACA_CD, "
	    strSQL = strSQL & "            RIGHT(value, 1) AS WAITING_FLG "
        strSQL = strSQL & "     FROM   dbo.fn_Split((SELECT CM_WAITING_FLG "
		strSQL = strSQL & " 	                     FROM	dbo.MR_CONSULTING_MAS WITH (NOLOCK) "
        strSQL = strSQL & "                          WHERE CM_IDX = "& masterIdx &"), ',') "
        strSQL = strSQL & " ) "
        strSQL = strSQL & " SELECT DTL_ACA_CD, "
        strSQL = strSQL & "        name, "
        strSQL = strSQL & "        TOTAL_CNT, "
        strSQL = strSQL & "        ISNULL(RESERV_CNT, 0), "
        strSQL = strSQL & "        ISNULL(MY_CNT, 0), "
        strSQL = strSQL & "        WAITING_FLG "
        strSQL = strSQL & " FROM   DTL WITH (NOLOCK) "
        strSQL = strSQL & "        JOIN WAITING WITH (NOLOCK) ON WAITING_ACA_CD = DTL_ACA_CD "
        strSQL = strSQL & "        LEFT JOIN RESERV WITH (NOLOCK) ON RESERV_ACA_CD = DTL_ACA_CD "
        strSQL = strSQL & "        JOIN dbo.MG_Code_Sub WITH (NOLOCK) ON code = DTL_ACA_CD "
        strSQL = strSQL & "                                              AND kind = 'campus' "
        strSQL = strSQL & " ORDER BY seq "

        Set rsCampus = russelobjDB.sqlQuery(strSQL, 3)
        If Not rsCampus.EOF Then
            arrCampus = rsCampus.GetRows()
        End If

        rsCampus.Close
        Set rsCampus = Nothing

        waitingFlg = "N"

        If IsArray(arrCampus) And Not IsNull(arrCampus) Then
            For i = 0 To UBound(arrCampus, 2)
                CampusCode          = arrCampus(0, i)
                CampusName          = arrCampus(1, i)
                CampusDtlCnt        = arrCampus(2, i)
                CampusReservCnt     = arrCampus(3, i)
                CampusMyCnt         = arrCampus(4, i)
                CampusWaitingFlg    = Trim(arrCampus(5, i))

                campusClass = ""

                If bReserv Then
                    If CampusMyCnt > 0 Then
                        campusClass = "r-complete"
                    Else
                        campusClass = ""
                    End If
                Else
                    If CampusDtlCnt <= CampusReservCnt Or CampusWaitingFlg = "Y" Then
                        campusClass = "r-disabled"
                    Else
                        campusClass = "r-able"
                    End If
                End If
%>
                <a href="javascript:;" class="<%=campusClass%>" data-cd="<%=CampusCode%>" data-class="<%=campusClass%>" data-waiting="<%=CampusWaitingFlg%>" <%If Not bReserv And CampusDtlCnt > CampusReservCnt Then%> onclick="fnGetConsultant(this);"<%End If%>>
                    <%=CampusName%>
                </a>
<%
            Next
        End If
    ElseIf mode = "2" Then
        campusCode = VARS("campusCode")

        strSQL = ""
        strSQL = strSQL & " WITH RESERV AS ( "
        strSQL = strSQL & "     SELECT CR_CD_IDX, "
        strSQL = strSQL & "            CR_MEM_ID, "
        strSQL = strSQL & "            GH_MEM_CD, "
        strSQL = strSQL & "            GH_COLE_CD "
        strSQL = strSQL & "     FROM   dbo.MR_CONSULTING_RESERV WITH (NOLOCK) "
        strSQL = strSQL & "            JOIN dbo.MG_Member_RmsCd WITH (NOLOCK) ON CODE = CR_AMS_CODE "
        strSQL = strSQL & "            JOIN MegaRMS.dbo.AMS_GRP_HIS WITH (NOLOCK) ON GH_MEM_CD = Rms_Mem_Cd "
        strSQL = strSQL & "                                                          AND GH_BE_CD = 11 "
        strSQL = strSQL & "                                                          AND GH_REFUND_CD IS NULL "
        strSQL = strSQL & "            JOIN dbo.MR_CONSULTING_DTL WITH (NOLOCK) ON CD_COLE_CD = GH_COLE_CD "
        strSQL = strSQL & "                                                        AND CD_CM_IDX = "& masterIdx &" "
        strSQL = strSQL & "                                                        AND CD_USE_FLG = 'Y' "
        strSQL = strSQL & " ) "
        strSQL = strSQL & " SELECT   CC_IDX, "
        strSQL = strSQL & "          CC_NAME, "
        strSQL = strSQL & "          COUNT(1), "
        strSQL = strSQL & "          COUNT(CASE WHEN CR_MEM_ID IS NOT NULL AND GH_MEM_CD IS NOT NULL THEN 1 END) "
        strSQL = strSQL & "             + COUNT(CASE WHEN CD_USE_FLG = 'N' THEN 1 END), "
        strSQL = strSQL & "          COUNT(CASE WHEN ISNULL(CR_MEM_ID, '') = '"& gLoginMemId &"' AND GH_MEM_CD = '"& gAmsSingleMemCd &"' THEN 1 END) "
        strSQL = strSQL & " FROM     dbo.MR_CONSULTING_CONSULTANT WITH (NOLOCK) "
        strSQL = strSQL & "          JOIN dbo.MR_CONSULTING_DTL WITH (NOLOCK) ON CD_CC_IDX = CC_IDX "
        strSQL = strSQL & "                                                      AND CD_CM_IDX = CC_CM_IDX "
        strSQL = strSQL & "                                                      AND CD_ACA_CD = '"& campusCode &"' "
        strSQL = strSQL & "          LEFT JOIN RESERV WITH (NOLOCK) ON CR_CD_IDX = CD_IDX "
        strSQL = strSQL & "                                            AND GH_COLE_CD = CD_COLE_CD "
        strSQL = strSQL & " WHERE    CC_CM_IDX = "& masterIdx &" "
        strSQL = strSQL & " GROUP BY CC_IDX, "
        strSQL = strSQL & "          CC_NAME "
        strSQL = strSQL & " ORDER BY CC_IDX "

        Set rsConsultant = russelobjDB.sqlQuery(strSQL, 3)
        
        If Not rsConsultant.EOF Then
            arrConsultant = rsConsultant.GetRows()
        End If
        
        rsConsultant.Close
        Set rsConsultant = Nothing

        If IsArray(arrConsultant) And Not IsNull(arrConsultant) Then
            For i = 0 To UBound(arrConsultant, 2)
                ConsultantIdx       = arrConsultant(0, i)
                ConsultantName      = arrConsultant(1, i)
                ConsultantDtlCnt    = arrConsultant(2, i)
                ConsultantReservCnt = arrConsultant(3, i)
                ConsultantMyCnt     = arrConsultant(4, i)
                
                consultantClass = ""

                If bReserv Then
                    If ConsultantMyCnt > 0 Then
                        consultantClass = "r-complete"
                    Else
                        consultantClass = ""
                    End If
                Else
                    If ConsultantDtlCnt <= ConsultantReservCnt Then
                        consultantClass = "r-disabled"
                    Else
                        consultantClass = "r-able"
                    End If
                End If
%>
                <a href="javascript:;" class="<%=consultantClass%>" data-cd="<%=ConsultantIdx%>" data-class="<%=consultantClass%>" <%If Not bReserv And ConsultantDtlCnt > ConsultantReservCnt Then%> onclick="fnGetCalendar(this);"<%End If%>>
                    <%=ConsultantName%>
                </a>
<%
            Next
        End If
    ElseIf mode = "3" Then
        campusCode = VARS("campusCode")
        consultantIdx = VARS("ccIdx")

        strSQL = ""
        strSQL = strSQL & " WITH RESERV AS ( "
        strSQL = strSQL & "     SELECT CR_CD_IDX, "
        strSQL = strSQL & "            CR_MEM_ID, "
        strSQL = strSQL & "            GH_MEM_CD, "
        strSQL = strSQL & "            GH_COLE_CD "
        strSQL = strSQL & "     FROM   dbo.MR_CONSULTING_RESERV WITH (NOLOCK) "
        strSQL = strSQL & "            JOIN dbo.MG_Member_RmsCd WITH (NOLOCK) ON CODE = CR_AMS_CODE "
        strSQL = strSQL & "            JOIN MegaRMS.dbo.AMS_GRP_HIS WITH (NOLOCK) ON GH_MEM_CD = Rms_Mem_Cd "
        strSQL = strSQL & "                                                          AND GH_BE_CD = 11 "
        strSQL = strSQL & "                                                          AND GH_REFUND_CD IS NULL "
        strSQL = strSQL & "            JOIN dbo.MR_CONSULTING_DTL WITH (NOLOCK) ON CD_COLE_CD = GH_COLE_CD "
        strSQL = strSQL & "                                                        AND CD_CM_IDX = "& masterIdx &" "
        strSQL = strSQL & " ) "
        strSQL = strSQL & " SELECT   FORMAT(CD_DATE, 'yyyy-MM-dd'), "
        strSQL = strSQL & "          COUNT(1) AS DTL_CNT, "
        strSQL = strSQL & "          COUNT(CASE WHEN CR_MEM_ID IS NOT NULL AND GH_MEM_CD IS NOT NULL THEN 1 END) "
        strSQL = strSQL & "             + COUNT(CASE WHEN CD_USE_FLG = 'N' THEN 1 END), "
        strSQL = strSQL & "          COUNT(CASE WHEN ISNULL(CR_MEM_ID, '') = '"& gLoginMemId &"' AND GH_MEM_CD = '"& gAmsSingleMemCd &"' THEN 1 END) "
        strSQL = strSQL & " FROM     dbo.MR_CONSULTING_DTL WITH (NOLOCK) "
        strSQL = strSQL & "          LEFT JOIN RESERV WITH (NOLOCK) ON CR_CD_IDX = CD_IDX "
        strSQL = strSQL & "                                            AND GH_COLE_CD = CD_COLE_CD "
        strSQL = strSQL & " WHERE    CD_CM_IDX = "& masterIdx &" "
        strSQL = strSQL & "          AND CD_ACA_CD = '"& campusCode &"' "
        strSQL = strSQL & "          AND CD_CC_IDX = "& consultantIdx &" "
        strSQL = strSQL & " GROUP BY FORMAT(CD_DATE, 'yyyy-MM-dd') "

        Set rsData = russelobjDB.sqlQuery(strSQL, 3)
        
        If Not rsData.EOF Then
            arrData = rsData.GetRows()
        End If
        
        rsData.Close
        Set rsData = Nothing

        Response.Write "["
        If IsArray(arrData) And Not IsNull(arrData) Then
            For i = 0 To UBound(arrData, 2)
                DataDate        = arrData(0, i)
                DataDtlCnt      = arrData(1, i)
                DataReservCnt   = arrData(2, i)
                DataMyCnt       = arrData(3, i)

                Response.Write "{"
                Response.Write """DataDate"":""" & DataDate & ""","
                Response.Write """DataDtlCnt"":""" & DataDtlCnt & ""","
                Response.Write """DataReservCnt"":""" & DataReservCnt & ""","
                Response.Write """DataMyCnt"":""" & DataMyCnt & """"
                Response.Write "}"

                If i < UBound(arrData, 2) Then
                    Response.Write ","
                End IF
            Next
        End If
        Response.Write "]"
    ElseIf mode = "4" Then
        campusCode = VARS("campusCode")
        consultantIdx = VARS("ccIdx")
        reservDate = Trim(VARS("reservDate"))

        strSQL = ""
        strSQL = strSQL & " WITH RESERV AS ( "
        strSQL = strSQL & "     SELECT CR_IDX, "
        strSQL = strSQL & "            CR_CD_IDX, "
        strSQL = strSQL & "            CR_MEM_ID, "
        strSQL = strSQL & "            GH_MEM_CD, "
        strSQL = strSQL & "            GH_COLE_CD "
        strSQL = strSQL & "     FROM   dbo.MR_CONSULTING_RESERV WITH (NOLOCK) "
        strSQL = strSQL & "            JOIN dbo.MG_Member_RmsCd WITH (NOLOCK) ON CODE = CR_AMS_CODE "
        strSQL = strSQL & "            JOIN MegaRMS.dbo.AMS_GRP_HIS WITH (NOLOCK) ON GH_MEM_CD = Rms_Mem_Cd "
        strSQL = strSQL & "                                                          AND GH_BE_CD = 11 "
        strSQL = strSQL & "                                                          AND GH_REFUND_CD IS NULL "
        strSQL = strSQL & "            JOIN dbo.MR_CONSULTING_DTL WITH (NOLOCK) ON CD_COLE_CD = GH_COLE_CD "
        strSQL = strSQL & "                                                        AND CD_CM_IDX = "& masterIdx &" "
        strSQL = strSQL & " ) "
        strSQL = strSQL & " SELECT   DISTINCT "
        strSQL = strSQL & "          CD_IDX, "
        strSQL = strSQL & "          (CASE WHEN ISNULL(CR_IDX, 0) > 0 AND ISNULL(GH_MEM_CD, 0) > 0 THEN 1 ELSE 0 END) "
        strSQL = strSQL & "             + (CASE WHEN CD_USE_FLG = 'N' THEN 1 ELSE 0 END) AS CR_IDX, "
        strSQL = strSQL & " 		 CASE WHEN ISNULL(CR_MEM_ID, '') = '"& gLoginMemId &"' AND GH_MEM_CD = '"& gAmsSingleMemCd &"' THEN 1 ELSE 0 END AS CR_MY_FLG, "
        strSQL = strSQL & "          FORMAT(CD_DATE, 'HH:mm') AS CD_TIME, "
        strSQL = strSQL & "          CD_COLE_CD, "
        strSQL = strSQL & "          CD_CC_IDX "
        strSQL = strSQL & " FROM     dbo.MR_CONSULTING_DTL WITH (NOLOCK) "
        strSQL = strSQL & "          LEFT JOIN RESERV WITH (NOLOCK) ON CR_CD_IDX = CD_IDX "
        strSQL = strSQL & "                                            AND GH_COLE_CD = CD_COLE_CD "
        strSQL = strSQL & " WHERE    CD_CM_IDX = "& masterIdx &" "
        strSQL = strSQL & "          AND CD_ACA_CD = '"& campusCode &"' "
        strSQL = strSQL & "          AND CD_CC_IDX = "& consultantIdx &" "
        strSQL = strSQL & "          AND FORMAT(CD_DATE, 'yyyy-MM-dd') = '"& reservDate &"' "
        strSQL = strSQL & " ORDER BY FORMAT(CD_DATE, 'HH:mm'), "
        strSQL = strSQL & "          CD_CC_IDX "

        Set rsTime = russelobjDB.sqlQuery(strSQL, 3)
        
        If Not rsTime.EOF Then
            arrTime = rsTime.GetRows()
        End If
        
        rsTime.Close
        Set rsTime = Nothing

        If IsArray(arrTime) And Not IsNull(arrTime) Then
            For i = 0 To UBound(arrTime, 2)
                TimeDtlIdx      = arrTime(0, i)
                TimeReservIdx   = arrTime(1, i)
                TimeMyFlg       = arrTime(2, i)
                TimeHHmm        = arrTime(3, i)
                TimeColeCd      = arrTime(4, i)

                timeClass = ""
                If bReserv Then
                    If TimeMyFlg > 0 Then
                        timeClass = "r-complete"
                    Else
                        timeClass = ""
                    End If
                Else
                    If TimeReservIdx > 0 Then
                        timeClass = "r-disable"
                    Else
                        timeClass = "r-able"
                    End IF
                End If
%>
                <li>
                    <a href="javascript:;" data-cd="<%=TimeDtlIdx%>" class="<%=timeClass%>" data-class="<%=timeClass%>"><%=TimeHHmm%></a>
                </li>
<%
            Next
        End If
    ElseIF mode = "5" Then
        dtlIdx = VARS("dtlIdx")

        dtlCnt = 0
        reservCnt = 0
        
        strSQL = ""
        strSQL = strSQL & " WITH RESERV AS ( "
        strSQL = strSQL & "     SELECT CR_CD_IDX, "
        strSQL = strSQL & "            CR_MEM_ID, "
        strSQL = strSQL & "            GH_MEM_CD, "
        strSQL = strSQL & "            GH_COLE_CD "
        strSQL = strSQL & "     FROM   dbo.MR_CONSULTING_RESERV WITH (NOLOCK) "
        strSQL = strSQL & "            JOIN dbo.MG_Member_RmsCd WITH (NOLOCK) ON CODE = CR_AMS_CODE "
        strSQL = strSQL & "            JOIN MegaRMS.dbo.AMS_GRP_HIS WITH (NOLOCK) ON GH_MEM_CD = Rms_Mem_Cd "
        strSQL = strSQL & "                                                          AND GH_BE_CD = 11 "
        strSQL = strSQL & "                                                          AND GH_REFUND_CD IS NULL "
        strSQL = strSQL & "            JOIN dbo.MR_CONSULTING_DTL WITH (NOLOCK) ON CD_COLE_CD = GH_COLE_CD "
        strSQL = strSQL & "                                                        AND CD_CM_IDX = "& masterIdx &" "
        strSQL = strSQL & "                                                        AND CD_USE_FLG = 'Y' "
        strSQL = strSQL & " ) "
        strSQL = strSQL & " SELECT  COUNT(1), "
        strSQL = strSQL & "         COUNT(CASE WHEN CR_MEM_ID IS NOT NULL AND GH_MEM_CD IS NOT NULL THEN 1 END) "
        strSQL = strSQL & "             + COUNT(CASE WHEN CD_USE_FLG = 'N' THEN 1 END) "
        strSQL = strSQL & " FROM    dbo.MR_CONSULTING_DTL WITH (NOLOCK) "
        strSQL = strSQL & "         LEFT JOIN RESERV WITH (NOLOCK) ON CR_CD_IDX = CD_IDX "
        strSQL = strSQL & "                                           AND GH_COLE_CD = CD_COLE_CD "
        strSQL = strSQL & " WHERE   CD_CM_IDX = "& masterIdx &" "
        strSQL = strSQL & "         AND CD_IDX = "& dtlIdx &" "

        Set rsChk = russelobjDB.sqlQuery(strSQL, 3)
        
        If Not rsChk.EOF Then
            dtlCnt      = rsChk(0)
            reservCnt   = rsChk(1)
        End If
        
        rsChk.Close
        Set rsChk = Nothing

        If dtlCnt > 0 And reservCnt = 0 Then
            Response.Write "TRUE"
            Response.End
        Else
            Response.write "FALSE"
            Response.End
        End IF

    ElseIf mode = "6" Then
        dtlIdx = VARS("dtlIdx")

        dtlColeCd = 0

        strSQL = ""
        strSQL = strSQL & " SET NOCOUNT ON; "
        strSQL = strSQL & " DECLARE @COLE_CD INT; "
        strSQL = strSQL & " SET @COLE_CD = 0; "

        strSQL = strSQL & " BEGIN TRY "
        strSQL = strSQL & "     BEGIN TRAN; "
        strSQL = strSQL & "     WITH RESERV AS ( "
        strSQL = strSQL & "         SELECT CR_CD_IDX, "
        strSQL = strSQL & "                CR_MEM_ID, "
        strSQL = strSQL & "                GH_MEM_CD, "
        strSQL = strSQL & "                GH_COLE_CD "
        strSQL = strSQL & "         FROM   dbo.MR_CONSULTING_RESERV WITH (NOLOCK) "
        strSQL = strSQL & "                JOIN dbo.MG_Member_RmsCd WITH (NOLOCK) ON CODE = CR_AMS_CODE "
        strSQL = strSQL & "                JOIN MegaRMS.dbo.AMS_GRP_HIS WITH (NOLOCK) ON GH_MEM_CD = Rms_Mem_Cd "
        strSQL = strSQL & "                                                              AND GH_BE_CD = 11 "
        strSQL = strSQL & "                                                              AND GH_REFUND_CD IS NULL "
        strSQL = strSQL & "                JOIN dbo.MR_CONSULTING_DTL WITH (NOLOCK) ON CD_COLE_CD = GH_COLE_CD "
        strSQL = strSQL & "                                                            AND CD_CM_IDX = "& masterIdx &" "
        strSQL = strSQL & "                                                            AND CD_USE_FLG = 'Y' "
        strSQL = strSQL & "     ) "
        strSQL = strSQL & "     SELECT   TOP 1 "
        strSQL = strSQL & "              @COLE_CD = CD_COLE_CD "
        strSQL = strSQL & "     FROM     dbo.MR_CONSULTING_DTL WITH (UPDLOCK, HOLDLOCK) "
        strSQL = strSQL & "              LEFT JOIN RESERV WITH (NOLOCK) ON CR_CD_IDX = CD_IDX "
        strSQL = strSQL & "                                                AND GH_COLE_CD = CD_COLE_CD "
        strSQL = strSQL & "     WHERE    CD_CM_IDX = "& masterIdx &" "
        strSQL = strSQL & "              AND CD_IDX = "& dtlIdx &" "
        strSQL = strSQL & "              AND CR_MEM_ID IS NULL "
        strSQL = strSQL & "     ORDER BY CD_IDX; "

        strSQL = strSQL & "     IF @COLE_CD <> 0 "
        strSQL = strSQL & "     BEGIN "
        strSQL = strSQL & "         IF NOT EXISTS ( "
        strSQL = strSQL & "             SELECT  1 "
        strSQL = strSQL & "             FROM    dbo.MR_CONSULTING_RESERV WITH (NOLOCK) "
        strSQL = strSQL & "                     JOIN dbo.MR_CONSULTING_DTL WITH (NOLOCK) ON CD_IDX = CR_CD_IDX "
        strSQL = strSQL & "                                                                 AND CD_CM_IDX = "& masterIdx &" "
        strSQL = strSQL & "             WHERE   CR_MEM_ID = '"& gLoginMemId &"' "
        strSQL = strSQL & "         ) "
        strSQL = strSQL & "         BEGIN "
        strSQL = strSQL & "             INSERT INTO dbo.MR_CONSULTING_RESERV "
        strSQL = strSQL & "             ( "
        strSQL = strSQL & "                 CR_CD_IDX, "
        strSQL = strSQL & "                 CR_MEM_ID, "
        strSQL = strSQL & "                 CR_AMS_CODE "
        strSQL = strSQL & "             ) "
        strSQL = strSQL & "             SELECT "& dtlIdx &", "
        strSQL = strSQL & "                    '"& gLoginMemId &"', "
        strSQL = strSQL & "                    "& gLoginMemCode &" "
        strSQL = strSQL & "         END "
        strSQL = strSQL & "         ELSE "
        strSQL = strSQL & "         BEGIN "
        strSQL = strSQL & "             UPDATE  XX "
        strSQL = strSQL & "             SET     XX.CR_CD_IDX = "& dtlIdx &", "
        strSQL = strSQL & "                     XX.CR_REG_DATE = GETDATE() "
        strSQL = strSQL & "             FROM    dbo.MR_CONSULTING_RESERV AS XX WITH (NOLOCK) "
        strSQL = strSQL & "                     JOIN dbo.MR_CONSULTING_DTL WITH (NOLOCK) ON CD_IDX = XX.CR_CD_IDX "
        strSQL = strSQL & "                                                                 AND CD_CM_IDX = "& masterIdx &" "
        strSQL = strSQL & "             WHERE   CR_MEM_ID = '"& gLoginMemId &"' "
        strSQL = strSQL & "         END "
        strSQL = strSQL & "     END; "

        strSQL = strSQL & "     COMMIT TRAN; "
        strSQL = strSQL & " END TRY "
        strSQL = strSQL & " BEGIN CATCH "
        strSQL = strSQL & "     ROLLBACK TRAN; "
        strSQL = strSQL & "     SELECT -1; "
        strSQL = strSQL & " END CATCH; "
        strSQL = strSQL & " SELECT @COLE_CD; "

        dtlColeCd = russelobjDB.sqlResult(strSQL)

        Response.Write dtlColeCd
        Response.End
    ElseIf mode = "7" Then
        campusCode = VARS("campusCode")

        strSQL = ""
        strSQL = strSQL & " IF EXISTS ( "
        strSQL = strSQL & "     SELECT  1 "
        strSQL = strSQL & "     FROM    dbo.fn_Split((SELECT CM_WAITING_FLG "
        strSQL = strSQL & "                           FROM   dbo.MR_CONSULTING_MAS WITH (NOLOCK) "
        strSQL = strSQL & "                           WHERE  CM_IDX = "& masterIdx &"), ',') "
        strSQL = strSQL & "     WHERE   LEFT(value, 6) = '"& campusCode &"' "
        strSQL = strSQL & "             AND RIGHT(value, 1) = 'Y' "
        strSQL = strSQL & " ) "
        strSQL = strSQL & " BEGIN "
        strSQL = strSQL & "     IF NOT EXISTS ( "
        strSQL = strSQL & "         SELECT 1 "
        strSQL = strSQL & "         FROM   dbo.MR_CONSULTING_WAITING WITH (NOLOCK) "
        strSQL = strSQL & "         WHERE  CW_CM_IDX = "& masterIdx &" "
        strSQL = strSQL & "                AND CW_MEM_ID = '"& gLoginMemId &"' "
        strSQL = strSQL & "                AND CW_STAT != 2 "
        strSQL = strSQL & "     ) "
        strSQL = strSQL & "     BEGIN "
        strSQL = strSQL & "         INSERT INTO dbo.MR_CONSULTING_WAITING ( "
        strSQL = strSQL & "             CW_CM_IDX, "
        strSQL = strSQL & "             CW_ACA_CD, "
        strSQL = strSQL & "             CW_MEM_ID, "
        strSQL = strSQL & "             CW_STAT "
        strSQL = strSQL & "         ) "
        strSQL = strSQL & "         OUTPUT  'TRUE' "
        strSQL = strSQL & "         SELECT  "& masterIdx &", "
        strSQL = strSQL & "                 '"& campusCode &"', "
        strSQL = strSQL & "                 '"& gLoginMemId &"', "
        strSQL = strSQL & "                 0 "
        strSQL = strSQL & "     END "
        strSQL = strSQL & " END "

        result = russelobjDB.sqlResult(strSQL)

        response.write result
    End If
    Response.End
%>