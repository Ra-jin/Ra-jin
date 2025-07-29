<!DOCTYPE html>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/Member/login_check.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<!-- #include virtual = "/include/head.asp" -->
<%
    Response.Expires = -1

    '파일업로드 콤포넌트 생성
    set UPLOAD = Server.CreateObject("SiteGalaxyUpload.Form")   ' SQL 인젝션 문자열 필터링
    for each key In UPLOAD
        execute("VARS("""& key &""") = UPLOAD("""& key &""")")
    Next

	sTry_CD          = VARS("try_cd")
	sMod 			 = VARS("mod")
    sStu_Question    = VARS("stu_question")
    
    if sMod = "stu_question" then
        strSQL = ""
        strSQL = strSQL & " IF EXISTS(SELECT 1 FROM AMS_TRY_CONSULT (NOLOCK) WHERE TC_TRY_CD = '" & sTry_CD & "' AND TC_MEM_CD = '" & nRmsMemCd & "') "
        strSQL = strSQL & " 	UPDATE AMS_TRY_CONSULT SET TC_STU_QUESTION = '" & sStu_Question & "', TC_REG_DT = GETDATE() WHERE TC_TRY_CD = '" & sTry_CD & "' AND TC_MEM_CD = '" & nRmsMemCd & "' "
        strSQL = strSQL & " ELSE "
        strSQL = strSQL & " 	INSERT INTO AMS_TRY_CONSULT(TC_TRY_CD, TC_MEM_CD, TC_STU_QUESTION, TC_REG_DT) VALUES('" & sTry_CD & "', '" & nRmsMemCd & "', '" & sStu_Question & "', GETDATE()) "
        
        amsobjdb.sqlExecute(strSQL)
    elseif sMod = "tec_file_upload" then
        sField_NM = VARS("field_nm")
        sFile_NM = VARS("tec_file" & sField_NM)
        if sFile_NM <> "" then
            Set fso = CreateObject("Scripting.FileSystemObject")
            sFile_NM = fso.GetFileName(sFile_NM)
            Set fso = Nothing

            sFile_PATH = FileUpload("SiteGalaxy",VARS("tec_file" & sField_NM),Server.MapPath("/Data/")&"\")

            strSQL = ""
            strSQL = strSQL & " IF EXISTS(SELECT 1 FROM AMS_TRY_CONSULT (NOLOCK) WHERE TC_TRY_CD = '" & sTry_CD & "' AND TC_MEM_CD = '" & nRmsMemCd & "') "
            strSQL = strSQL & " 	UPDATE AMS_TRY_CONSULT SET TS_TEC_FILE" & sField_NM & "_NM = '" & sFile_NM & "', TS_TEC_FILE" & sField_NM & "_PATH = '/Data/" & sFile_PATH & "', TC_REG_DT = GETDATE() WHERE TC_TRY_CD = '" & sTry_CD & "' AND TC_MEM_CD = '" & nRmsMemCd & "' "
            strSQL = strSQL & " ELSE "
            strSQL = strSQL & " 	INSERT INTO AMS_TRY_CONSULT(TC_TRY_CD, TC_MEM_CD, TS_TEC_FILE" & sField_NM & "_NM, TS_TEC_FILE" & sField_NM & "_PATH, TC_REG_DT) VALUES('" & sTry_CD & "', '" & nRmsMemCd & "', '" & sFile_NM & "', '/Data/" & sFile_PATH & "', GETDATE()) "
        
            amsobjdb.sqlExecute(strSQL)
        end if
    elseif sMod = "tec_file_delete" then
        sField_NM = VARS("field_nm")

        strSQL = ""
        strSQL = strSQL & " UPDATE AMS_TRY_CONSULT SET TS_TEC_FILE" & sField_NM & "_NM = '', TS_TEC_FILE" & sField_NM & "_PATH = '', TC_REG_DT = GETDATE() WHERE TC_TRY_CD = '" & sTry_CD & "' AND TC_MEM_CD = '" & nRmsMemCd & "' "
        amsobjdb.sqlExecute(strSQL)
    elseif sMod = "tec_answer" then
        sTec_Answer_Idx  = VARS("tec_answer_idx")
        sTec_Answer_Title= VARS("tec_answer_title")
        sTec_Answer      = VARS("tec_answer")
        sTec_Answer_RegDT= VARS("tec_answer_retdt")
        sSendSns         = VARS("snsCk")

        if sTec_Answer_Idx = "" then
            strSQL = ""
            strSQL = strSQL & "	INSERT INTO AMS_TRY_CONSULT_SUB(TCS_TRY_CD, TCS_MEM_CD, TSC_TEC_ANSWER_TITLE, TCS_TEC_ANSWER, TCS_REG_DT) "
            strSQL = strSQL & "	VALUES('" & sTry_CD & "', '" & nRmsMemCd & "', '" & sTec_Answer_Title & "', '" & sTec_Answer & "', '" & sTec_Answer_RegDT & ":00') "
        else
            strSQL = ""
            strSQL = strSQL & "	UPDATE  AMS_TRY_CONSULT_SUB "
            strSQL = strSQL & "	SET     TSC_TEC_ANSWER_TITLE = '" & sTec_Answer_Title & "' "
            strSQL = strSQL & "	        , TCS_TEC_ANSWER = '" & sTec_Answer & "' "
            strSQL = strSQL & "	        , TCS_REG_DT = '" & sTec_Answer_RegDT & ":00' "
            strSQL = strSQL & "	WHERE   TCS_CD = '" & sTec_Answer_Idx & "' "
        end if

        amsobjdb.sqlExecute(strSQL)

'        if sSendSns = "Y" then
'            sAca_Cd         = ""
'            sPar_Tel_no     = ""
'            sCallBack       = ""
'
'			
'            strSQL = ""
'            strSQL = strSQL & " SELECT		B.TE_ACA_CD "
'            strSQL = strSQL & "             , ISNULL(AM_ACA_TEL, '1588-7887') AS CALLBACK "
'            strSQL = strSQL & "             , DBO.UF_GET_MegaEnc_Decode(MP_CEL_NO_EN) AS PAR_TEL_NO "
'            strSQL = strSQL & " FROM		AMS_MEM_SCORE (nolock) A "
'            strSQL = strSQL & " INNER JOIN	AMS_TRY_EXAM (nolock) B ON A.MS_TRY_CD = B.TE_TRY_CD "
'            strSQL = strSQL & " INNER JOIN	AMS_ACA_MAS (nolock) C ON B.TE_ACA_CD = C.AM_ACA_CD "
'            strSQL = strSQL & " LEFT JOIN	AMS_MEM_PAR (nolock) D ON A.MS_MEM_CD = D.MP_MEM_CD "
'            strSQL = strSQL & " WHERE		A.MS_TRY_CD = '" & sTry_CD & "' "
'            strSQL = strSQL & " AND			A.MS_MEM_CD = '" & nRmsMemCd & "' "
'
'            Set RS = amsobjdb.sqlQuery(strSQL,3)
'
'            If RS.BOF OR RS.EOF Then
'            Else
'                sAca_Cd         = RS("TE_ACA_CD")
'                sCallBack       = RS("CALLBACK")
'                sPar_Tel_no     = RS("PAR_TEL_NO")
'            End if
'
'            If sAca_Cd <> "" And sCallBack <> "" And sPar_Tel_no <> "" Then
'                strSql = ""
'                strSql = strSql & " EXEC dbo.Msp_Set_Sms_Fire_New "
'                strSql = strSql & sAca_Cd
'                strSql = strSql & " ,1011 "
'                strSql = strSql & " ,NULL "
'                strSql = strSql & " ,'" & sPar_Tel_no & "' "	'@받는 번호
'                strSql = strSql & " ,'" & sCallBack & "' "	'@보내는 번호
'                strSql = strSql & " ,'"& "5월 메가&대성 모의고사 성적 상담정보가 등록되었습니다.http://myrussel.megastudy.net" &"' "		'@SMS내용
'                amsobjdb.sqlExecute(strSQL)
'            End If
'        end if
    elseif sMod = "tec_answer_del" then
        sTec_Answer_Idx  = VARS("tec_answer_idx")

        strSQL = ""
        strSQL = strSQL & "	DELETE FROM AMS_TRY_CONSULT_SUB "
        strSQL = strSQL & "	WHERE  TCS_CD = '" & sTec_Answer_Idx & "' "

        amsobjdb.sqlExecute(strSQL)
    end if
%>


<script language="JavaScript">
    parent.history.go(0);
</script>