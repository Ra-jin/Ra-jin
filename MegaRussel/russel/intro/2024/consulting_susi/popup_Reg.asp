
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/common/inc/DBSrv.asp" -->
<%
    response.CodePage = 949
    response.charset = "euc-kr"
   
    Call formFilter

    ' 상세 정보 등록 여부 확인 후 insert 
    bApply = false

    applyCnt = 0
	chkSql = ""
	chkSql = chkSql & " SELECT COUNT(1) "
    chkSql = chkSql & " FROM dbo.MR_CONSULTING_APPLY_INFO WITH (NOLOCK) "
    chkSql = chkSql & " WHERE CAI_CM_IDX = " & VARS("masterIdx") & " "
    chkSql = chkSql & "      AND CAI_MEM_ID = '" &  VARS("loginId") & "' "
    applyCnt = russelobjDB.sqlResult(chkSql)
    If applyCnt > 0 Then
	    bApply = True
	End If 

    If bApply = false Then 
        Dim strSql : strSql = ""

        If not ValueCheck(VARS("caiAgreeYn")) Then 
            VARS("caiAgreeYn") = "N"
        End If 

        If not ValueCheck(VARS("caiAgree2Yn")) Then 
            VARS("caiAgree2Yn") = "N"
        End If 
        
        Set Param = server.CreateObject("Scripting.Dictionary")

        If ValueCheck(VARS("masterIdx")) Then
            Param("CAI_CM_IDX") = VARS("masterIdx")
        End If 

        If valueCheck(VARS("loginId")) Then
            Param("CAI_MEM_ID") = VARS("loginId")
        End If

        If valueCheck(VARS("name")) Then
            Param("CAI_MEM_NAME") = VARS("name")
        End If   

        If ValueCheck(VARS("caiGender")) Then
            Param("CAI_GENDER") = VARS("caiGender")
        End If

        If ValueCheck(VARS("caiSchoolName")) Then
            Param("CAI_SCHOOL_NAME") = VARS("caiSchoolName")
        End If

        If ValueCheck(VARS("caiBirth")) Then
            Param("CAI_BIRTH") = VARS("caiBirth")
        End If

        If ValueCheck(VARS("caiGrade")) Then
            Param("CAI_GRADE") = VARS("caiGrade")
        End If

        If ValueCheck(VARS("caiLastYearUniv")) Then
            Param("CAI_LASTYEAR_UNIV") = VARS("caiLastYearUniv")
        End If

        If ValueCheck(VARS("caiDivision")) Then
            Param("CAI_DIVISION") = VARS("caiDivision")
        End If

        If ValueCheck(VARS("caiSchoolName")) Then
            Param("CAI_CELL_NO") = VARS("caiCellNo")
        End If

        If ValueCheck(VARS("caiEmail")) Then
            Param("CAI_EMAIL") = VARS("caiEmail")
        End If

        If ValueCheck(VARS("caiParentCellNo")) Then
            Param("CAI_PARENT_CELL_NO") = VARS("caiParentCellNo")
        End If

        If ValueCheck(VARS("caiParentEmail")) Then
            Param("CAI_PARENT_EMAIL") = VARS("caiParentEmail")
        End If

        If ValueCheck(VARS("caiLikeUniv1")) Then
            Param("CAI_LIKE_UNIV1") = VARS("caiLikeUniv1")
        End If

        If ValueCheck(VARS("caiLikeUniv2")) Then
            Param("CAI_LIKE_UNIV2") = VARS("caiLikeUniv2")
        End If

        If ValueCheck(VARS("caiLikeUniv3")) Then
            Param("CAI_LIKE_UNIV3") = VARS("caiLikeUniv3")
        End If

        If ValueCheck(VARS("caiLikeUniv4")) Then
            Param("CAI_LIKE_UNIV4") = VARS("caiLikeUniv4")
        End If

        If ValueCheck(VARS("caiLikeUniv5")) Then
            Param("CAI_LIKE_UNIV5") = VARS("caiLikeUniv5")
        End If

        If ValueCheck(VARS("caiLikeUniv6")) Then
            Param("CAI_LIKE_UNIV6") = VARS("caiLikeUniv6")
        End If

        If ValueCheck(VARS("caiApplyNum1")) Then
            Param("CAI_APPLY_NUM1") = VARS("caiApplyNum1")
        End If

        If ValueCheck(VARS("caiApplyNum2")) Then
            Param("CAI_APPLY_NUM2") = VARS("caiApplyNum2")
        End If

        If ValueCheck(VARS("caiApplyNum3")) Then
            Param("CAI_APPLY_NUM3") = VARS("caiApplyNum3")
        End If

        If ValueCheck(VARS("caiConsultContent")) Then
            Param("CAI_CONSULT_CONTENT") = VARS("caiConsultContent")
        End If

        If ValueCheck(VARS("caiAgreeYn")) Then
            Param("CAI_AGREE_YN") = VARS("caiAgreeYn")
        End If

        If ValueCheck(VARS("caiAgree2Yn")) Then
            Param("CAI_AGREE2_YN") = VARS("caiAgree2Yn")
        End If

        Call russelobjDB.begin()
        ResultIdx = russelobjDB.insertQuery("MR_CONSULTING_APPLY_INFO", Param)
        Call russelobjDB.trans("")

        If Err.Number = 0 Then
            Response.write "<script>"
            Response.write "    alert('처리되었습니다.');"
            Response.write "    opener.location.reload();"
            Response.write "    self.close();"
            Response.write "</script>"
        End If
    Else   
         Response.write "<script>"
        Response.write "    alert('이미처리되었습니다.');"
        Response.write "    opener.location.reload();"
        Response.write "    self.close();"
        Response.write "</script>"
    End If 
%>




