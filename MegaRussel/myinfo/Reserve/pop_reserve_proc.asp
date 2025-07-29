<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<%
If ValueCheck(gLoginOk) = False Or gLoginOk = False Then
	intMsg = 99
	response.write intMsg
	response.end
End if

TodayNow =  FormatDateTime(Now(), 2) &" "& FormatDateTime(Now(), 4) & Right(Now(), 3)

Call formFilter
Dim sKey

	Ams_Mcode = objDB.sqlResult("select Rms_Mem_Cd from Mg_Member with(nolock) where Code = '" & gLoginMemCode &"' and uKind='1' and uDel_fg='N' ")

	nAmsMemCd = ""
    nAmsMemCd = Ams_Mcode
    nAmsMemCd = CheckNumber_reset(nAmsMemCd, 0)

Dim strSql, objRs 

	If VARS("mode") = "memseat" Then '좌석 배정 

		strSql = " SELECT 'Y' "
		strSql = strSql & "FROM MG_RESERVATION_MAS RM WITH(NOLOCK)  "
		strSql = strSql & "INNER JOIN MG_RESERVATION_LIST RL WITH(NOLOCK) ON RM.IDX = RL.MIDX   "
		strSql = strSql & "WHERE RL.IDX = '"& VARS("idx") &"' "
		'strSql = strSql & "AND DATEDIFF ( mi , start_dt, getdate()) >= 0 "
		'strSql = strSql & "AND DATEDIFF ( mi , end_dt , getdate()) <= 0 "
		strSql = strSql & "AND DATEDIFF ( mi , start_dt, '"& TodayNow &"') >= 0  "
		strSql = strSql & "AND DATEDIFF ( mi , end_dt , '"& TodayNow &"') <= 0  "


		rYN = russelobjdb.sqlResult(strSql)
 
		If rYN = "Y" Then
			strSql = ""
			strSql = "Exec SP_SET_MG_RESERVATION_MEM '"& nAmsMemCd &"','"& gLoginMemName &"', '"& VARS("idx") &"','N' "
			returnval = russelobjdb.sqlResult(strSql)

			IF returnval = "Y" Then
				intMsg = 1	
			ELSE			
				intMsg = 2
			END IF
		Else
			intMsg = 3
		End if			
		


	ElseIf VARS("mode") = "chgatt" Then '출석상태 변경

		IF VARS("att") = "Y" THEN 
			VARS("att") = "N"
		ELSE		
			VARS("att") = "Y"	
		END IF		

		Call russelobjdb.sqlExecute("UPDATE MG_RESERVATION_LIST SET ATT_YN = '"& VARS("att") &"' WHERE IDX = '"& VARS("idx") &"' ")
		intMsg = 1	


	ElseIf VARS("mode") = "chguse" Then '좌석상태 변경

		IF VARS("useyn") = "Y" THEN 
			VARS("useyn") = "N"
		ELSE		
			VARS("useyn") = "Y"	
		END IF		

		Call russelobjdb.sqlExecute("UPDATE MG_RESERVATION_LIST SET USE_YN = '"& VARS("useyn") &"' WHERE IDX = '"& VARS("idx") &"' ")
		intMsg = 1	
				
	ElseIf VARS("mode") = "memseat_pop" Then '좌석 배정_팝업

		strSql = "Exec SP_SET_MG_RESERVATION_MEM '"& VARS("Memcd") &"', '"& VARS("idx") &"','"& VARS("att") &"' "
		returnval = russelobjdb.sqlResult(strSql)
		
		IF returnval = "Y" Then
			intMsg = 1	
		ELSE			
			intMsg = 2
		END IF			

	ElseIf VARS("mode") = "delseat" Then '좌석 예약 삭제

		'예약 취소시간 확인
		strSql = ""
		strSql = " SELECT DATEDIFF ( mi , getdate(), lec_dt ) AS LASTMIN  FROM MG_RESERVATION_MAS RM WITH(NOLOCK) "
		strSql = strSql & "INNER JOIN MG_RESERVATION_LIST RL WITH(NOLOCK) ON RM.IDX = RL.MIDX  "
		strSql = strSql & "WHERE RL.IDX = '"& VARS("idx") &"' "

		LASTMIN = russelobjdb.sqlResult(strSql)

		IF LASTMIN > 5 THEN
		
			'strSql = ""
			'strSql = " UPDATE MG_RESERVATION_LIST SET ATT_YN = 'N', ADMIN_YN = 'N', MEM_CODE = NULL, MEM_NAME = NULL, REG_DT = NULL WHERE IDX = '"& VARS("idx") &"' AND MEM_CODE = '"& nAmsMemCd &"' "

			'임시테이블 삭제
			strSql = ""
			strSql = " DELETE MG_RESERVATION_SEAT_TMP WHERE IDX = '"& VARS("idx") &"' "
			Call russelobjdb.sqlExecute(strSql)

			'예약테이블 삭제
			strSql = ""
			strSql = " DELETE MG_RESERVATION_SEAT WHERE IDX = '"& VARS("idx") &"' AND MEM_CODE = '"& nAmsMemCd &"' "
			Call russelobjdb.sqlExecute(strSql)


			'로그 남기기
			strSql = ""
			strSql = strSql & " INSERT INTO [dbo].[MG_RESERVATION_LOG] ([MIDX],[Mem_Code],[Reserve_YN],[Admin_YN],[Reg_dt]) "
			strSql = strSql & " SELECT '"& VARS("idx") &"' ,'"& nAmsMemCd &"' ,'N','N' ,GETDATE() "					
			Call russelobjdb.sqlExecute(strSql)
        
			intMsg = 1	
		ELSE 
			intMsg = 2
		END IF

	ElseIf VARS("mode") = "relist" Then '수강생 명단 동기화

		strSql = "SELECT LEC_CODE FROM MG_RESERVATION_LEC WHERE MIDX = '"& VARS("Midx") &"' "

		Set objRs = russelobjdb.sqlQuery(strSql,3)
		Dim arrList : arrList = Null
		If Not (objRs.EoF And objRs.BoF) Then
		arrList = objRs.getrows
		End If
		objRs.close
		Set objRs = Nothing

		If IsNull(arrList) = False Then
			For nLoopCnt = 0 To UBound(arrList,2)

				LEC_CODE = arrList(0,nLoopCnt)

				If LEC_CODE <> "" Then		

					'기존 출석부 초기화
					Call russelobjdb.sqlExecute("DELETE MG_RESERVATION_MEM WHERE LEC_CODE = '"& LEC_CODE &"' ")				

					'출석부 생성
					Sql = ""
					Sql = Sql & "     SELECT GH_COLE_CD,MM.MM_MEM_NM,MM.MM_MEM_CD "
					Sql = Sql & "     FROM AMS_GRP_HIS  GH with(nolock) "
					Sql = Sql & "     INNER JOIN AMS_MEM_MAS MM with(nolock) ON MM.MM_MEM_CD=GH.GH_MEM_CD "
					Sql = Sql & "     INNER JOIN AMS_SALE_LEC SL with(nolock) ON SL.SL_LEC_CD=GH.GH_LEC_CD AND SL.SL_SALE_CD=GH.GH_SALE_CD "
					Sql = Sql & "     WHERE GH.GH_COLE_CD= '"& LEC_CODE &"'"
					Sql = Sql & " 	  AND SL_SALE_ST = 11 "

					Set rs = amsobjdb.sqlQuery(Sql,3)
						
					If rs.EOF Then
						intMsg = 2
					Else
						Do Until rs.EOF
							GH_COLE_CD = trim(rs("GH_COLE_CD"))
							MM_MEM_NM = trim(rs("MM_MEM_NM"))
							MM_MEM_CD = trim(rs("MM_MEM_CD"))

							iSql = ""			
							iSql = iSql &" INSERT INTO [dbo].[MG_RESERVATION_MEM]  ([Lec_Code],[Mem_Code],[Mem_Name]) "
							iSql = iSql &" SELECT '" & GH_COLE_CD & "','" & MM_MEM_CD & "','"& MM_MEM_NM &"' "
							Call russelobjdb.sqlExecute(iSql)
							rs.MoveNext
						Loop
						
						rs.close
						Set rs = Nothing

						intMsg = 1						
					End If
				End if
			Next

			'출석부에 없는 학생 예약 초기화
			rSql = ""
			rSql = " UPDATE MG_RESERVATION_LIST SET ATT_YN = 'N', ADMIN_YN = 'N', MEM_CODE = NULL, REG_DT = NULL WHERE MIDX = '"& VARS("Midx") &"' "
			rSql = rSql & " AND Mem_Code Not In (SELECT RM.Mem_Code FROM MG_RESERVATION_MEM RM WITH(NOLOCK) WHERE RM.LEC_CODE IN ((SELECT LEC_CODE FROM MG_RESERVATION_LEC WHERE MIDX = '"& VARS("Midx") &"')) ) "
			Call russelobjdb.sqlExecute(rSql)	
		End If

	ElseIf VARS("mode") = "saveinfo" Then '공지사항 저장

		Call russelobjdb.sqlExecute("UPDATE MG_RESERVATION_MAS SET LEC_INFO = '"&  unescape(VARS("lecinfo")) &"' WHERE IDX = '"& VARS("Midx") &"' ")
		intMsg = 1	

	Else
		

	End If

	Response.Write intMsg

%>
