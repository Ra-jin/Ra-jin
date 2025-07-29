	<title>마이러셀 통합정보시스템</title>
	<meta charset="euc-kr" />
	<meta name="title" content="마이러셀 통합정보시스템" />
	<meta property="og:type" content="website">
	<meta property="og:title" content="마이러셀 통합정보시스템">
	<meta name="viewport" content="width=device-width, initial-scale=1,	minimum-scale=1, maximum-scale=1, user-scale=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />

	<!-- 안드로이드 홈 화면 추가시 상단 주소창 제거 -->
	<meta name="mobile-web-app-capable" content="yes">
	<!-- ios 홈 화면 추가시 상단 주소창 제거 -->
	<meta name="apple-mobile-web-app-capable" content="yes">

	<% '각 메뉴별 분기 %>
	<% if instr(lcase(Request.ServerVariables("URL")), lcase("/fns/")) = 1 then %>
	<link rel="stylesheet" type="text/css" href="/css/fns.css?ver=1.2" media="all" />
	<!-- 식권예약 css -->
	<% elseif instr(lcase(Request.ServerVariables("URL")), lcase("/Textbook/")) = 1 then %>
	<link rel="stylesheet" type="text/css" href="/css/fns.css?ver=1.2" media="all" />
	<!-- 교재구매 css -->
	<% elseif instr(lcase(Request.ServerVariables("URL")), lcase("/Reserve/")) = 1 then %>
	<!-- 단과좌석 css -->
	<% elseif instr(lcase(Request.ServerVariables("URL")), lcase("/Score/")) = 1 then %>
	<link rel="stylesheet" type="text/css" href="/css/score.css" media="all" />
	<!-- 성적조회 css -->
	<% elseif instr(lcase(Request.ServerVariables("URL")), lcase("/Study_hall/")) = 1 then %>
	<link rel="stylesheet" type="text/css" href="/css/study.css" media="all" />
	<!-- 바자관 css -->
	<% end if %>

	<link rel="stylesheet" type="text/css" href="/css/reset.css" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/layout.css?ver=1.2" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/common.css" media="all" />
	<!-- <link rel="stylesheet" type="text/css" href="/css/swiper.css"  /> -->
	<link rel="stylesheet" type="text/css" href="/css/swiper.min.css"  />
	<script type="text/javascript" src="/js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="/js/jquery-ui-1.12.1.min.js"></script>
	<script type="text/javascript" src="/js/jquery.ui.touch-punch.js"></script>
	<script type="text/javascript" src="/js/jquery.rwdImageMaps.min.js"></script>
	<script type="text/javascript" src="/js/swiper.js"></script>
	<script type="text/javascript" src="/js/ui.js"></script>
	<script language="javascript" src="/russel/Public/Js/Util.js"></script>

	<%
	nRmsMemCd = ""

	'RMS 학번 가져오기
	If( IsDevSvr()= True )then
		Rms_Mcode = russelobjDB.sqlResult("select Rms_Mem_Cd from CAMPUS_DEV.megastudy.dbo.mg_member with(nolock) where uId = '" & gLoginMemId &"' and uKind='1' and uDel_fg='N' ")
	Else
		Rms_Mcode = objDB.sqlResult("select Rms_Mem_Cd from Mg_Member with(nolock) where uId = '" & gLoginMemId &"' and uKind='1' and uDel_fg='N' ")
	End If


	nRmsMemCd = Rms_Mcode
	nRmsMemCd = CheckNumber_reset(nRmsMemCd, 0)

	svr_ip = request.ServerVariables("LOCAL_ADDR")
	svr_name2 = request.ServerVariables("HTTP_HOST")

	If( IsDevSvr()= True )then
	header_addr2 = "https://" & Trim(svr_name2)
	Else
	header_addr2 = "https://" & Trim(svr_name2)
	End If

	' 학원, 재원상태 가져오기
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
	strSql = strSql & "			AND GH_MEM_CD = "& nRmsMemCd &""
	strSql = strSql & "	) AS XX "
	strSql = strSql & " WHERE XX.GH_STATE IN (11,12,31,24,21)  AND XX.GH_CLS_CD IN (11,12,13,14) "
	strSql = strSql & " ORDER BY XX.GH_STATE ASC, XX.GH_CLS_CD ASC, XX.GH_REG_DT DESC "'재원대기 순 / 재정_연합_단과 순으로/ 최근등록순.

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
	%>