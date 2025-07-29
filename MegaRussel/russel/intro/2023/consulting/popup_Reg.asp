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

    csat_file = vars("csat_file")
    If len(csat_file) > 0 Then
	    fileName = ""
	    fileExt = ""
	    fileLen = ""
	
	    fileName = left(csat_file, InStrRev(csat_file,".")-1)'한글은 css 백그라운드 오류나서	
	    fileExt = LCase(Mid(csat_file, InStrRev(csat_file,".")+1)) ' 확장자(소문자)
	
	    If fileExt <> "jpg" And fileExt <> "png" AND fileExt <> "pdf" And fileExt <> "bmp" And fileExt <> "zip" And fileExt <> "PDF" And fileExt <> "JPG" And fileExt <> "PNG" And fileExt <> "BMP" And fileExt <> "ZIP" Then			'이미지 파일이 아니면...
		    Call AlertAndPageMove("jpg, png, pdf, bmp, ZIP, PDF 파일로 첨부해 주시기 바랍니다.", "back", "" )
	    end if

	    csat_fileFullPath = SiteGalaxyUpload(vars("csat_file"), "/russel/Data/consult/")
	    
        If Err.number <> 0 Then
		    Call AlertAndPageMove("파일 업로드 처리중 오류가 발생하였습니다. 관리자에게 문의하세요.", "", "" )
	    End if
    End If

    susi_file = vars("susi_file")
    If len(susi_file) > 0 Then
	    fileName = ""
	    fileExt = ""
	    fileLen = ""
	
	    fileName = left(susi_file, InStrRev(susi_file,".")-1)'한글은 css 백그라운드 오류나서	
	    fileExt = LCase(Mid(susi_file, InStrRev(susi_file,".")+1)) ' 확장자(소문자)
	
	    If fileExt <> "jpg" And fileExt <> "png" AND fileExt <> "pdf" And fileExt <> "bmp" And fileExt <> "zip" And fileExt <> "PDF" And fileExt <> "JPG" And fileExt <> "PNG" And fileExt <> "BMP" And fileExt <> "ZIP" Then		'이미지 파일이 아니면...
		    Call AlertAndPageMove("jpg, png, pdf, bmp, ZIP, PDF 파일로 첨부해 주시기 바랍니다.", "back", "" )
	    end if
	    susi_fileFullPath = SiteGalaxyUpload(vars("susi_file"), "/russel/Data/consult/")
	    If Err.number <> 0 Then
		    Call AlertAndPageMove("파일 업로드 처리중 오류가 발생하였습니다. 관리자에게 문의하세요.", "", "" )
	    End if
    End If

    mobileYN = fncChkMobile()
    If mobileYN = "Y" Then
        EC_PATH = "MO"
    Else
        EC_PATH = "PC"
    End If
    
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
        strSql = strSql & " FROM MR_EVT_CONSULT2020 WITH(NOLOCK) "
        strSql = strSql & " WHERE EC_TYPE = 'C' "
		strSql = strSql & " AND EC_AGREE2_YN in ('1','2')  " '예약 대기/완료상태
	    strSql = strSql &"  AND EC_MEM_ID = '"&gLoginMemId&"'"

        evtRegCnt = CInt(russelobjDb.sqlResult(strSql))

        VARS("consult_content") = Replace(VARS("consult_content"), "'", """")

            If evtRegCnt = 0 Then
              
                strSql = ""
                strSql = strSql & " INSERT INTO [dbo].[MR_EVT_CONSULT2020] "
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
                strSql = strSql & "           , [EC_LOW_UNIV] "
                strSql = strSql & "           , [EC_LIKE_LINE] "
                strSql = strSql & "           , [EC_POS_REGION] "
                strSql = strSql & "           , [EC_USE_SITE] "
                strSql = strSql & "           , [EC_CONSULT_CONTENT] "
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
                strSql = strSql & "     VALUES "
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
                strSql = strSql & "           , '" & VARS("email_no2") & "' "
                strSql = strSql & "           , '" & VARS("email2_no2") & "' "
                strSql = strSql & "           , '" & VARS("birth") & "' "
                strSql = strSql & "           , '" & csat_fileFullPath & "' "
                strSql = strSql & "           , '" & susi_fileFullPath & "' "
                strSql = strSql & "           , '" & VARS("consult_place") & "' "
                strSql = strSql & "           , '" & VARS("consult_content") & "' "
                strSql = strSql & "           , '" & VARS("agree_1") & "' "
                If trim(VARS("mem_status_apply")) <> "" Then 
                strSql = strSql & "           , '1' " '예약완료
                end if

                If trim(VARS("mem_status_relay")) <> "" Then 
                strSql = strSql & "           , '2' " '대기완료
                end if
                
                strSql = strSql & "           , '" & EC_AGREE3_YN & "' "
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
                    alert('완료 되었습니다.');             
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
            strSql = strSql & " UPDATE [dbo].[MR_EVT_CONSULT2020] SET "
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
            strSql = strSql & "        , [EC_LIKE_UNIV4] = '" &VARS("email_no2")& "' "
            strSql = strSql & "        , [EC_LIKE_UNIV5] = '" &VARS("email2_no2")& "' " 
            strSql = strSql & "        , [EC_LOW_UNIV] = '" & VARS("birth") & "' "
            if trim(VARS("csat_change_num")) = "1" then
            strSql = strSql & "        , [EC_LIKE_LINE] = '" & csat_fileFullPath & "' "
            end if
            if trim(VARS("susi_change_num")) = "1" or trim(VARS("susi_change_num")) = "2" then
            strSql = strSql & "        , [EC_POS_REGION] = '" & susi_fileFullPath & "' "
            end if
            strSql = strSql & "        , [EC_CONSULT_CONTENT] = '" & VARS("consult_content") & "' "
            strSql = strSql & "        , [EC_AGREE1_YN] = '" & VARS("agree_1") & "' "
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
            strSql = strSql & " UPDATE [dbo].[MR_EVT_CONSULT2020] SET "
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



