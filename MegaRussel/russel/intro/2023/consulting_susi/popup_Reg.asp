<% response.charset = "euc-kr" %>
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<!-- #include virtual="/russel/common/inc/DBSrv.asp" -->

<%

    Call formFilter
    
    Dim fs : Set fs = Server.CreateObject("Scripting.FileSystemObject")
    Set UPLOAD = Server.CreateObject("SiteGalaxyUpload.Form")
    Call formFilterBinary("SiteGalaxyUpload",UPLOAD) ' SQL 인젝션 문자열 필터링
    
    For each key in UPLOAD
	    execute("vars("""& key &""") = UPLOAD("""& key &""")")
    Next

    mobileYN = fncChkMobile()
    If mobileYN = "Y" Then
        EC_PATH = "MO"
    Else
        EC_PATH = "PC"
    End If

    IF VARS("agree_2") = "" THEN
        VARS("agree_2") = "N"
    END IF
    
    EC_STU_MOBILE = VARS("cel_no1") & "-" & VARS("cel_no2") & "-" & VARS("cel_no3")
    If VARS("email_no2") = "" Then
        EC_STU_EMAIL = VARS("email_no1") & "@" & VARS("email_no3")
    Else
        EC_STU_EMAIL = VARS("email_no1") & "@" & VARS("email_no2")
    End If
    
    EC_PAT_MOBILE = VARS("cel2_no1") & "-" & VARS("cel2_no2") & "-" & VARS("cel2_no3")
    If VARS("email2_no2") = "" Then
        EC_PAT_EMAIL = VARS("email2_no1") & "@" & VARS("email2_no3")
    Else
        EC_PAT_EMAIL = VARS("email2_no1") & "@" & VARS("email2_no2")
    End If

    If gLoginOk = True Then
    
        IF VARS("mode") = "apply" THEN
        
        ' 이벤트 참여이력 조회	
        strSql = ""
        strSql = strSql & " SELECT COUNT(*) "
        strSql = strSql & " FROM MR_EVT_SUSI_CONSULT2024 WITH(NOLOCK) "
        strSql = strSql & " WHERE EC_TYPE = 'C' "
		strSql = strSql & " AND EC_AGREE2_YN in ('1','2')  " '예약 대기/완료상태
	    strSql = strSql &"  AND EC_MEM_ID = '"&gLoginMemId&"'"

        evtRegCnt = CInt(russelobjDb.sqlResult(strSql))

        VARS("consult_content") = Replace(VARS("consult_content"), "'", """")

            If evtRegCnt = 0 Then
              
                strSql = ""
                strSql = strSql & " INSERT INTO [dbo].[MR_EVT_SUSI_CONSULT2024] "
                strSql = strSql & "           ([EC_MEM_ID] "
                strSql = strSql & "           , [EC_MEM_NM] "
                strSql = strSql & "           , [EC_SEX] "
                strSql = strSql & "           , [EC_SCH_NM] "
                strSql = strSql & "           , [EC_LINE] "
                strSql = strSql & "           , [EC_CLASS] "
                strSql = strSql & "           , [EC_STU_MOBILE] "
                strSql = strSql & "           , [EC_STU_EMAIL] "
                strSql = strSql & "           , [EC_PAT_MOBILE] "
                strSql = strSql & "           , [EC_PAT_EMAIL] "
                strSql = strSql & "           , [EC_LIKE_UNIV1] "
                strSql = strSql & "           , [EC_LIKE_UNIV2] "
                strSql = strSql & "           , [EC_LIKE_UNIV3] "
                strSql = strSql & "           , [EC_LIKE_UNIV4] "
                strSql = strSql & "           , [EC_LIKE_UNIV5] "
                strSql = strSql & "           , [EC_LIKE_UNIV6] "

                strSql = strSql & "           , [EC_BIRTH] "
                strSql = strSql & "           , [EC_CONSULT_CONTENT] "
                strSql = strSql & "           , [EC_CONSULT_PLACE] "
                strSql = strSql & "           , [EC_AGREE1_YN] "
                strSql = strSql & "           , [EC_AGREE2_YN] "
                strSql = strSql & "           , [EC_AGREE3_YN] "
                strSql = strSql & "           , [EC_PATH] "
                strSql = strSql & "           , [EC_HOPE_DT] "
                strSql = strSql & "           , [EC_REG_DT] "
                strSql = strSql & "           , [EC_TYPE] "

                If trim(VARS("up_apply")) <> "" Then 
                    strSql = strSql & "           , [EC_APPLYNUM1] "
                End If

                If trim(VARS("mid_apply")) <> "" Then 
                    strSql = strSql & "           , [EC_APPLYNUM2] "
                End If

                If trim(VARS("down_apply")) <> "" Then 
                    strSql = strSql & "           , [EC_APPLYNUM3] "
                End If 

                strSql = strSql & "           , [EC_LASTYEAR_UNIV]) "
                strSql = strSql & "           VALUES "
                strSql = strSql & "           ('" & gLoginMemId & "' "
                strSql = strSql & "           , '" & VARS("name") & "' "
                strSql = strSql & "           , '" & VARS("gender") & "' "
                strSql = strSql & "           , '" & VARS("SH_SCH_NM") & "' "
                strSql = strSql & "           , '" & VARS("department") & "' "
                strSql = strSql & "           , '" & VARS("grade") & "' "
                strSql = strSql & "           , '" & EC_STU_MOBILE & "' "
                strSql = strSql & "           , '" & EC_STU_EMAIL & "' "
                strSql = strSql & "           , '" & EC_PAT_MOBILE & "' "
                strSql = strSql & "           , '" & EC_PAT_EMAIL & "' "
                strSql = strSql & "           , '" & VARS("V_UNI_NM1") & "' "
                strSql = strSql & "           , '" & VARS("V_UNI_NM2") & "' "
                strSql = strSql & "           , '" & VARS("V_UNI_NM3") & "' "
                strSql = strSql & "           , '" & VARS("V_UNI_NM4") & "' "
                strSql = strSql & "           , '" & VARS("V_UNI_NM5") & "' "
                strSql = strSql & "           , '" & VARS("V_UNI_NM6") & "' "

                strSql = strSql & "           , '" & VARS("birth") & "' "
                strSql = strSql & "           , '" & VARS("consult_content") & "' "
                strSql = strSql & "           , '" & VARS("consult_place") & "' "
                strSql = strSql & "           , '" & VARS("agree_1") & "' "
                If trim(VARS("mem_status_apply")) <> "" Then 
                strSql = strSql & "           , '1' " '예약완료
                end if

                If trim(VARS("mem_status_relay")) <> "" Then 
                strSql = strSql & "           , '2' " '대기완료
                end if
                
                strSql = strSql & "           , '" & VARS("agree_2") & "' "
                strSql = strSql & "           , '" & EC_PATH & "' "
                If trim(VARS("mem_status_apply")) <> "" Then 
                strSql = strSql & "           , '" & VARS("mem_status_apply") & "' "
                END IF
                
                IF trim(VARS("mem_status_relay")) <> "" Then 
                strSql = strSql & "           , '" & VARS("mem_status_relay") & "' "
                END IF
                
                strSql = strSql & "           , GETDATE() "
                strSql = strSql & "           , 'C' "

                If trim(VARS("up_apply")) <> "" Then 
                    strSql = strSql & "           , " & VARS("up_apply") & " "
                End If 

                If trim(VARS("mid_apply")) <> "" Then 
                    strSql = strSql & "           , " & VARS("mid_apply") & " "                
                End If 

                If trim(VARS("down_apply")) <> "" Then 
                    strSql = strSql & "           , " & VARS("down_apply") & " "
                End If 

                strSql = strSql & "           , '" & VARS("last_univ") & "' "
                strSql = strSql & "           ); "


                russelobjdb.sqlExecute(strSql)
%>

                <script>     
                    alert('신청이 완료되었습니다.\n※ 제출 서류는 rsc@megastudy.net으로 첨부하여 보내주시기 바랍니다.\n※ 컨설팅 취소 및 환불은 예약일로부터 2일(48시간) 전까지만 가능합니다.')  
                    self.close();
                    opener.parent.location.reload();
                </script>

<%
            Else
%>

                <script>
                    alert('이미 접수가 완료되었습니다.');             
                    self.close();
                </script>

<%                 
            End If

        ElseIf VARS("mode") = "modify" then

            strSql = ""
            strSql = strSql & " UPDATE [dbo].[MR_EVT_SUSI_CONSULT2024] SET "
            strSql = strSql & "          [EC_MEM_NM] = '" & VARS("name") & "' "
            strSql = strSql & "        , [EC_SEX] = '" & VARS("gender") & "' "
            strSql = strSql & "        , [EC_SCH_NM] = '" & VARS("SH_SCH_NM") & "' "
            strSql = strSql & "        , [EC_LINE] = '" & VARS("department") & "' "
            strSql = strSql & "        , [EC_CLASS] = '" & VARS("grade") & "' "
            strSql = strSql & "        , [EC_STU_MOBILE] = '" & EC_STU_MOBILE & "'"
            strSql = strSql & "        , [EC_STU_EMAIL] = '" & EC_STU_EMAIL & "' "
            strSql = strSql & "        , [EC_PAT_MOBILE] = '" & EC_PAT_MOBILE & "' "
            strSql = strSql & "        , [EC_PAT_EMAIL] = '" & EC_PAT_EMAIL & "' "
            strSql = strSql & "        , [EC_LIKE_UNIV1] = '" & VARS("V_UNI_NM1") & "' "
            strSql = strSql & "        , [EC_LIKE_UNIV2] = '" & VARS("V_UNI_NM2") & "' "
            strSql = strSql & "        , [EC_LIKE_UNIV3] = '" & VARS("V_UNI_NM3") & "' "
            strSql = strSql & "        , [EC_LIKE_UNIV4] = '" &VARS("V_UNI_NM4")& "' "
            strSql = strSql & "        , [EC_LIKE_UNIV5] = '" &VARS("V_UNI_NM5")& "' " 
            strSql = strSql & "        , [EC_LIKE_UNIV6] = '" &VARS("V_UNI_NM6")& "' " 
            strSql = strSql & "        , [EC_BIRTH] = '" & VARS("birth") & "' "
            strSql = strSql & "        , [EC_CONSULT_CONTENT] = '" & VARS("consult_content") & "' "
            strSql = strSql & "        , [EC_CONSULT_PLACE] = '" & VARS("consult_placet") & "' "
            strSql = strSql & "        , [EC_AGREE1_YN] = '" & VARS("agree_1") & "' "
            strSql = strSql & "        , [EC_AGREE3_YN] = '" & VARS("agree_2") & "' "
            strSql = strSql & "        , [EC_PATH] = '" & EC_PATH & "' "
            strSql = strSql & "        , [EC_REG_DT] = GETDATE() "
            
            If trim(VARS("up_apply")) <> "" Then 
                strSql = strSql & "           , [EC_APPLYNUM1] = "& VARS("up_apply") &" "
            End If        
            If trim(VARS("mid_apply")) <> "" Then 
                strSql = strSql & "           , [EC_APPLYNUM2] = "& VARS("mid_apply") &" "
            End If        
            If trim(VARS("down_apply")) <> "" Then 
                strSql = strSql & "           , [EC_APPLYNUM3] = "& VARS("down_apply") &" "
            End If         
            
            strSql = strSql & "           , [EC_LASTYEAR_UNIV] = '" & VARS("last_univ") & "' "
            strSql = strSql & " WHERE EC_TYPE = 'C' AND EC_AGREE2_YN in ('1','2') AND EC_MEM_ID = '" & gLoginMemId & "' "
        
            russelobjdb.sqlExecute(strSql)
%>
        
        
        
            <script>
                alert('수정이 완료되었습니다.');             
                self.close();
            </script>
        
<%

        elseif VARS("mode") = "cancle" then

            strSql = ""
            strSql = strSql & " UPDATE [dbo].[MR_EVT_SUSI_CONSULT2024] SET "
            strSql = strSql & " EC_AGREE2_YN = '3', EC_CANCLE_DATE = GETDATE() "
            strSql = strSql & " WHERE EC_TYPE = 'C' AND EC_AGREE2_YN = '1' AND EC_MEM_ID = '" & gLoginMemId & "' "

            russelobjdb.sqlExecute(strSql)

        %>
            <script>
                alert('상담이 취소되었습니다.');             
                self.close();
                opener.parent.location.reload();
            </script>

        <%

        End If
    ELSE

%>
        <script>
            alert('로그인 후 이용가능합니다.');             
            self.close();
            opener.parent.location.reload();
        </script>
<%
    END IF
%>



