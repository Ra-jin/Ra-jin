<%
	intClassCode = VARS("intClassCode")

	If intClassCode = "" THEN intClassCode = 11

	'2019-12-21 주석
	'Ams_Mcode = objDB.sqlResult("select Rms_Mem_Cd from Mg_Member with(nolock) where Code = '" & gLoginMemCode &"' and uKind='1' and uDel_fg='N' ")

	'2019-12-21 추가
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
			Ams_Mcode = vrs1(0,0) '3순위내에 제일 위에 나온 학번
		End If
	End If

	' ASM 학번이 없는경우 나의 결제내역에서 재정/연합 결제를 위해 AMS 학번을 가져와야 한다.
	If ValueCheck(Ams_Mcode) = False Then

		'2019-12-21 주석
		'strSql = ""
		'strSql = " EXEC SP_AMS_MEMBER_SEARCH_06 "& gLoginMemCode
'
		'set Rs2 = amsobjdb.sqlQuery(strSql,2)
		'If not (Rs2.eof or Rs2.bof) then
		'	vrs1 = Rs2.GetRows()
		'	Rcount1 = ubound(vrs1,2)
		'Else
		'	Rcount1 = -1
		'End If
		'Rs2.close
		'set Rs2 = nothing
'
		'IF Rcount1 >= 0 Then
		'	dbTopPriorty = vrs1(1,0)
		'	If dbTopPriorty < 4 Then '매칭기준 3순위까지만 적용 : 제일 높은 같은 순위 회원으로
		'		Ams_Mcode = vrs1(0,0) '3순위내에 제일 위에 나온 학번
		'	End If
		'End If


		Ams_Mcode_Null = "Y" '회원인증 학번이 캠퍼스에 입력 안되어 있는경우.
	End If

	ACACODE = VARS("mycampus")

	If (Trim(ACACODE)  = "" OR Trim(AMS_ACACODE) = "") AND ValueCheck(Ams_Mcode) = True  Then
		strSql = ""
		strSql = strSql & " SELECT XX.GH_ACA_CD, XX.GH_CLS_CD, XX.GH_STATE "
		strSql = strSql & "		, (CASE XX.GH_CLS_CD WHEN 11 THEN '재수정규반' WHEN 12 THEN '연합반' WHEN 13 THEN CASE WHEN XX.LM_DTL_CD = 11 THEN '재수정규반' ELSE '단과반' END ELSE '' END) "
		strSql = strSql & "		, (CASE XX.GH_STATE WHEN 11 THEN '재원' WHEN 12 THEN '재원대기' WHEN 31 THEN '퇴원' WHEN 24 THEN '휴원' WHEN 21 THEN '휴원' ELSE '' END) "
		strSql = strSql & "		, (SELECT AM_ACA_ABBR FROM AMS_ACA_MAS (NOLOCK) WHERE AM_ACA_CD = XX.GH_ACA_CD) "
		'UF_GET_GH_STATE_01 주석 참조
		strSql = strSql & " FROM( "
		strSql = strSql & "	SELECT LM_CLS_CD, LM_DTL_CD,GH_COLE_CD, GH_ACA_CD, GH_CLS_CD, "
		strSql = strSql & "		DBO.UF_GET_GH_STATE_01(GH_COLE_CD,GH_MEM_CD) AS GH_STATE, GH_REG_DT "
		strSql = strSql & "	FROM AMS_GRP_HIS with(nolock)  "
		strSql = strSql & "		LEFT JOIN AMS_COU_LEC with(nolock) ON CL_COLE_CD = GH_COLE_CD "
		strSql = strSql & "		LEFT JOIN AMS_LEC_MAS (NOLOCK) ON CL_LEC_CD = LM_LEC_CD "
		strSql = strSql & "	WHERE GH_REFUND_CD IS NULL "
		strSql = strSql & "			AND CL_COU_CD NOT IN (1000,1001,1002) "
		strSql = strSql & "			AND GH_MEM_CD = "& Ams_Mcode &""
		strSql = strSql & "	) AS XX "
		strSql = strSql & " WHERE XX.GH_STATE IN (11,12,31,24,21)  AND XX.GH_CLS_CD IN (11,12,13,14) "
		strSql = strSql & " ORDER BY XX.GH_STATE ASC, XX.GH_CLS_CD ASC, XX.GH_REG_DT DESC "'재원대기 순 / 재정_연합_단과 순으로/ 최근등록순.
        
        'response.Write strSql
        'response.End
        
		AMS_ACACODE = ""
		G_AMS_CLS_CD = ""
		G_AMS_STATE = ""

		G_AMS_CLS_NM = ""
		G_AMS_STATE_NM = ""

		G_AMS_ACA_NM = ""

		AMS_ACACODE_S = ""

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
					If vrs1(2,k1) = "11" Or vrs1(2,k1) = "12" Then
						AMS_ACACODE_S = AMS_ACACODE_S &","& vrs1(0,k1)
					End If
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

	If Ams_Mcode <> "" and AMS_ACACODE <> "" Then ' AMS 재정 수강 이력이 있는지 조회
		strSql = ""
		strSql = strSql & " SELECT COUNT(*) "
		strSql = strSql & " FROM AMS_GRP_HIS A WITH(NOLOCK) "
		strSql = strSql & " INNER JOIN AMS_LEC_MAS WITH(NOLOCK) ON LM_LEC_CD = GH_LEC_CD "
        strSql = strSql & " INNER JOIN AMS_COU_LEC WITH (NOLOCK) ON CL_COLE_CD = GH_COLE_CD "
		strSql = strSql & " WHERE 1=1 "
		If octoCourse2 <> "" Then '10월 과정[CL_SUB_CD : 1115] 재정일 경우 예외처리
			strSql = strSql & "	AND DBO.UF_GET_GH_STATE_01(GH_COLE_CD,GH_MEM_CD) In (11,12,24) "
		Else
			strSql = strSql & "	AND DBO.UF_GET_GH_STATE_01(GH_COLE_CD,GH_MEM_CD) In (11,12) "
		End If
		strSql = strSql & "	AND A.GH_COLE_CD > 0 AND A.GH_MEM_CD ="& Ams_Mcode
		strSql = strSql & "	AND GH_ACA_CD in ("& AMS_ACACODE_S &")"
		strSql = strSql & "	AND A.GH_BE_CD = 11 AND GH_REFUND_CD IS NULL "
        strSql = strSql & "	AND CL_SUB_CD NOT IN (1343,1344,1357) " '2017년 팀플 정책 미정으로 우선선발 1차, 2차, 2월과정 애들은 팀플 메뉴가 안 보이게 처리 20161227 BY 안계용
    
		strSql = strSql & "	And LM_DTL_CD = 11 "


		jaejung_count = amsobjDB.sqlResult(strSql) '초기 재정 카운트

		strSql = ""
		strSql = strSql & " SELECT COUNT(*) "
		strSql = strSql & " FROM AMS_GRP_HIS A WITH(NOLOCK) "
		strSql = strSql & " INNER JOIN AMS_LEC_MAS WITH(NOLOCK) ON LM_LEC_CD = GH_LEC_CD "
		strSql = strSql & " WHERE A.GH_COLE_CD > 0 AND A.GH_MEM_CD ="& Ams_Mcode
		strSql = strSql & "	AND GH_ACA_CD in ("& AMS_ACACODE_S &")"
		strSql = strSql & "	AND A.GH_BE_CD = 11 AND GH_REFUND_CD IS NULL "
		strSql = strSql & "	AND DBO.UF_GET_GH_STATE_01(GH_COLE_CD,GH_MEM_CD) In (11,12,88) "
		strSql = strSql & "	And LM_DTL_CD = 12 "


		yonhab_count = amsobjDB.sqlResult(strSql) '초기 연합 카운트

		strSql = ""
		strSql = strSql & " SELECT COUNT(*) "
		strSql = strSql & " FROM AMS_GRP_HIS A WITH(NOLOCK) "
		strSql = strSql & " INNER JOIN AMS_LEC_MAS WITH(NOLOCK) ON LM_LEC_CD = GH_LEC_CD "
		strSql = strSql & " WHERE A.GH_COLE_CD > 0 AND A.GH_MEM_CD ="& Ams_Mcode
		strSql = strSql & "	AND GH_ACA_CD in ("& AMS_ACACODE_S &")"
		strSql = strSql & "	AND A.GH_BE_CD = 11 AND GH_REFUND_CD IS NULL "
		strSql = strSql & "	AND DBO.UF_GET_GH_STATE_01(GH_COLE_CD,GH_MEM_CD) In (11,12,88) "
		strSql = strSql & "	And LM_CLS_CD = 13 And LM_DTL_CD = 13 "

		danka_count = amsobjDB.sqlResult(strSql) '초기 단과 카운트


		AMS_ACACODE_ORI = AMS_ACACODE	'목표대학설정시 노량진학원이 학원코드가 2개라 오류발생하여 별개변수 생성 , 20120718 by 황민주

		'노량진 일때는 캠퍼스 노량진은 AMS 노량진1[14] + 노량진2[41] 이므로
		If AMS_ACACODE = "14" Or AMS_ACACODE = "41" Then
			AMS_ACACODE = "14,41"
		End If

		'셀렉트 박스에서 선택 값이 있는경우.
		'AmsCode 함수에서는 AMS 노량진1[14] + 노량진2[41] 을 다 나오게 한다.
		If VARS("mycampus") <> "" Then '받아온 캠퍼스 코드가 있을경우.
			AMS_ACACODE = AmsCode(VARS("mycampus"))

			' 디폴트 반이 아닌 다중데이터에 의한 선택이 있는경우
			strSql = " SELECT	 TOP 1 LM_DTL_CD "
			strSql = strSql & " FROM AMS_GRP_HIS A WITH(NOLOCK) "
			strSql = strSql & " LEFT JOIN AMS_COU_LEC WITH(NOLOCK) ON CL_COLE_CD = GH_COLE_CD "
			strSql = strSql & " INNER JOIN AMS_LEC_MAS WITH(NOLOCK) ON LM_LEC_CD = GH_LEC_CD "
			strSql = strSql & " WHERE CONVERT(DATETIME, CONVERT(VARCHAR(10), GETDATE(), 120)) BETWEEN A.GH_REC_SDT AND A.GH_REC_EDT "
			strSql = strSql & " 	AND CL_COU_CD NOT IN (1000,1001,1002) "
			strSql = strSql & "	AND A.GH_COLE_CD > 0 AND A.GH_MEM_CD ="& Ams_Mcode
			strSql = strSql & "	AND GH_ACA_CD in ("& AMS_ACACODE &")"
			strSql = strSql & "	AND A.GH_BE_CD = 11 AND GH_REFUND_CD IS NULL "
			strSql = strSql & "	AND DBO.UF_GET_GH_STATE_01(GH_COLE_CD,GH_MEM_CD) In (11,12,88) "
            strSql = strSql & "	AND CL_SUB_CD NOT IN (1343,1344,1357) " '2017년 팀플 정책 미정으로
			strSql = strSql & " ORDER BY LM_DTL_CD ASC "
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
			strSql = strSql & "			SELECT COUNT(*) AS DanCNT, GH_LEC_CD "
			strSql = strSql & "			FROM AMS_GRP_HIS  (nolock) "
			strSql = strSql & "			LEFT JOIN AMS_SALE_LEC (nolock) ON GH_SALE_CD = SL_SALE_CD "
			strSql = strSql & "			WHERE GH_BE_CD  = 11 AND GH_REFUND_CD IS NULL AND GH_CLS_CD = 11 AND SL_SALE_ST = 11 AND SL_ON_YN = 'Y' "
			strSql = strSql & "			GROUP BY GH_LEC_CD "
			strSql = strSql & "		) AS AGH2 "
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
			strSql = strSql & " FROM AMS_COU_LEC "
			strSql = strSql & "  INNER JOIN AMS_GRP_HIS ON GH_COLE_CD = CL_COLE_CD "
			strSql = strSql & "  INNER JOIN AMS_LEC_MAS WITH(NOLOCK) ON LM_LEC_CD = GH_LEC_CD "
			strSql = strSql & " WHERE DBO.UF_GET_GH_STATE_01(GH_COLE_CD,GH_MEM_CD) IN (11,12,88) "
			strSql = strSql & "  AND GH_MEM_CD = "& Ams_Mcode
			strSql = strSql & "  AND LM_CLS_CD IN (11,12) "

			Ams_course_sub_cd = amsobjdb.sqlResult(strSql) '과정 코드 서브

		End If
	End If

'	If IsDevSvr() = true then '개발일경우 
'		MEGAAMS_NM = "MEGAAMS_PRE"
'	Else 
'		MEGAAMS_NM = "MEGAAMS"
'	End If 

	' 10월과정 완료생여부체크 //
'	nCourseTargetYear = Year(now)
'	If Month(now) < 4 Then
'		nCourseTargetYear = nCourseTargetYear -1
'	End If
'	strSql = ""
'	strSql = strSql & " SELECT TOP 1 GH_ACA_CD "
'	strSql = strSql & " FROM megastudy..MG_MEMBER  with(nolock) "
'	strSql = strSql & " 	INNER JOIN " & MEGAAMS_NM & "..AMS_GRP_HIS with(nolock) ON AMS_MEM_CD = GH_MEM_CD "
'	strSql = strSql & " 	INNER JOIN " & MEGAAMS_NM & "..AMS_COU_LEC with(nolock) ON CL_COLE_CD = GH_COLE_CD "
'	strSql = strSql & " 	INNER JOIN " & MEGAAMS_NM & "..AMS_COURSE_MAS with(nolock) ON CL_COU_CD = CM_COURSE_CD "
'	strSql = strSql & " 	INNER JOIN " & MEGAAMS_NM & "..AMS_COURSE_SUB with(nolock) ON CL_SUB_CD = CS_SUB_CD "
'	strSql = strSql & " 	INNER JOIN " & MEGAAMS_NM & "..AMS_LEC_MAS (NOLOCK) ON CL_LEC_CD = LM_LEC_CD "
'	strSql = strSql & " WHERE CODE = "& gLoginMemCode
'	strSql = strSql & " 	AND CM_COURSE_NM='10월과정' "
'	strSql = strSql & " 	AND YEAR(CS_CO_SDT)="&nCourseTargetYear
'	strSql = strSql & " 	AND GH_BE_CD =11 "
'	strSql = strSql & " 	AND GH_REFUND_CD IS NULL "
'	strSql = strSql & "		AND LM_CLS_CD = 11 "
'	dbCurCourseAcaCd = objdb.sqlResult(strSql)
'	' // 10월과정 완료생여부체크
'	If ValueCheck(dbCurCourseAcaCd) = True Then
'		jaejung_count = jaejung_count + 1
'	End If
 

 

%>