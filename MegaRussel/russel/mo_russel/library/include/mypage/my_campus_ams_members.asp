<%
			If ValueCheck(gLoginMemCode) Then

				strSql = ""
				strSql = " EXEC SP_AMS_MEMBER_SEARCH_06 "& gLoginMemCode

				set Rs2 = amsobjdb.sqlQuery(strSql,2)

				If not (Rs2.eof or Rs2.bof) then
					vrs1 = Rs2.GetRows()
					Rcount1 = ubound(vrs1,2)
				Else
					Rcount1 = -1
				End If

				Rs2.close
				set Rs2 = nothing

				IF Rcount1 >= 0 Then
					dbTopPriorty = vrs1(1,0)
					If dbTopPriorty < 4 Then '매칭기준 3순위까지만 적용 : 제일 높은 같은 순위 회원으로
						FOR k2 = 0 to Rcount1
							dbPriorty = vrs1(1,k2)
							dbMmMemCd = vrs1(0,k2)
							If dbPriorty < 4 Then  '매칭기준 3순위까지만 적용
								If k2 = 0 Then
									ams_members_cd = dbMmMemCd
								Else
									ams_members_cd = ams_members_cd &"," & dbMmMemCd
								End If
							End If
						Next
					End If
				End If

			End If


			If ValueCheck(ams_members_cd) = True  Then

				strSql = ""
				strSql = strSql & " SELECT GH_ACA_CD, GH_CLS_CD, DBO.UF_GET_GH_STATE_01(GH_COLE_CD,GH_MEM_CD) as GH_STATE, GH_REG_DT "
				strSql = strSql & " FROM AMS_GRP_HIS with(nolock)  "
				strSql = strSql & " WHERE GH_REFUND_CD IS NULL "
				strSql = strSql & "			AND GH_MEM_CD IN ("& ams_members_cd &") "
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
%>