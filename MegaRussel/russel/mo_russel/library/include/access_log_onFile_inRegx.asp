
<%
'=======================================================================
'업 무 명  : 학원통합프로그램-
'모듈기능 : 캠퍼스 등록시 첨부 파일 있는 페이지에 대한 로그 [관리자용/고객용]
'파 일 명  : access_log_onFile_inRegx.asp
'작성일자 : 2012-12-14
'작 성 자  : YSM
'=======================================================================

	Sub LogOnRegX_Admin(REGX_GB,FILE_INFO) '관리자용

		Dim gmAcCurPath, gmAcClientIP, gmAcQueryInfo, gmAcUserID, gmAcAcaCD, gmstrSql

		' 현재 페이지 정보
		gmAcCurPath		= Request.ServerVariables("path_info")
		gmAcClientIP		= Request.ServerVariables("remote_addr")
		gmAcQueryInfo	= Request.ServerVariables("query_string")
		gmAcCurPath		= LCASE( TRIM(gmAcCurPath) )


		'▒▒▒▒▒▒▒ 로그인정보 ▒▒▒▒▒▒▒▒▒▒▒▒▒
		gmAcUserID		= Request.Cookies("_MANAGER_ID")
		gmAcAcaCD		= Request.Cookies("_MANAGER_CD")
		'▒▒▒▒▒▒▒ 로그인정보▒▒▒▒▒▒▒▒▒▒▒▒▒

		gmstrSql = ""
		gmstrSql = gmstrSql & " Exec dbo.Msp_Set_Access_Log_In_RegxPage '"& gmAcAcaCD &"' , "
		gmstrSql = gmstrSql & "	'" & gmAcUserID & "', "
		gmstrSql = gmstrSql & "	'" & REGX_GB & "', "
		gmstrSql = gmstrSql & "	'" & gmAcCurPath & "', "
		gmstrSql = gmstrSql & "	'" & gmAcQueryInfo & "', "
		gmstrSql = gmstrSql & "	'" & FILE_INFO & "', "
		gmstrSql = gmstrSql & "	'" & gmAcClientIP & "' "

        'response.write gmstrSql

		Call russelobjdb.sqlExecute(gmstrSql)

	End Sub

	Sub LogOnRegX_Client(REGX_GB,FILE_INFO) '고객용

		Dim gmAcCurPath, gmAcClientIP, gmAcQueryInfo, gmAcUserID, gmAcAcaCD, gmstrSql

		' 현재 페이지 정보
		gmAcCurPath		= Request.ServerVariables("path_info")
		gmAcClientIP		= Request.ServerVariables("remote_addr")
		gmAcQueryInfo	= Request.ServerVariables("query_string")
		gmAcCurPath		= LCASE( TRIM(gmAcCurPath) )


		'▒▒▒▒▒▒▒ 로그인정보 ▒▒▒▒▒▒▒▒▒▒▒▒▒
		gmAcUserID		= gLoginMemId
		gmAcAcaCD		= GetCampusVarsSiteMGC("_CAMPUS_CODE_")
		'▒▒▒▒▒▒▒ 로그인정보▒▒▒▒▒▒▒▒▒▒▒▒▒

		gmstrSql = ""
		gmstrSql = gmstrSql & " Exec dbo.Msp_Set_Access_Log_In_RegxPage '"& gmAcAcaCD &"' , "
		gmstrSql = gmstrSql & "	'" & gmAcUserID & "', "
		gmstrSql = gmstrSql & "	'" & REGX_GB & "', "
		gmstrSql = gmstrSql & "	'" & gmAcCurPath & "', "
		gmstrSql = gmstrSql & "	'" & gmAcQueryInfo & "', "
		gmstrSql = gmstrSql & "	'" & FILE_INFO & "', "
		gmstrSql = gmstrSql & "	'" & gmAcClientIP & "' "

		Call russelobjdb.sqlExecute(gmstrSql)

	End Sub

%>
