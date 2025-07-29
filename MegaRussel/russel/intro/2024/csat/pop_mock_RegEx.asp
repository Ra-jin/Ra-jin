
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<%
formFilter() ' SQL 인젝션 문자열 필터링

Dim Mode 
Dim Sql, ErrInx

mobileYN = fncChkMobile()

strSql = ""
strSql = strSql &" SELECT EM_NUM "
strSql = strSql &" FROM MS_EVTRUSSEL_MAS WITH(NOLOCK) "
strSql = strSql &" WHERE EM_TITLE LIKE '%2025 수능 실전 모의체험%' AND EM_DEL_FLG ='N' "

Set objRs = russelobjdb.sqlQuery(strSql, 3)
If Not (objRs.EoF And objRs.BoF) Then
    EM_NUM = objRs(0)
End If
objRs.close
Set objRs = Nothing

Mode = VARS("Mode")
if Mode = "" then Mode = "WRITE"

Select Case Mode

   '================================================
   ' 등록
   '================================================
   Case "WRITE" :
	    If Not gLoginOk Then
            ScriptBegin
            ScriptWrite "alert('사이트 상단으로 이동하여 로그인 후, 신청 가능합니다.');"
            ScriptWrite "self.close();"
            ScriptEnd
            response.end
        End If

        strSql = ""
        strSql = strSql & " SELECT ED_MEM_NM"
        strSql = strSql & " FROM MS_EVTRUSSEL_DTL WITH(NOLOCK)  "
        strSql = strSql & " WHERE ED_EM_NUM = '"&EM_NUM&"'  "
        strSql = strSql & " 	AND ED_MEM_ID = '" & gLoginMemid & "' "
        strSql = strSql & " 	AND ED_MEM_TYPE = '1' "

        Set objRs = russelobjdb.sqlQuery(strSql, 1)
        sReservExistedName = ""
        If Not (objRs.EoF And objRs.BoF) Then
            sReservExistedName = objRs(0)
        End If
        objRs.close
        Set objRs = Nothing

        If sReservExistedName <> "" Then
            %>
            <script>
            alert("<%=sReservExistedName%>님은 이미 등록 되어있습니다.");
            self.close();
            </script>
            <%
            response.end
        End If

        SH_SEX = Request("gender")

        SH_BIRTH1 = Request("SH_BIRTH1")
        SH_BIRTH2 = Request("SH_BIRTH2")
        SH_BIRTH3 = Request("SH_BIRTH3")
        SH_BIRTH = SH_BIRTH1 & "-" & SH_BIRTH2 & "-" & SH_BIRTH3		
        SH_MEMTEL_NO = Request("cel_no1") & "-" & Request("cel_no2") & "-" & Request("cel_no3")
        SH_PARTEL_NO = Request("cel_no4") & "-" & Request("cel_no5") & "-" & Request("cel_no6")
        SH_SCH_NM = SafeQuery(Trim(Request("SH_SCH_NM")))
        SH_GRD = Request("SH_GRD")
        SH_ADDR = Request("SH_ADDR")
        SH_SEL_KOR = Request("SH_SEL_KOR")
        SH_SEL_MATH = Request("SH_SEL_MATH")
        SH_SEL_TAM1 = Request("SH_SEL_TAM1")
        SH_SEL_TAM2 = Request("SH_SEL_TAM2")
        SH_EXAM_ADDR = Request("SH_EXAM_ADDR")

        SH_PATH = "PC"
        
        SH_PRI_AGR = Request("privacyAgr")
        SH_SMS_AGR = Request("smsAgree")
        SH_EMAIL_AGR = Request("emailAgree")

        IF SH_SMS_AGR = "" THEN
            SH_SMS_AGR = "N"
        END IF

        IF SH_EMAIL_AGR = "" THEN
            SH_EMAIL_AGR = "N"
        END IF 

       IF gLoginMemId="" OR SH_SCH_NM = "" OR SH_SEX = "" OR SH_BIRTH = "" OR SH_MEMTEL_NO = "" OR SH_PARTEL_NO = "" OR SH_GRD = "" OR SH_ADDR = "" OR SH_SEL_KOR = "" OR SH_SEL_MATH = "" OR SH_SEL_TAM1 = "" OR SH_SEL_TAM2 = "" OR SH_EXAM_ADDR = "" OR SH_PATH = "" OR SH_PRI_AGR = "" OR SH_SMS_AGR = "" OR SH_EMAIL_AGR = "" then
            ScriptBegin
            ScriptWrite "alert('잘못된 데이터 입니다. 입력 안 된 값이 있는지 확인해주세요.');"
            ScriptWrite "self.close();"
            ScriptEnd
            response.end
        end if   
           
        insertsql = ""
        insertsql = insertsql & " INSERT INTO MS_EVTRUSSEL_DTL VALUES("&EM_NUM&", '"&gLoginMemId&"', '"&gLoginMemName&"','1', '"&SH_GRD&"', CONVERT(DATETIME, '"&SH_BIRTH&"'), NULL "
        insertsql = insertsql & " ,'"&SH_SCH_NM&"', '"&SH_MEMTEL_NO&"', '"&SH_PARTEL_NO&"', '"&SH_PRI_AGR&"', '"&SH_EXAM_ADDR&"', '"&SH_PATH&"', NULL, '"&SH_SEL_KOR&"', '"&SH_SEL_MATH&"', '"&SH_SEL_TAM1&"', GETDATE(), '"&SH_SEL_TAM2&"', '"&SH_SEX&"', '"&SH_SMS_AGR&"', '"&SH_EMAIL_AGR&"', NULL, '"&SH_ADDR&"', NULL)"

        russelobjdb.sqlExecute(insertsql)
        
        If Err.Number = 0 Then
            ScriptBegin
            ScriptWrite "alert('정상 신청되었습니다.');"
	        ScriptWRite "location.href='pop_view.asp'"
            ScriptWRite "opener.parent.location.reload()"
	        ScriptEnd
        Else
	        ScriptBegin
	        ScriptWrite "alert('처리중 오류! 관리자에게 문의하세요');"
            ScriptWrite "self.close();"
	        ScriptEnd
        End If
		
        Set Param = Nothing  

    '================================================
   '  수정
   '================================================
    Case "UPD" :
	    If Not gLoginOk Then
            ScriptBegin
            ScriptWrite "alert('로그인 후 이용하실 수 있습니다.');"
            ScriptWrite "self.close();"
            ScriptEnd
            response.end
        End If

        SH_SEX = Request("gender")
        SH_BIRTH1 = Request("SH_BIRTH1")
        SH_BIRTH2 = Request("SH_BIRTH2")
        SH_BIRTH3 = Request("SH_BIRTH3")
        SH_BIRTH = SH_BIRTH1 & "-" & SH_BIRTH2 & "-" & SH_BIRTH3		
        SH_MEMTEL_NO = Request("cel_no1") & "-" & Request("cel_no2") & "-" & Request("cel_no3")
        SH_PARTEL_NO = Request("cel_no4") & "-" & Request("cel_no5") & "-" & Request("cel_no6")
        SH_SCH_NM = SafeQuery(Trim(Request("SH_SCH_NM")))
        SH_GRD = Request("SH_GRD")
        SH_ADDR = Request("SH_ADDR")
        SH_SEL_KOR = Request("SH_SEL_KOR")
        SH_SEL_MATH = Request("SH_SEL_MATH")
        SH_SEL_TAM1 = Request("SH_SEL_TAM1")
        SH_SEL_TAM2 = Request("SH_SEL_TAM2")
        SH_EXAM_ADDR = Request("SH_EXAM_ADDR")

        IF gLoginMemId="" OR SH_SCH_NM = "" OR SH_SEX = "" OR SH_BIRTH = "" OR SH_MEMTEL_NO = "" OR SH_PARTEL_NO = "" OR SH_GRD = "" OR SH_ADDR = "" OR SH_SEL_KOR = "" OR SH_SEL_MATH = "" OR SH_SEL_TAM1 = "" OR SH_SEL_TAM2 = "" OR SH_EXAM_ADDR = "" then
            ScriptBegin
            ScriptWrite "alert('잘못된 데이터 입니다. 입력 안 된 값이 있는지 확인해주세요.');"
            ScriptWrite "self.close();"
            ScriptEnd
            response.end
        end if   
        
        updatesql = ""
        updatesql = updatesql & " UPDATE MS_EVTRUSSEL_DTL SET ED_MEM_SEX = '"&SH_SEX&"', ED_MEM_BIRTH =  CONVERT(DATETIME, '"&SH_BIRTH&"'), ED_HP_NO = '"&SH_MEMTEL_NO&"', "
        updatesql = updatesql & " ED_TEL_NO = '"&SH_PARTEL_NO&"', ED_MEM_SCH = '"&SH_SCH_NM&"', ED_MEM_GRADE = '"&SH_GRD&"',  "
        updatesql = updatesql & " ED_FLD_1 = '"&SH_SEL_KOR&"', ED_FLD_2 = '"&SH_SEL_MATH&"', ED_FLD_3 = '"&SH_SEL_TAM1&"', ED_FLD_4 = '"&SH_SEL_TAM2&"', ED_CONTS = '"&SH_EXAM_ADDR&"', ED_ADDRESS = '"&SH_ADDR&"' "
        updateSql = updateSql & " WHERE ED_MEM_ID = '"&gLoginMemId&"' AND ED_EM_NUM = '"&EM_NUM&"' AND ED_MEM_TYPE = '1' "
        
        russelobjdb.sqlExecute(updatesql)

        If Err.Number = 0 Then
            ScriptBegin
            ScriptWrite "alert('수정 완료되었습니다.');"
	        ScriptWRite "location.href='pop_view.asp'"
            'ScriptWRite "opener.parent.location.reload()"
	        ScriptEnd
        Else
	        ScriptBegin
	        ScriptWrite "alert('처리중 오류! 관리자에게 문의하세요');"
            ScriptWrite "self.close();"
	        ScriptEnd
        End If
    
    '=================================================
    ' 취소
    '=================================================

    Case "cancle" :
        If Not gLoginOk Then
            ScriptBegin
            ScriptWrite "alert('로그인 후 이용하실 수 있습니다.');"
            ScriptWrite "self.close();"
            ScriptEnd
            response.end
        End If

        deleteSql = ""
        deleteSql = deleteSql & " UPDATE MS_EVTRUSSEL_DTL SET ED_MEM_TYPE='2' WHERE ED_MEM_ID = '"&gLoginMemId&"' AND ED_EM_NUM = '"&EM_NUM&"' AND ED_MEM_TYPE = '1' " 

        russelobjdb.sqlExecute(deletesql)
        
        If Err.Number = 0 then
            ScriptBegin
            ScriptWrite "alert('취소 되었습니다.');"
	        ScriptWrite "self.close();"
            ScriptWRite "opener.parent.location.reload()"
	        ScriptEnd
        Else
	        ScriptBegin
	        ScriptWrite "alert('처리중 오류! 관리자에게 문의하세요');"
            ScriptWrite "self.close();"
	        ScriptEnd
        End If
    
    END SELECT
%>