<%
	self = LCase(Request.ServerVariables("PATH_INFO"))

	If VARS("arr_Child") <> ""_
		And (self <> "/mypage/mypage.asp" And self <> "/mypage/parents/account_list_ajax_01.asp" And self <> "/mypage/parents/account_list_ajax_02.asp") Then '자녀 선택되어 있는경우 다중학번

'			strSql = ""
'			strSql = strSql & " EXEC SP_AMS_MEMBER_SEARCH_03 "
'			strSql = strSql & " " & VARS("arr_Child")
'
'			set Rs2 = objdb.sqlQuery(strSql,2)
'
'			If not (Rs2.eof or Rs2.bof) then
'				vrs1 = Rs2.GetRows()
'				Rcount1 = ubound(vrs1,2)
'			Else
'				Rcount1 = -1
'			End If
'
'			Rs2.close
'			set Rs2 = nothing
'
'			ams_child_members_cd = ""
'
'			If Rcount1 >= 0 Then
'
'				For k1 = 0 To Rcount1
'
'					If k1 = 0 Then
'						ams_child_members_cd = vrs1(0,k1)
'					Else
'						ams_child_members_cd = ams_child_members_cd &","& vrs1(0,k1)
'					End If
'
'				Next
'
'			End If

			strSql = ""
			strSql = " EXEC SP_AMS_MEMBER_SEARCH_06 "& VARS("arr_Child")
			set Rs2 = amsobjdb.sqlQuery(strSql,2)

			If not (Rs2.eof or Rs2.bof) then
				vrs1 = Rs2.GetRows()
				Rcount1 = ubound(vrs1,2)
			Else
				Rcount1 = -1
			End If

			Rs2.close
			set Rs2 = nothing

			ams_child_members_cd = ""

			IF Rcount1 >= 0 Then
				dbTopPriorty = vrs1(1,0)
				If dbTopPriorty < 4 Then '매칭기준 3순위까지만 적용 : 제일 높은 같은 순위 회원으로
					FOR k2 = 0 to Rcount1
						dbPriorty = vrs1(1,k2)
						dbMmMemCd = vrs1(0,k2)
						If dbTopPriorty = dbPriorty Then '같은 매칭순위의 경우만 배열변수로 받는다.
							If k2 = 0 Then
								ams_child_members_cd = dbMmMemCd
							Else
								ams_child_members_cd = ams_child_members_cd &"," & dbMmMemCd
							End If
						End If
					Next
				End If
			End If


			If ValueCheck(ams_child_members_cd) = True  Then

				strSql = ""
				strSql = strSql & " SELECT GH_ACA_CD, GH_CLS_CD, DBO.UF_GET_GH_STATE_01(GH_COLE_CD,GH_MEM_CD) as GH_STATE, GH_REG_DT "
				strSql = strSql & " FROM AMS_GRP_HIS with(nolock)  "
				strSql = strSql & " WHERE GH_REFUND_CD IS NULL "
				strSql = strSql & "			AND GH_MEM_CD IN ("& ams_child_members_cd &") "
				strSql = strSql & "			AND DBO.UF_GET_GH_STATE_01(GH_COLE_CD,GH_MEM_CD) IN (11,12)  AND GH_CLS_CD IN (11,12,13,14) "
				strSql = strSql & " ORDER BY GH_STATE ASC, GH_CLS_CD ASC, GH_REG_DT DESC "'재원대기 순 / 재정_연합_단과 순으로/ 최근등록순.

				'Response.Write strsql
				'Response.end

				set Rs = amsobjDB.sqlQuery(strSql,1)
				If not (Rs.bof and Rs.eof) then
					vrs1=Rs.getrows()
					rcount1=ubound(vrs1,2)
				else
					rcount1=-1
				end if
				Rs.close
				set Rs = Nothing

				If rcount1 >= 0 Then
					AMS_ACACODE_S = ""
					For k1 = 0 To rcount1
						If k1 = 0 Then
							AMS_ACACODE_S = vrs1(0,k1)
						Else
							AMS_ACACODE_S = AMS_ACACODE_S &","& vrs1(0,k1)
						End if
					Next
				End If

			End If

			If	ValueCheck(AMS_ACACODE_S) = True Then '다중학번에 대하여 다중 학원 코드를 불러 왔기때문에 다시한번 검열한다.
				'AmsCode 함수에서는 AMS 노량진1[14] + 노량진2[41] 을 다 나오게 한다.
				AMS_ACACODE_S2 = Replace(Replace(AMS_ACACODE_S,"14","14,41"),"41","14,41")

				If VARS("mycampus") <> "" And  InStr(AMS_ACACODE_S2,AmsCode(VARS("mycampus"))) <> 0 Then
					AMS_ACACODE = AmsCode(VARS("mycampus"))
				End If
			End If


	Else '모든 자녀의 다중학번

		IF gLoginMemCode <> "" THEN
			strSql = ""
			strSql = strSql & " SELECT C.CODE, C.UNAME "
			strSql = strSql & " FROM MG_MEMBER A WITH(NOLOCK) 	 "
			strSql = strSql & "	INNER JOIN MG_MEMBER_CHILD B WITH(NOLOCK) ON B.MCODE = A.CODE	 "
			strSql = strSql & "	INNER JOIN MG_MEMBER C WITH(NOLOCK) 	ON C.CODE = B.MCCODE "
			strSql = strSql & " WHERE A.CODE = "& gLoginMemCode &" AND C.UDEL_FG <> 'Y' "
			strSql = strSql & " ORDER BY C.UNAME ASC "
		ELSE
			strSql = ""
			strSql = strSql & " SELECT * FROM MG_MEMBER WITH(NOLOCK) WHERE 1= 2 "
		END IF

		'Response.Write strSql & "<br><br>"

		set Rs = objDB.sqlQuery(strSql,1)
		If not (Rs.bof and Rs.eof) then
			vrs1=Rs.getrows()
			rcount1=ubound(vrs1,2)
		else
			rcount1=-1
		end if
		Rs.close

		If rcount1 >= 0 Then

			ams_child_members_cd = ""

			FOR k1 = 0 TO rcount1

			strSql = ""
			strSql = " EXEC SP_AMS_MEMBER_SEARCH_06 "& vrs1(0,k1)
			set Rs2 = amsobjdb.sqlQuery(strSql,2)

			If not (Rs2.eof or Rs2.bof) then
				vrs2 = Rs2.GetRows()
				Rcount2 = ubound(vrs2,2)
			Else
				Rcount2 = -1
			End If

			Rs2.close
			set Rs2 = nothing

			IF Rcount2 >= 0 Then
				dbTopPriorty = vrs2(1,0)
				If dbTopPriorty < 4 Then '매칭기준 3순위까지만 적용 : 제일 높은 같은 순위 회원으로
					FOR k2 = 0 to Rcount2
						dbPriorty = vrs2(1,k2)
						dbMmMemCd = vrs2(0,k2)
						'If dbTopPriorty = dbPriorty Then '같은 매칭순위의 경우만 배열변수로 받는다.
						If dbPriorty < 4 Then  '매칭기준 3순위까지만 적용 20121016 학생과 일치되게 처리한다/학생이 이부분이 누락되어 있었음
							If Not ValueCheck(ams_child_members_cd) Then
								ams_child_members_cd = dbMmMemCd
							Else
								ams_child_members_cd = ams_child_members_cd &"," & dbMmMemCd
							End If
						End If
					Next
				End If
			End If


			Next
		Else
			ams_child_members_cd = ""
		End if

	End If


%>