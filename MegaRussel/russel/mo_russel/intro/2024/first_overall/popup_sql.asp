<% response.charset = "euc-kr" %>
<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->
<%
If IsRealSvr = true Then	'실서버
	ED_EM_NUM = "109"
Else	'개발서버
	ED_EM_NUM = "9077"
End If

sMEM_NM = fncRequest("V_NAME")
sCEL_NO = fncRequest("V_CEL_NO1") & fncRequest("V_CEL_NO2") & fncRequest("V_CEL_NO3")
sPAR_NO = fncRequest("V_PAR_NO1") & fncRequest("V_PAR_NO2") & fncRequest("V_PAR_NO3")
sGender = fncRequest("V_GENDER")
sMajor  = fncRequest("V_MAJOR")
sAddress = fncRequest("V_ADDRESS")
sAca_NM = fncRequest("V_ACA_NM")
sAgree  = fncRequest("V_AGREE_02")

sPAR_NO = strEncode(sPAR_NO)
sCEL_NO = strEncode(sCEL_NO)

if ValueCheck(sCEL_NO) and ValueCheck(sPAR_NO) and ValueCheck(sMajor) and ValueCheck(sAca_NM) then
    '//-- 이름/전화번호 중복처리
    re_cnt = 0
    strSql = " Select count(1)"
    strSql = strSql &" FROM MS_EVTRUSSEL_DTL A WITH(NOLOCK) "
    strSql = strSql &" WHERE ED_EM_NUM = '"& ED_EM_NUM &"' "
    strSql = strSql &" AND ED_HP_NO = '"& sCEL_NO &"' AND ED_TEL_NO = '"& sPAR_NO &"' "
    Set Rs = russelobjdb.sqlQuery(strSql,1)
    If Not (Rs.eof Or Rs.bof) Then
        re_cnt = Rs(0)
    end if
    Rs.close
    Set Rs = Nothing

    if re_cnt > 0 then
        ScriptBegin
        ScriptWrite "alert('이미 신청하였습니다.');"
        ScriptWrite "self.close();"
        ScriptEnd
    else
        ' 이벤트 등록 처리
        strSql = ""
        strSql = strSql & " INSERT INTO [dbo].[MS_EVTRUSSEL_DTL] ([ED_EM_NUM],[ED_MEM_NM],[ED_HP_NO],[ED_TEL_NO],[ED_FLD_1],[ED_FLD_2],[ED_FLD_3],[ED_CONTS],[ED_AGREE_YN],[ED_REG_DT]) "
        strSql = strSql & " VALUES ( " & ED_EM_NUM
        strSql = strSql & " 	, '" & sMEM_NM & "' "
        strSql = strSql & " 	, '" & sCEL_NO & "' "
        strSql = strSql & " 	, '" & sPAR_NO & "' "
        strSql = strSql & " 	, '" & sGender & "' "
        strSql = strSql & " 	, '" & sMajor & "' "
        strSql = strSql & " 	, '" & sAddress & "' "
        strSql = strSql & " 	, '" & sAca_NM & "' "
        strSql = strSql & " 	, '" & sAgree & "' "
        strSql = strSql & " 	, GETDATE() ); "

        russelobjdb.sqlExecute(strSql)

        ScriptBegin
        ScriptWrite "alert('등록 되었습니다.');"
        ScriptWrite "self.close();"
        ScriptEnd
    end if
else
    js_back("누락된 값이 있습니다.")
end if
%>