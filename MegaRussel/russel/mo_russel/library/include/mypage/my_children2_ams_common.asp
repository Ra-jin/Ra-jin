<%
	intClassCode = ""
	intClassCode = VARS("intClassCode")

	If intClassCode = "" THEN intClassCode = 11

	ACACODE = ""
	ACACODE = VARS("mycampus")

	Ams_CMcode = ""



	If VARS("arr_Child") <> "" Then
		' ASM 학번이 없는경우 나의 결제내역에서 재정/연합 결제를 위해 AMS 학번을 가져와야 한다.
		If ValueCheck(Ams_CMcode) = False Then
			strSql = ""
			strSql = " EXEC SP_AMS_MEMBER_SEARCH_06 "& VARS("arr_Child")

			set Rs = amsobjdb.sqlQuery(strSql,2)
			If not (Rs.eof or Rs.bof) then
				vrs1 = Rs.GetRows()
				Rcount1 = ubound(vrs1,2)
			Else
				Rcount1 = -1
			End If
			Rs.close
			set Rs = Nothing
			IF Rcount1 >= 0 Then
				dbTopPriorty = vrs1(1,0)
				If dbTopPriorty < 4 Then '매칭기준 3순위까지만 적용 : 제일 높은 같은 순위 회원으로
					Ams_CMcode = vrs1(0,0) '3순위내에 제일 위에 나온 학번
				End If
			End If

			Ams_CMcode_Null = "Y" '회원인증 학번이 캠퍼스에 입력 안되어 있는경우.
		End If

	Else

		strSql = ""
		strSql = strSql &" SELECT TOP 1 C.CODE "
		strSql = strSql &" FROM [CAMPUS_DEV].[megastudy].[dbo].MG_MEMBER A WITH(NOLOCK) "
		strSql = strSql &" INNER JOIN [CAMPUS_DEV].[megastudy].[dbo].MG_MEMBER_CHILD B WITH(NOLOCK) ON B.MCODE = A.CODE "
		strSql = strSql &" INNER JOIN [CAMPUS_DEV].[megastudy].[dbo].MG_MEMBER C WITH(NOLOCK) ON C.CODE = B.MCCODE "
		strSql = strSql &" INNER JOIN ( "
		strSql = strSql &" 				SELECT DISTINCT GH_MEM_CD, GH_ACA_CD, GH_CLS_CD "
		strSql = strSql &" 				FROM AMS_GRP_HIS WITH(NOLOCK) "
		strSql = strSql & "					LEFT JOIN AMS_COU_LEC with(nolock) ON CL_COLE_CD = GH_COLE_CD AND CL_COU_CD NOT IN (1000,1001,1002) "
		strSql = strSql &" 				WHERE GH_BE_CD =11 AND CONVERT(VARCHAR(10),GETDATE(),112) <= CONVERT(VARCHAR(10), GH_REC_EDT,112) "
		strSql = strSql &" 					AND [DBO].[UF_GET_GH_STATE_01](GH_COLE_CD,GH_MEM_CD) IN (11,12) "
		strSql = strSql &"						AND GH_CLS_CD IN (11,12,13,14) "
		strSql = strSql &" 				) D "
		strSql = strSql &" ON D.GH_MEM_CD = C.Rms_Mem_Cd "
		strSql = strSql &" WHERE A.CODE = "& gLoginMemCode &" AND C.Rms_Mem_Cd <> '' and C.uDel_fg='N' "
		strSql = strSql &" ORDER BY C.UNAME ASC "
		'Response.Write strSql
		'Response.end

		arr_Child2 = amsobjdb.sqlResult(strSql)
		VARS("arr_Child") = arr_Child2
		Ams_CMcode = objDB.sqlResult("select ISNULL(Rms_Mem_Cd, 0) AS Rms_Mem_Cd from Mg_Member where Code = '" & arr_Child2 &"' and uDel_fg='N' ")
	End if


	If (Trim(ACACODE)  = "" OR Trim(AMS_ACACODE) = "") AND Trim(Ams_CMcode) <> "" Then

		strSql = ""
		strSql = strSql & " SELECT XX.GH_ACA_CD, XX.GH_CLS_CD, XX.GH_STATE "
		strSql = strSql & "		, (CASE XX.GH_CLS_CD WHEN 11 THEN '재수정규반' WHEN 12 THEN '연합반' WHEN 13 THEN CASE WHEN XX.LM_DTL_CD = 11 THEN '재수정규반' ELSE '단과반' END ELSE '' END) "
		strSql = strSql & "		, (CASE XX.GH_STATE WHEN 11 THEN '재원' WHEN 12 THEN '재원대기' WHEN 31 THEN '퇴원' WHEN 24 THEN '휴원' WHEN 21 THEN '휴원' ELSE '' END) "
		strSql = strSql & "		, (SELECT AM_ACA_ABBR FROM AMS_ACA_MAS (NOLOCK) WHERE AM_ACA_CD = XX.GH_ACA_CD) "
		strSql = strSql & " FROM( "
		strSql = strSql & "	SELECT LM_CLS_CD, LM_DTL_CD,GH_COLE_CD, GH_ACA_CD, GH_CLS_CD,GH_LEC_CD, "
		strSql = strSql & "		[DBO].[UF_GET_GH_STATE_01](GH_COLE_CD,GH_MEM_CD) AS GH_STATE, GH_REG_DT "
		strSql = strSql & "	FROM AMS_GRP_HIS  WITH(NOLOCK) "
		strSql = strSql & "		LEFT JOIN AMS_COU_LEC with(nolock) ON CL_COLE_CD = GH_COLE_CD AND CL_COU_CD NOT IN (1000,1001,1002) "
		strSql = strSql & "		LEFT JOIN AMS_LEC_MAS (NOLOCK) ON CL_LEC_CD = LM_LEC_CD "
		strSql = strSql & "	WHERE GH_REFUND_CD IS NULL "
		strSql = strSql &" 					AND [DBO].[UF_GET_GH_STATE_01](GH_COLE_CD,GH_MEM_CD) IN (11,12) "
		strSql = strSql & "			AND GH_MEM_CD = "& Ams_CMcode &""
		strSql = strSql & "	) AS XX "
		strSql = strSql & " WHERE XX.GH_STATE IN (11,12,31,24,21)  AND XX.GH_CLS_CD IN (11,12,13,14) "
		strSql = strSql & " ORDER BY XX.GH_STATE ASC, LM_DTL_CD ASC, XX.GH_REG_DT DESC  " '재원대기 순 / 재정_연합_단과 순으로/ 최근등록순.

		set Rs = amsobjDB.sqlQuery(strSql,1)
		If not (Rs.bof and Rs.eof) then
			vrs1=Rs.getrows()
			rcount1=ubound(vrs1,2)
		else
			rcount1=-1
		end if
		Rs.close
		set Rs = Nothing

		AMS_ACACODE = ""
		G_AMS_CLS_CD = ""
		G_AMS_STATE = ""

		G_AMS_CLS_NM = ""
		G_AMS_STATE_NM = ""

		G_AMS_ACA_NM = ""

		AMS_ACACODE_S = ""

		If rcount1 >= 0 Then
			AMS_ACACODE = vrs1(0,0)
			G_AMS_CLS_CD = vrs1(1,0)
			G_AMS_STATE = vrs1(2,0)
			G_AMS_CLS_NM = vrs1(3,0)
			G_AMS_STATE_NM = vrs1(4,0)
			G_AMS_ACA_NM = vrs1(5,0)

			AMS_ACACODE_S = ""
			For k1 = 0 To rcount1
				If k1 = 0 Then
					AMS_ACACODE_S = vrs1(0,k1)
				Else
					AMS_ACACODE_S = AMS_ACACODE_S &","& vrs1(0,k1)
				End if
			Next
		End If

		If ValueCheck(ACACODE) = False Then '값이 없으면
			ACACODE = AmsDCode(AMS_ACACODE)
		End If
	End If

	jaejung_count = 0
	yonhab_count = 0
	danka_count = 0



	If Ams_CMcode <> "" and AMS_ACACODE <> "" Then ' AMS 재정 수강 이력이 있는지 조회

		' 10월과정 완료생여부체크 //
		nCourseTargetYear = Year(now)
		If Month(now) < 9 Then
			nCourseTargetYear = nCourseTargetYear -1
		End If
		strSql = ""
		strSql = strSql & " SELECT TOP 1 GH_ACA_CD "
		strSql = strSql & " FROM [CAMPUS_DEV].[megastudy].[dbo].[MG_MEMBER]  with(nolock) "
		strSql = strSql & " 	INNER JOIN AMS_GRP_HIS with(nolock) ON Rms_Mem_Cd = GH_MEM_CD "
		strSql = strSql & " 	INNER JOIN AMS_COU_LEC with(nolock) ON CL_COLE_CD = GH_COLE_CD "
		strSql = strSql & " 	INNER JOIN AMS_COURSE_MAS with(nolock) ON CL_COU_CD = CM_COURSE_CD "
		strSql = strSql & " 	INNER JOIN AMS_COURSE_SUB with(nolock) ON CL_SUB_CD = CS_SUB_CD "
		strSql = strSql & " 	INNER JOIN AMS_LEC_MAS (NOLOCK) ON CL_LEC_CD = LM_LEC_CD "
		strSql = strSql & " WHERE GH_MEM_CD = "& Ams_CMcode
		strSql = strSql & " 	AND CM_COURSE_NM='10월과정' "
		strSql = strSql & " 	AND YEAR(CS_CO_SDT)="&nCourseTargetYear
		strSql = strSql & " 	AND GH_BE_CD =11 "
		strSql = strSql & " 	AND GH_REFUND_CD IS NULL "
		strSql = strSql & "		AND LM_CLS_CD = 11 "
		dbCurCourseAcaCd = amsobjdb.sqlResult(strSql)
		' // 10월과정 완료생여부체크

		strSql = ""
		strSql = strSql & " SELECT COUNT(*) "
		strSql = strSql & " FROM AMS_GRP_HIS A WITH(NOLOCK) "
		strSql = strSql & " INNER JOIN AMS_LEC_MAS WITH(NOLOCK) ON LM_LEC_CD = GH_LEC_CD "
		strSql = strSql & " WHERE CONVERT(DATETIME, CONVERT(VARCHAR(10), GETDATE(), 120)) BETWEEN A.GH_REC_SDT AND A.GH_REC_EDT "
		strSql = strSql & "	AND A.GH_COLE_CD > 0 AND A.GH_MEM_CD ="& Ams_CMcode
		strSql = strSql & "	AND GH_ACA_CD in ("& AMS_ACACODE_S &")"
		strSql = strSql & "	AND A.GH_BE_CD = 11 AND GH_REFUND_CD IS NULL "
		strSql = strSql & "	AND DBO.UF_GET_GH_STATE_01(GH_COLE_CD,GH_MEM_CD) In (11,12,88) "
		strSql = strSql & "	And LM_DTL_CD = 11 "


		jaejung_count = amsobjDB.sqlResult(strSql) '초기 재정 카운트


		strSql = ""
		strSql = strSql & " SELECT COUNT(*) "
		strSql = strSql & " FROM AMS_GRP_HIS A WITH(NOLOCK) "
		strSql = strSql & " INNER JOIN AMS_LEC_MAS WITH(NOLOCK) ON LM_LEC_CD = GH_LEC_CD "
		strSql = strSql & " WHERE CONVERT(DATETIME, CONVERT(VARCHAR(10), GETDATE(), 120)) BETWEEN A.GH_REC_SDT AND A.GH_REC_EDT "
		strSql = strSql & "	AND A.GH_COLE_CD > 0 AND A.GH_MEM_CD ="& Ams_CMcode
		strSql = strSql & "	AND GH_ACA_CD in ("& AMS_ACACODE_S &")"
		strSql = strSql & "	AND A.GH_BE_CD = 11 AND GH_REFUND_CD IS NULL "
		strSql = strSql & "	AND DBO.UF_GET_GH_STATE_01(GH_COLE_CD,GH_MEM_CD) In (11,12,88) "
		strSql = strSql & "	And LM_DTL_CD = 12 "

		yonhab_count = amsobjDB.sqlResult(strSql) '초기 연합 카운트


		strSql = ""
		strSql = strSql & " SELECT COUNT(*) "
		strSql = strSql & " FROM AMS_GRP_HIS A WITH(NOLOCK) "
		strSql = strSql & " INNER JOIN AMS_LEC_MAS WITH(NOLOCK) ON LM_LEC_CD = GH_LEC_CD "
		strSql = strSql & " WHERE CONVERT(DATETIME, CONVERT(VARCHAR(10), GETDATE(), 120)) BETWEEN A.GH_REC_SDT AND A.GH_REC_EDT "
		strSql = strSql & "	AND A.GH_COLE_CD > 0 AND A.GH_MEM_CD ="& Ams_CMcode
		strSql = strSql & "	AND GH_ACA_CD in ("& AMS_ACACODE_S &")"
		strSql = strSql & "	AND A.GH_BE_CD = 11 AND GH_REFUND_CD IS NULL "
		strSql = strSql & "	AND DBO.UF_GET_GH_STATE_01(GH_COLE_CD,GH_MEM_CD) In (11,12,88) "
		strSql = strSql & "	And LM_CLS_CD = 13 And LM_DTL_CD = 13 "

		danka_count = amsobjDB.sqlResult(strSql) '초기 단과 카운트 _ 2013-02-20

		'노량진 일때는 캠퍼스 노량진은 AMS 노량진1[14] + 노량진2[41] 이므로
		If AMS_ACACODE = "14" Or AMS_ACACODE = "41" Then
			AMS_ACACODE = "14,41"
		End If

		'셀렉트 박스에서 선택 값이 있는경우.
		'AmsCode 함수에서는 AMS 노량진1[14] + 노량진2[41] 을 다 나오게 한다.
		AMS_ACACODE_S2 = Replace(Replace(AMS_ACACODE_S,"14","14,41"),"41","14,41")

		If VARS("mycampus") <> "" And  InStr(AMS_ACACODE_S2,AmsCode(VARS("mycampus"))) <> 0 Then
			AMS_ACACODE = AmsCode(VARS("mycampus"))
		End If

		' 디폴트 반이 아닌 다중데이터에 의한 선택이 있는경우
		strSql = " SELECT	 TOP 1 LM_DTL_CD "
		strSql = strSql & " FROM AMS_GRP_HIS A WITH(NOLOCK) "
		strSql = strSql & " LEFT JOIN AMS_COU_LEC with(nolock) ON CL_COLE_CD = GH_COLE_CD AND CL_COU_CD NOT IN (1000,1001,1002) "
		strSql = strSql & " INNER JOIN AMS_LEC_MAS WITH(NOLOCK) ON LM_LEC_CD = GH_LEC_CD "
		strSql = strSql & " WHERE CONVERT(DATETIME, CONVERT(VARCHAR(10), GETDATE(), 120)) BETWEEN A.GH_REC_SDT AND A.GH_REC_EDT "
		strSql = strSql & "	AND A.GH_COLE_CD > 0 AND A.GH_MEM_CD ="& Ams_CMcode
		strSql = strSql & "	AND GH_ACA_CD in ("& AMS_ACACODE &")"
		strSql = strSql & "	AND A.GH_BE_CD = 11 AND GH_REFUND_CD IS NULL "
		strSql = strSql & "	AND DBO.UF_GET_GH_STATE_01(GH_COLE_CD,GH_MEM_CD) In (11,12,88) "
		strSql = strSql & " ORDER BY LM_DTL_CD ASC "
		'Response.Write "<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>"
		'Response.Write strSql & "<BR>"

		If VARS("mycampus") <> "" Then '받아온 캠퍼스 코드가 있을경우.
			VARS("intClassCode") = amsobjdb.sqlResult(strSql)

			If VARS("intClassCode") = "11" Then
				jaejung_count = 1
				yonhab_count = 0
				danka_count = 0
			ElseIf VARS("intClassCode") = "12" Then
				jaejung_count = 0
				yonhab_count = 1
				danka_count = 0
			ElseIf VARS("intClassCode") = "13" Then
				jaejung_count = 0
				yonhab_count = 0
				danka_count = 1
			Else
				jaejung_count = 0
				yonhab_count = 0
				danka_count = 0
			End If
		End If
		'Response.Write jaejung_count & "<BR>"



		'1. 특강정보 유무 체크
		Ams_Slec_cnt = 0
		If jaejung_count > 0 Or yonhab_count > 0 Then

			strSql = ""
			strSql = strSql & " 	SELECT  COUNT(LM_LEC_CD) AS CNT "
			strSql = strSql & " 	FROM AMS_LEC_MAS LM "
			strSql = strSql & " 		INNER JOIN AMS_COU_LEC CLEC (NOLOCK) ON CLEC.CL_ACA_CD=LM.LM_ACA_CD AND CLEC.CL_LEC_CD=LM.LM_LEC_CD "
			strSql = strSql & " 		INNER JOIN AMS_ACA_MAS LMAS (NOLOCK) ON LMAS.AM_ACA_CD=LM.LM_ACA_CD "
			'	1-1) 강좌 해당 강좌별 온라인 인원수.
			strSql = strSql & "		LEFT JOIN ( "
			strSql = strSql & "				SELECT COUNT(*) AS DanCNT, GH_LEC_CD "
			strSql = strSql & "				FROM AMS_GRP_HIS  (nolock) "
			strSql = strSql & "					LEFT JOIN AMS_SALE_LEC (nolock) ON GH_SALE_CD = SL_SALE_CD "
			strSql = strSql & "				WHERE GH_BE_CD  = 11 AND GH_REFUND_CD IS NULL AND GH_CLS_CD = 11 AND SL_SALE_ST = 11 AND SL_ON_YN = 'Y' "
			strSql = strSql & "				GROUP BY GH_LEC_CD "
			strSql = strSql & "			) AS AGH2 "
			strSql = strSql & "		ON AGH2.GH_LEC_CD = LM.LM_LEC_CD "
			strSql = strSql & " 	WHERE LM.LM_CLS_CD='13' "
			strSql = strSql & " 		AND LMAS.AM_ACA_CD IN ("& AMS_ACACODE &") "
			If jaejung_count > 0 Then '	1-2-1) 재정 특강 카운트가 있으면 조회
			strSql = strSql & " 		AND LM.LM_DTL_CD= 11 "
			ElseIf  yonhab_count > 0 Then '	1-2-2) 연합 특강 카운트가 있으면 조회
			strSql = strSql & " 		AND LM.LM_DTL_CD= 12 "
			End If
			'	1-3) 판매상태
			strSql = strSql & " 		And CL_ONL_STAT = 'Y' "
			strSql = strSql & " 		AND ( DATEDIFF(DAY, GETDATE(), CLEC.CL_ONL_SDT) <= 0 AND DATEDIFF(DAY, GETDATE(), CLEC.CL_ONL_EDT) >= 0)" '온라인 접수 시기
			strSql = strSql & "		AND (CLEC.CL_MEMON_NO - ISNULL(AGH2.DanCNT,0) > 0)  " ' 인원 초과 체크

			Ams_Slec_cnt = amsobjdb.sqlResult(strSql) '특강 개수

			'===========================================
			'재정, 연합 재원생인 경우 해당 재원중인 강좌의 과정코드 서브를 구함 [2013-10-23]
			'용도 : 특강 강좌 있을때 해당 과정만 보여주기 [YSM]
			'===========================================
			strSql = ""
			strSql = strSql & " SELECT CL_SUB_CD "
			strSql = strSql & " FROM AMS_COU_LEC WITH(NOLOCK) "
			strSql = strSql & "  INNER JOIN AMS_GRP_HIS WITH(NOLOCK) ON GH_COLE_CD = CL_COLE_CD "
			strSql = strSql & "  INNER JOIN AMS_LEC_MAS WITH(NOLOCK) ON LM_LEC_CD = GH_LEC_CD "
			strSql = strSql & " WHERE DBO.UF_GET_GH_STATE_01(GH_COLE_CD,GH_MEM_CD) IN (11,12,88) "
			strSql = strSql & "  AND GH_MEM_CD = "& Ams_CMcode
			strSql = strSql & "  AND LM_CLS_CD IN (11,12) "

			Ams_course_sub_cd = amsobjdb.sqlResult(strSql) '과정 코드 서브

		End If



	End If

	'자녀리스트
	arrChildren = Null
	nChildrenTot = 0
	gSelectedChildMemCode = 0
	gSelectedChildMemName = ""
	gSelectedChildAmsMemCd = 0

	strSql = ""
	strSql = strSql & " SELECT b.code, b.uName, ISNULL(b.Rms_Mem_Cd, 0) AS Rms_Mem_Cd "
	strSql = strSql & " FROM MG_Member_Child a (NOLOCK) "
	strSql = strSql & "		INNER JOIN MG_Member b (NOLOCK) ON b.code = a.MCCode "
	strSql = strSql & " WHERE b.uDel_fg <> 'Y' AND a.MCode = "&gLoginMemCode
	strSql = strSql & " ORDER BY uName "
	Set objRs = objDb.sqlQuery(strSql, 3)
	If Not (objRs.EoF And objRs.BoF) Then
		arrChildren = objRs.getrows
		nChildrenTot = UBound(arrChildren,2)+1

		For nLoopCnt = 0 To UBound(arrChildren,2)
			If Trim(VARS("arr_Child")) = Trim(arrChildren(0,nLoopCnt)) Then
				gSelectedChildMemCode = arrChildren(0,nLoopCnt)
				gSelectedChildMemName = arrChildren(1,nLoopCnt)
				gSelectedChildAmsMemCd = arrChildren(2,nLoopCnt)
			End If
		Next
	End If
	objRs.close
	Set objRs = Nothing




	Function Func_Campus_Children(parent_campus_code)

		Dim strSql

		If valuecheck(parent_campus_code) Then
			strSql = ""
			strSql = strSql & " SELECT C.CODE, C.UNAME "
			strSql = strSql & " FROM MG_MEMBER A WITH(NOLOCK) 	 "
			strSql = strSql & "	INNER JOIN MG_MEMBER_CHILD B WITH(NOLOCK) ON B.MCODE = A.CODE	 "
			strSql = strSql & "	INNER JOIN MG_MEMBER C WITH(NOLOCK) 	ON C.CODE = B.MCCODE "
			strSql = strSql & " WHERE A.CODE = "& parent_campus_code &" AND C.UDEL_FG <> 'Y' "
			strSql = strSql & " ORDER BY C.UNAME ASC "
		Else
			strSql = ""
			strSql = strSql & " SELECT * FROM MG_MEMBER WITH(NOLOCK) WHERE 1= 2 "
		End If

		set Rs = objDB.sqlQuery(strSql,1)
		If not (Rs.bof and Rs.eof) then
			vrs1=Rs.getrows()
			rcount1=ubound(vrs1,2)
		else
			rcount1=-1
		end if
		Rs.close

		campus_children_member_cd = ""

		If rcount1 >= 0 Then
			For k1 = 0 To rcount1
				If Not ValueCheck(campus_children_member_cd) Then
					campus_children_member_cd = vrs1(0,k1)
				Else
					campus_children_member_cd = campus_children_member_cd &"," & vrs1(0,k1)
				End If
			Next
		End If

		Func_Campus_Children = campus_children_member_cd

	End Function


	Function Func_Ams_Children(campus_code)
		Dim strSql
		Dim ams_child_members_cd : ams_child_members_cd  = ""

		If valuecheck(campus_code) Then
			strSql = ""
			strSql = " EXEC SP_AMS_MEMBER_SEARCH_06 "& campus_code
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
							End If
						End If
					Next
				End If
			End If
		End If

		Func_Ams_Children = ams_child_members_cd

	End Function
%>
