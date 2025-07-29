<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/Public/class.Page.asp" -->

<%
	Response.Redirect "/intro/2024/consulting_susi/index.asp"
	Response.End
%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
	
<!--#include virtual="/common/responsive/inc/head_common.asp"-->
    <meta name="title" content="2025 러셀 입시전략연구소 수시 지원 컨설팅" />
    <meta name="keywords" content="2025 러셀 입시전략연구소 수시 지원 컨설팅,2023 수시 지원 컨설팅" />
	<meta name="description" content="2025 러셀 입시전략연구소 수시 지원 컨설팅" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2025 러셀 입시전략연구소 수시 지원 컨설팅">
	<meta property="og:description" content="2025 러셀 입시전략연구소 수시 지원 컨설팅" />

	<link rel="stylesheet" type="text/css" href="/common/css/aos.css">
    <link rel="stylesheet" type="text/css" href="./style.css">
</head>
<body>

<%
	If IsDevSvr() Then
		urlMainMobile = "//devmrussel.megastudy.net"
	Else
		urlMainMobile = "//mrussel.megastudy.net"
	End If

	rtnUrl = Request.Servervariables("PATH_INFO")
	mobileChk = fncChkMobile()

	If mobileChk = "Y" Then
		urlLogin = urlMainMobile & "/member/login.asp"
		urlPay = urlMainMobile & "/mypage/student/account_pay_chk.asp"
		urlQna = "/board/consult_write.asp?mode=consult_qna"
		urlDC = "//mrusseldc.megastudy.net/russel/info/location.asp"
		urlMD = "//mrusselmd.megastudy.net/russel_mokdong/info/location.asp"
		urlBD = "//mrusselbd.megastudy.net/russel_bundang/info/location.asp"
		urlDG = "//mrusseldg.megastudy.net/russel_dg/info/location.asp"
		urlDJ = "//mcoredj.megastudy.net/core_dj/info/location.asp"
	Else
		urlLogin = "/russel/member/login.asp"
		urlPay = "/russel/mypage/student/account_pay_chk.asp"
		urlQna = "/russel/info/qna/qna_write.asp?mode=consult_qna"
		urlDC = "//russeldc.megastudy.net/russel/info/location.asp"
		urlMD = "//russelmd.megastudy.net/russel_mokdong/info/location.asp"
		urlBD = "//russelbd.megastudy.net/russel_bundang/info/location.asp"
		urlDG = "//russeldg.megastudy.net/russel_dg/info/location.asp"
		urlDJ = "//coredj.megastudy.net/core_dj/info/location.asp"
	End If

	'컨설팅 마스터 번호 - 임의 조작 방지 위해 index.asp / popup.asp / index_ax.asp 내 선언
	masterIdx = 6

	'Open여부
	bOpen = false	'7/1 False 7/4 True

	'예약 여부(결제)
	bReserv = False
	'대기 여부
	bWaiting = False
	'상세정보 등록 여부
	bApply = False

	strSQL = ""
	strSQL = strSQL & " SELECT FORMAT(CM_START_DATE, 'yyyy-MM-dd'), "
	strSQL = strSQL & "        FORMAT(CM_END_DATE, 'yyyy-MM-dd') "
	strSQL = strSQL & " FROM   dbo.MR_CONSULTING_MAS WITH (NOLOCK) "
	strSQL = strSQL & " WHERE  CM_IDX = "& masterIdx &" "

	Set rsData = russelobjDB.sqlQuery(strSQL, 3)

	If Not rsData.EOF Then
		StartDate 	= rsData(0)
		EndDate 	= rsData(1)

		StartWeekDay = weekDayName(weekDay(CDate(StartDate)))
		EndWeekDay = weekDayName(weekDay(CDate(EndDate)))
		StartDate = Replace(StartDate, "-", ".")
		EndDate = Replace(EndDate, "-", ".")
	End If

	rsData.Close
	Set rsData = Nothing

	If gLoginOk Then
		strSQL = ""
		strSQL = strSQL & " SELECT name, "
		strSQL = strSQL & "        FORMAT(CD_DATE, 'yyyy-MM-dd HH:mm'), "
		strSQL = strSQL & "        CC_NAME "
		strSQL = strSQL & " FROM   dbo.MR_CONSULTING_RESERV WITH (NOLOCK) "
		strSQL = strSQL & "        JOIN dbo.MG_Member_RmsCd WITH (NOLOCK) ON MG_Member_RmsCd.CODE = CR_AMS_CODE "
		strSQL = strSQL & "        JOIN dbo.MR_CONSULTING_DTL WITH (NOLOCK) ON CD_IDX = CR_CD_IDX "
		strSQL = strSQL & "                                                    AND CD_CM_IDX = "& masterIdx &" "
		strSQL = strSQL & "        JOIN dbo.MR_CONSULTING_CONSULTANT WITH (NOLOCK) ON CC_IDX = CD_CC_IDX "
		strSQL = strSQL & "        JOIN dbo.MG_Code_Sub WITH (NOLOCK) ON MG_Code_Sub.code = CD_ACA_CD "
		strSQL = strSQL & "                                              AND kind = 'campus' "
		strSQL = strSQL & "        JOIN MegaRMS.dbo.AMS_GRP_HIS WITH (NOLOCK) ON GH_COLE_CD = CD_COLE_CD "
		strSQL = strSQL & "                                                      AND GH_MEM_CD = Rms_Mem_Cd "
		strSQL = strSQL & "                                                      AND GH_BE_CD = 11 "
		strSQL = strSQL & "                                                      AND GH_REFUND_CD IS NULL "
		strSQL = strSQL & " WHERE  CR_MEM_ID = '"& gLoginMemId &"' "

		Set rsReserv = russelobjDB.sqlQuery(strSQL, 3)

		If Not rsReserv.EOF Then
			bReserv = True

			ReservCampusName 	 = rsReserv(0)
			ReservDate 		 	 = rsReserv(1)
			ReservConsultantName = rsReserv(2)
		End If

		rsReserv.Close
		Set rsReserv = Nothing

		strSQL = ""
		strSQL = strSQL & " SELECT name, "
		strSQL = strSQL & "        CW_STAT, "
		strSQL = strSQL & "        CW_MEMO "
		strSQL = strSQL & " FROM   dbo.MR_CONSULTING_WAITING WITH (NOLOCK) "
		strSQL = strSQL & "        JOIN dbo.MG_Code_Sub WITH (NOLOCK) ON code = CW_ACA_CD "
		strSQL = strSQL & "                                              AND kind = 'campus' "
		strSQL = strSQL & " WHERE  CW_CM_IDX = "& masterIdx &" "
		strSQL = strSQL & "        AND CW_MEM_ID = '"& gLoginMemId &"' "

		Set rsWaiting = russelobjDB.sqlQuery(strSQL, 3)

		If Not rsWaiting.EOF Then
			bWaiting = True
			WaitingCampusName = rsWaiting(0)
			WaitingStat 	  = Trim(rsWaiting(1))
			WaitingMemo		  = rsWaiting(2)
		End If

		rsWaiting.Close
		Set rsWaiting = Nothing

		applyCnt = 0
		strSQL = ""
		strSQL = strSQL & " SELECT COUNT(1) "
		strSQL = strSQL & " FROM   dbo.MR_CONSULTING_APPLY_INFO WITH (NOLOCK) "
		strSQL = strSQL & " WHERE  CAI_CM_IDX = "& masterIdx &" "
		strSQL = strSQL & " 	   AND CAI_MEM_ID = '"& gLoginMemId &"' "

		applyCnt = russelobjDB.sqlResult(strSQL)

		If applyCnt > 0 Then
			bApply = True
		End If

		strSQL = ""
		strSQL = strSQL & " WITH DATE_RANGE AS ( "
		strSQL = strSQL & "     SELECT DATEADD(DAY, number, DATEADD(MONTH, DATEDIFF(MONTH, 0, CM_START_DATE), 0)) AS DATE_VALUE "
		strSQL = strSQL & "     FROM   dbo.MR_CONSULTING_MAS WITH (NOLOCK) "
		strSQL = strSQL & "            CROSS JOIN master.dbo.spt_values WITH (NOLOCK) "
		strSQL = strSQL & "     WHERE  CM_IDX = "& masterIdx &" "
		strSQL = strSQL & "            AND type = 'P' "
		strSQL = strSQL & "            AND DATEADD(DAY, number, DATEADD(MONTH, DATEDIFF(MONTH, 0, CM_START_DATE), 0)) <=  "
		strSQL = strSQL & " 				DATEADD(DAY, -1, DATEADD(MONTH, DATEDIFF(MONTH, -1, CM_END_DATE), 0)) "
		strSQL = strSQL & " ), DATE_DATA AS ( "
		strSQL = strSQL & " 	SELECT	YEAR(DATE_RANGE.DATE_VALUE) AS DATE_YEAR,  "
		strSQL = strSQL & " 			MONTH(DATE_RANGE.DATE_VALUE) AS DATE_MONTH, "
		strSQL = strSQL & " 			DAY(DATE_RANGE.DATE_VALUE) AS DATE_DAY, "
		strSQL = strSQL & " 			FORMAT(DATE_RANGE.DATE_VALUE, 'yyyy-MM-dd') AS DATE_VALUE, "
		strSQL = strSQL & " 			DATEPART(WEEKDAY, DATE_RANGE.DATE_VALUE) AS WEEKDAY_NO "
		strSQL = strSQL & " 	FROM   DATE_RANGE "
		strSQL = strSQL & " ) "
		strSQL = strSQL & " SELECT	DATE_YEAR, "
		strSQL = strSQL & " 		DATE_MONTH, "
		strSQL = strSQL & " 		MAX(CASE WHEN DATE_DATA.WEEKDAY_NO = 1 THEN DATE_DAY ELSE '' END) AS [SUN], "
		strSQL = strSQL & " 		MAX(CASE WHEN DATE_DATA.WEEKDAY_NO = 2 THEN DATE_DAY ELSE '' END) AS [MON], "
		strSQL = strSQL & " 		MAX(CASE WHEN DATE_DATA.WEEKDAY_NO = 3 THEN DATE_DAY ELSE '' END) AS [TUE], "
		strSQL = strSQL & " 		MAX(CASE WHEN DATE_DATA.WEEKDAY_NO = 4 THEN DATE_DAY ELSE '' END) AS [WED], "
		strSQL = strSQL & " 		MAX(CASE WHEN DATE_DATA.WEEKDAY_NO = 5 THEN DATE_DAY ELSE '' END) AS [THU], "
		strSQL = strSQL & " 		MAX(CASE WHEN DATE_DATA.WEEKDAY_NO = 6 THEN DATE_DAY ELSE '' END) AS [FRI], "
		strSQL = strSQL & " 		MAX(CASE WHEN DATE_DATA.WEEKDAY_NO = 7 THEN DATE_DAY ELSE '' END) AS [SAT] "
		strSQL = strSQL & " FROM DATE_DATA WITH (NOLOCK) "
		strSQL = strSQL & " GROUP BY DATE_YEAR, DATE_MONTH, DATEPART(WEEK, DATE_DATA.DATE_VALUE) "

		Set rsCalendar = russelobjDB.sqlQuery(strSQL, 3)

		If Not rsCalendar.EOF Then
			arrCalendar = rsCalendar.GetRows()
			baseYear = arrCalendar(0, 0)
			baseMonth = arrCalendar(1, 0)
		End If

		rsCalendar.Close
		Set rsCalendar = Nothing
	End If

	'Response.write "IsDevSvr() : " & IsDevSvr() & "<br>"
	'Response.write "bReserv : " & bReserv & "<br>"
	'Response.write "bWaiting : " & bWaiting & "<br>"
	'Response.write "bApply : " & bApply & "<br>"
	'Response.write "gLoginMemCode : " & gLoginMemCode & "<br>"
	'Response.write "gLoginOk : " & gLoginOk & "<br>"
	'Response.write "gLoginMemId : " & gLoginMemId & "<br>"
	'Response.write "gAmsSingleMemCd : " & gAmsSingleMemCd & "<br><br>"
%>

<div class="consulting-wrap">
    <div class="visual-area">
        <div class="inner">
            <p class="v-stit">
				<img class="pc-only" src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/visual_tit_sub.png" alt="" />
				<img class="mo-only" src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/mo/visual_tit_sub.png" alt="" />
			</p>
            <h1 class="v-tit">
				<img class="pc-only" src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/visual_tit.png" alt="" />
				<img class="mo-only" src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/mo/visual_tit.png" alt="" />
				<span>
					<img class="pc-only" src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/visual_tit02.png" alt="" />
					<img class="mo-only" src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/mo/visual_tit02.png" alt="" />
				</span>
			</h1>
            <div class="v-obj">
				<img class="pc-only" src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/visual_paper.png" alt="" />
				<img class="mo-only" src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/mo/visual_paper.png" alt="" />
			</div>
            <div class="info-txt">
                <div>
                    <dl>
                        <dt>예약 접수</dt>
                        <dd>2024.07.04(목요일) 오후 1시부터 <span>선착순 온라인 접수</span></dd>
                    </dl>
                    <dl>
                        <dt>컨설팅 일정</dt>
                        <dd>2024.08.01(목요일) ~ 2024.09.08(일요일)</dd>
                    </dl>
                </div>
            </div>

			<%If Not bOpen Then%>
				<!-- 7/1 월 오픈시 -->
				<div class="info-link">
					<div class="top-con">
						<a href="javascript:void(0);" class="btn-m-gold" onclick="alert('7/4(목) 오후 1시부터 접수 가능합니다.')">온라인 접수 바로가기</a>
					</div>
					<div class="bottom-con">
						<a href="javascript:void(0);" class="btn-m-gray" onclick="alert('7/4(목) 오후 1시부터 접수 가능합니다.')">상세 정보 등록</a>
						<a href="javascript:void(0);" class="btn-m-gray" onclick="fn_qnaGo()">온라인 문의</a>
					</div>
				</div>
			<%Else%>
				<!-- 7/4 목 오픈시 -->
				<div class="info-link">
					<div class="top-con">
						<a href="javascript:void(0);" class="btn-m-gold" onclick="fn_eventGo()">온라인 접수 바로가기</a>
					</div>
					<div class="bottom-con">
						<%If bApply Then%>
							<a href="javascript:void(0);" class="btn-m-gray" onclick="fn_historyGo()">상세 정보 조회</a>
						<%Else%>
							<a href="javascript:void(0);" class="btn-m-gray" onclick="fn_historyGo()">상세 정보 등록</a>
						<%End If%>
						<a href="javascript:void(0);" class="btn-m-gray" onclick="fn_qnaGo()">온라인 문의</a>
					</div>
				</div>
			<%End If%>
        </div>
    </div>
	<nav class="fix-menu-wrap">
		<div class="fix-menu js-fix-menu">
			<div class="menu">
				<a class="on" href="javascript:void(0);">
					러셀 입시전략연구소를 선택해야 하는 이유
				</a>
				<a href="javascript:void(0);">
					2025 수시 지원 컨설팅 안내
				</a>
			</div>
		</div>
	</nav>
	<!-- tab01 -->
	<div class="cont js-cont">
		<!-- cont01 -->
		<div class="cont01">
			<div class="inner">
                <div class="tit-wrap" data-aos="flip-up">
                    <h3>러셀 입시전략연구소를 선택해야 하는 이유</h3>
                    <h2><strong>러셀 입시전략연구소,</strong> <br class="mo-only">이렇게 다릅니다</h2>
                    <p>
                        러셀의 ‘학생중심’ 가치를 토대로 하여, <br>수험생의 입시 성공을 위해 끝까지 함께합니다
                    </p>
                </div>
                <ul class="list-reason">
					<li data-aos="fade-up">
						<img class="pc-only" src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/cont01_img01.jpg" alt="" />
						<img class="mo-only" src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/mo/cont01_img01.jpg" alt="" />
					</li>
					<li data-aos="fade-up">
						<img class="pc-only" src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/cont01_img02.jpg" alt="" />
						<img class="mo-only" src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/mo/cont01_img02.jpg" alt="" />
					</li>
					<li data-aos="fade-up">
						<img class="pc-only" src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/cont01_img03.jpg" alt="" />
						<img class="mo-only" src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/mo/cont01_img03.jpg" alt="" />
					</li>
					<li data-aos="fade-up">
						<img class="pc-only" src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/cont01_img04.jpg" alt="" />
						<img class="mo-only" src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/mo/cont01_img04.jpg" alt="" />
					</li>
				</ul>
				<div class="float-banner">
					<a href="javascript:void(0)" class="btn-b-wh">2025 수시 지원 컨설팅 안내</a>
				</div>
			</div>
		</div>
		<!-- //cont01 -->

		<!-- cont02 -->
		<div class="cont02">
			<div class="inner">
                <div class="tit-wrap" data-aos="flip-up">
                    <h3>각 지역 어디에서든, <br>원하시는 상담을 받을 수 있도록</h3>
                    <h2><strong>1:1 대면 컨설팅</strong></h2>
                    <p>
                        입시 전문 컨설턴트를 대면하여 <br>원하는 지역학원을 선택하여 상담을 진행합니다.
                    </p>
                </div>
                <div class="map-box" data-aos="fade-up">
                    <div>
						<img class="pc-only" src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/cont02_img.jpg" alt="" />
						<img class="mo-only" src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/mo/cont02_img.jpg" alt="" />
					</div>
					<div class="area01">
						<p>수도권</p>
						<ul>
							<li>
								<div>러셀 대치</div>
								<a href="<%=urlDC%>" target="_blank">오시는 길</a>
							</li>
							<li>
								<div>러셀 목동</div>
								<a href="<%=urlMD%>" target="_blank">오시는 길</a>
							</li>
							<li>
								<div>러셀 분당</div>
								<a href="<%=urlBD%>" target="_blank">오시는 길</a>
							</li>
						</ul>
					</div>
					<div class="area02">
						<p>지역</p>
						<ul>
							<li>
								<div>러셀 대구</div>
								<a href="<%=urlDG%>" target="_blank">오시는 길</a>
							</li>
							<li>
								<div>러셀CORE 대전</div>
								<a href="<%=urlDJ%>" target="_blank">오시는 길</a>
							</li>
						</ul>
					</div>
                </div>
			</div>
		</div>
		<!-- //cont02 -->

		<!-- cont03 -->
		<div class="cont03">
			<div class="inner">
                <div class="tit-wrap" data-aos="flip-up">
					<h3>입시의 과거와 현재를 토대로</h3>
                    <h2>
                        미래를 꿰뚫는 <br class="mo-only"><strong>대입 전문 컨설턴트</strong>
                    </h2>
                </div>
				<div class="swiper-container consult-list" data-aos="fade-up">
					<ul class="swiper-wrapper">
						<li class="swiper-slide present">
							<div><img src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/c_lsy.png" alt="" /></div>
							<div class="c-info">
								<dl>
									<dt><strong class="key">대표</strong> 컨설턴트</dt>
									<dd>이상연 소장</dd>
								</dl>
							</div>
						</li>
						<li class="swiper-slide present">
							<div><img src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/c_kks.png" alt="" /></div>
							<div class="c-info">
								<dl>
									<dt><strong class="key">대표</strong> 컨설턴트</dt>
									<dd>김광석 부소장</dd>
								</dl>
							</div>
						</li>
						<li class="swiper-slide">
							<div><img src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/c_ksh.png" alt="" /></div>
							<div class="c-info">
								<p>경험으로 데이터를 읽어내는 <br class="mo-only">입시 전문가
								</p>
								<dl>
									<dt><strong>수석</strong> 컨설턴트</dt>
									<dd>고성호</dd>
								</dl>
							</div>
						</li>
						<li class="swiper-slide">
							<div><img src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/c_pjm.png" alt="" /></div>
							<div class="c-info">
								<p>데이터 기반 1:1 학생 맞춤형<br>
								입시 컨설턴트
								</p>
								<dl>
									<dt><strong>수석</strong> 컨설턴트</dt>
									<dd>박지만</dd>
								</dl>
							</div>
						</li>
						<li class="swiper-slide">
							<div><img src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/c_csh.png" alt="" /></div>
							<div class="c-info">
								<p>생기부를 극한으로 활용하는<br>
								효율적 컨설팅
								</p>
								<dl>
									<dt><strong>수석</strong> 컨설턴트</dt>
									<dd>추선호</dd>
								</dl>
							</div>
						</li>
						<li class="swiper-slide">
							<div><img src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/c_kjh.png" alt="" /></div>
							<div class="c-info">
								<p class="no-word">정교한 분석, 세심한 상담을 통해<br>
								성공적인 입시 결과를 만들어드립니다.
								</p>
								<dl>
									<dt><strong>수석</strong> 컨설턴트</dt>
									<dd>김정휘</dd>
								</dl>
							</div>
						</li>
						<li class="swiper-slide">
							<div><img src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/c_pkh.png" alt="" /></div>
							<div class="c-info">
								<p>3년 연속 최우수 수석컨설턴트의<br>
								확실한 컨설팅
								</p>
								<dl>
									<dt><strong>수석</strong> 컨설턴트</dt>
									<dd>박규한</dd>
								</dl>
							</div>
						</li>
						<li class="swiper-slide">
							<div><img src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/c_psj.png" alt="" /></div>
							<div class="c-info">
								<p>원서는 냉정한 판단으로, 학생에게는 공감으로 접근합니다.
								</p>
								<dl>
									<dt><strong>수석</strong> 컨설턴트</dt>
									<dd>박성진</dd>
								</dl>
							</div>
						</li>
						<li class="swiper-slide">
							<div><img src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/c_ajs.png" alt="" /></div>
							<div class="c-info">
								<p>다년간의 수시 상담 경험을 기반으로 한 최상위권 전문가

								</p>
								<dl>
									<dt><strong>수석</strong> 컨설턴트</dt>
									<dd>안중수</dd>
								</dl>
							</div>
						</li>
						<li class="swiper-slide">
							<div><img src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/c_ksb.png" alt="" /></div>
							<div class="c-info">
								<p>정확한 데이터 기반을 중심으로 한<br>
								전략적 컨설팅

								</p>
								<dl>
									<dt><strong>수석</strong> 컨설턴트</dt>
									<dd>김성빈</dd>
								</dl>
							</div>
						</li>
						<li class="swiper-slide">
							<div><img src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/c_bdh.png" alt="" /></div>
							<div class="c-info">
								<p>세심하고 정교한 개인 맞춤형 컨설팅
								</p>
								<dl>
									<dt><strong>수석</strong> 컨설턴트</dt>
									<dd>배동환</dd>
								</dl>
							</div>
						</li>
						<li class="swiper-slide">
							<div><img src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/c_cjk.png" alt="" /></div>
							<div class="c-info">
								<p>수시의 궁금증을 모두 해결하는 해결사

								</p>
								<dl>
									<dt><strong>수석</strong> 컨설턴트</dt>
									<dd>최정길</dd>
								</dl>
							</div>
						</li>
						<li class="swiper-slide">
							<div><img src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/c_kye.png" alt="" /></div>
							<div class="c-info">
								<p>학생 개개인의 성향에 맞춘 1:1 맞춤형 솔루션 제시
								</p>
								<dl>
									<dt><strong>수석</strong> 컨설턴트</dt>
									<dd>김예은</dd>
								</dl>
							</div>
						</li>
						<li class="swiper-slide">
							<div><img src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/c_ssh.png" alt="" /></div>
							<div class="c-info">
								<p>객관적 진단, 올바른 처방의<br>
								입시 컨설턴트

								</p>
								<dl>
									<dt><strong>수석</strong> 컨설턴트</dt>
									<dd>서승환</dd>
								</dl>
							</div>
						</li>
						<li class="swiper-slide">
							<div><img src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/c_jsw.png" alt="" /></div>
							<div class="c-info">
								<p>러셀 분당 인문계열 학생부종합<br>
								합격자 1위

								</p>
								<dl>
									<dt><strong>수석</strong> 컨설턴트</dt>
									<dd>정상원</dd>
								</dl>
							</div>
						</li>
					</ul>
				</div>
				<p class="bt-txt">
					치밀한 경쟁을 통해 선발된 <span class="u-point">진짜 입시 전문가 그룹</span>이<br>
					<strong>최선의 수시 지원 전략을 <br>제시해 드립니다.</strong>
				</p>
			</div>
		</div>
		<!-- //cont03 -->
	</div>
	<!-- //tab01 -->


	<!-- tab02 -->
	<div class="cont js-cont">
		<div class="cont04 <%If bOpen Then%>open<%End If%>" >
			<div class="inner">
				<div class="tit-wrap">
					<h2>수시 지원 컨설팅 <br><strong>예약 신청 절차</strong></h2>
				</div>
				<div class="a-process">
					<ul>
						<li>
							<div class="flag">STEP 1</div>
							<p>
								온라인 페이지<br class="pc-only">
								<span class="txt-red">예약접수</span> 진행<br>
								(2024.07.04(목요일)~)
							</p>
						</li>
						<li>
							<div class="flag">STEP 2</div>
							<p>
								<span class="txt-red">결제</span> 진행
							</p>
						</li>
						<li>
							<div class="flag">STEP 3</div>
							<p>
								컨설팅 신청<br class="pc-only">
								<span class="txt-red">상세 정보 등록</span><br>
								(상세정보등록/조회 버튼)
							</p>
						</li>
						<li>
							<div class="flag">STEP 4</div>
							<p>
								<span class="txt-red">
									제출 서류 확인 후<br class="pc-only">
									컨설팅 신청 완료
								</span><br>
								(안내문자 발송)
							</p>
						</li>
					</ul>
				</div>
				<div class="tit-wrap mt160">
					<h2>수시 지원 컨설팅 <br><strong>대기 신청 절차</strong></h2>
				</div>
				<div class="a-process">
					<ul>
						<li>
							<div class="flag">STEP 1</div>
							<p>
								마감된 학원 선택 후<br class="pc-only">
								<span class="txt-red">대기 신청</span> 진행<br>
							</p>
							<div class="txt-gray">
								*마감되지 않은 학원은<br class="pc-only">
								대기 불가
							</div>
						</li>
						<li>
							<div class="flag">STEP 2</div>
							<p>
								예약 가능한 경우<br class="pc-only">
								대기 신청자에게<br>
								<span class="txt-red">유선 연락</span>
							</p>
						</li>
						<li>
							<div class="flag">STEP 3</div>
							<p>
								<span class="txt-red">결제</span> 진행
							</p>
						</li>
						<li>
							<div class="flag">STEP 4</div>
							<p>
								컨설팅 신청<br class="pc-only">
								<span class="txt-red">상세 정보 등록</span><br>
								(상세정보등록/조회 버튼)
							</p>
						</li>
						<li>
							<div class="flag">STEP 5</div>
							<p>
								<span class="txt-red">
									제출 서류 확인 후<br class="pc-only">
									컨설팅 신청 완료
								</span><br>
								(안내문자 발송)
							</p>
						</li>
					</ul>
				</div>
				<div class="info-txt">
					<p class="tit">
						※ 컨설팅 신청 전 반드시 확인해 주세요!
					</p>
					<ul class="list-dot">
						<li>
							<strong>제출 서류</strong><br>
							- 필수 제출 서류: 학교생활기록부 및 3학년 1학기 종합 성적표, 6월 평가원 모의고사 성적표<br>
							- 선택 제출 서류: 교육청 모의고사 성적표 및 기타 추가 제출 서류<br>
							<span class="txt-red">- 제출 서류는 rsc@megastudy.net 으로 첨부하여 보내주시기 바랍니다.</span>
						</li>
						<li>
							<strong>비용 : 450,000원</strong>
						</li>
						<li>
							수시 지원 컨설팅은 선착순 접수로 진행됩니다.<br>
							(선착순 마감 시 대기 접수를 진행하며, 상황에 따라 예약 및 신청이 조기 종료될 수 있습니다.)
						</li>
						<li>
							컨설팅 결제완료 및 수험생의 제출 자료 확인 후 컨설팅 신청이 완료됩니다.<br>
							(조기 접수로 인해 고등학교 3학년 1학기 성적표 제출이 어려운 경우, 추후에 추가로 제출하시면 됩니다.)
						</li>
						<li class="txt-red">
							상담 예약 2일(48시간) 미만 취소하는 경우, 환불은 불가합니다.<br>
							(기간 내 자료 접수 이후 서류 분석이 진행됩니다. 늦은 예약 취소 및 변경이 되지 않도록 내용 확인 후 신청 부탁드립니다.)
						</li>
						<li>
							상담은 학원 현장에서 대면으로 이루어지며, 비대면 상담은 진행하지 않습니다.
						</li>
						<li>
							고른기회, 다자녀전형, 예체능전형, 특성화고전형 등 특수전형은 상담을 진행하지 않습니다.
						</li>
						<li>
							예약/결제/취소 문의는 아래
							<a href="javascript:void(0);" onclick="fn_qnaGo()" class="btn-s-gray">온라인 문의</a>
							에서 학원 선택 &gt; ‘입시전략연구소’ 선택 후 문의<br>
							또는 02-3498-4388(평일 10:00 ~ 18:00 상담 운영)로 문의주시기 바랍니다.
						</li>
					</ul>
				</div>

				<%If Not bOpen Then%>
					<div class="alarm-box">
						<div class="ico-alarm">
							<img class="pc-only" src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/ico_alarm.png" alt="" />
							<img class="mo-only" src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/mo/ico_alarm.png" alt="" />
						</div>
						<p>온라인 예약 접수는 <br class="mo-only"><span>7/4(목) 오후 1시부터 선착순</span>으로 <br class="mo-only">진행됩니다.</p>
					</div>
				<%End If%>

				<div class="float-banner">
					<a href="javascript:void(0)" class="btn-b-wh">러셀 입시전략연구소를 선택해야 하는 이유</a>
				</div>
			</div>
		</div>

		<%If bOpen Then%>
			<div class="cont05">
				<div class="inner">
					<div class="r-box">
						<!-- class="on" 추가 시 활성화 -->
						<div class="layer-box <%If Not gLoginOk Or bWaiting Then%> on <%End If%>">
							<!-- class="on" 추가 시 활성화 -->
							<%If Not gLoginOk Then%>
								<div class="login-area on">
									<div><img src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/ico_login.png" alt="" /></div>
									<h5>로그인이 필요합니다.</h5>
									<p>컨설팅 신청을 위해 먼저 로그인 해주세요.</p>
									<div class="btn-wrap">
										<a href="javascript:void(0)" class="btn-b-wh on" onclick="fn_loginGo()">로그인하기</a>
									</div>
								</div>
							<%Else%>
								<%If bWaiting Then%>
									<%If WaitingStat = "0" Then%>
										<!-- class="on" 추가 시 활성화 -->
										<div class="waiting-area on">
											<div><img src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/ico_waiting.png" alt="" /></div>
											<h5>컨설팅 대기 신청 완료!</h5>
											<p>예약 가능한 일정이 확인되는 대로<br>

												유선 연락 드리겠습니다.</p>
										</div>
									<%ElseIf WaitingStat = "1" Then%>
										<!-- class="on" 추가 시 활성화 -->
										<div class="complete-area on">
											<div><img src="<%=Application("img_path_russel")%>/intro/2024/consulting_susi/ico_complete.png" alt="" /></div>
											<h5>결제 완료 및 예약 확정</h5>
											<p>컨설팅 예약 일정이 아래와 같이 확정되었습니다.</p>
											<div class="info-box">
												<div class="tit">컨설팅 신청정보<span>예약<br>확정</span></div>
												<div class="txt">
													<dl>
														<dt>학원</dt>
														<dd><%=WaitingCampusName%></dd>
													</dl>
													<p>
														<%=WaitingMemo%>
													</p>
												</div>
												<p>* 본 안내 내용은 대기자 신청 후 유선을 통해 컨설팅 일정을 확정한 후
													결제까지 완료하신 분에게만 표시됩니다.</p>
											</div>
										</div>
									<%End If%>
								<%End If%>
							<%End If%>
						</div>
						<div class="tit-wrap">
							<h4>2025 수시 지원 <br class="mo-only">컨설팅 예약</h4>
						</div>
						<div id="reservWrap">
							<p class="r-tit mt0">학원 선택</p>
							<div id="campusBox" class="btn-list ver01">
							</div>
							<div id="waitingBox" class="apply-box" style="display:none;">
								<div class="select-area">
									<p>수시 컨설팅 대기 신청</p>
									<div>
										<div class="select-box">
											<select name="waitingCampus" id="waitingCampus">
											</select>
										</div>
										<a href="javascript:;" onclick="fnSetWaiting();" class="btn-s-gray">대기 신청<span class="pc-only">하기</span></a>
									</div>
								</div>
								<div class="notice-txt">
									<h4 class="point-txt">
										<span>i</span> 원하시는 날짜가 이미 마감되었다면?
									</h4>
									<p>
										컨설팅을 원하시는 학원을 선택하여 <br class="mo-only">대기 신청을 해주세요.<br class="pc-only"> 학원별 컨설팅 예약 가능한 일정이 확보되는 대로 담당자가 별도 연락드립니다.
									</p>
								</div>
							</div>
							<p class="r-tit">컨설턴트 선택</p>
							<div id="consultantBox" class="btn-list ver02">
							</div>
							<p class="r-tit">날짜/시간 선택</p>
							<div id="calendarBox" class="calendar-wrap" style="display:none;">
								<div class="re-calendar">
									<ul class="cal-top">
										<li class="mid">
											<button type="button" class="prev" onclick="preMonth();">전달</button>
											<p id="calender_title"><%=baseYear%>년 <%=baseMonth%>월</p>
											<button type="button" class="next" onclick="nextMonth();">다음달</button>
										</li>
									</ul>
									<div id="calendar">
									<%
									If IsArray(arrCalendar) And Not IsNull(arrCalendar) Then
            							CalendarMax = UBound(arrCalendar, 2)
									%>
										<table>
											<colgroup>
												<col width="*">
												<col width="14.28%">
												<col width="14.28%">
												<col width="14.28%">
												<col width="14.28%">
												<col width="14.28%">
												<col width="14.28%">
											</colgroup>
											<thead>
												<tr>
													<th>일</th>
													<th>월</th>
													<th>화</th>
													<th>수</th>
													<th>목</th>
													<th>금</th>
													<th>토</th>
												</tr>
											</thead>
											<tbody>
											<%
											For i = 0 To CalendarMax
												CalendarYear    = arrCalendar(0, i)
												CalendarMonth   = arrCalendar(1, i)

												If i > 0 And (CalendarYear <> tmpYear Or CalendarMonth <> tmpMonth) Then
											%>
													</tbody><tbody class="non-active">
											<%
												End If
											%>
												<tr>
												<%
												For j = 2 To UBound(arrCalendar)
													CalendarDay = arrCalendar(j, i)
													CalendarDate = DateSerial(CalendarYear, CalendarMonth, CalendarDay)

													If CalendarDay = 0 Then
												%>
														<td></td>
												<%
													Else
												%>
														<td>
															<div>
																<a href="javascript:;" data-cd="<%=CalendarDate%>"><%=CalendarDay%></a>
															</div>
														</td>
												<%
													End If
												Next
												%>
												</tr>
											<%
												tmpYear = CalendarYear
												tmpMonth = CalendarMonth
											Next
											%>
											</tbody>
										</table>
									<%End If%>

									</div>
									<div class="cal-caption">
										<ul>
											<li>예약 가능한 날짜</li>
											<li>선택한 날짜</li>
											<li>예약 마감</li>
											<li>예약 완료</li>
										</ul>
									</div>
								</div>
								<div class="sel-time">
									<p>시간 선택</p>
									<ul id="timeBox" class="btn-list">
									</ul>
								</div>
							</div>
						</div>

						<%If Not bReserv Then%>
							<div class="btn-wrap">
								<a href="javascript:;" onclick="fnGetCampus();" class="btn-b-wh">선택사항 초기화</a>
								<a href="javascript:;" onclick="fnPay();" class="btn-b-wh on">결제하기</a>
							</div>
						<%End If%>
					</div>
				</div>
			</div>
		<%Else%>
			<div class="cont05" style="display:none;">
				<div class="inner">
				</div>
			</div>
		<%End If%>
	</div>
	<!-- //tab02 -->


</div>

<script type="text/javascript" src="/russel/public/jquery/jquery-1.8.3.min.js"></script>
<script src="/common/js/swiper.min.js"></script>
<script src="/common/js/aos.js"></script>
<script src="./ui.js"></script>

<script>
	var _param = "";

	$.ajaxSetup({
		type    : 'post',
		async   : false,
		cache   : false
	});

	$(document).ready(function() {
		<%If gLoginOk Then%>
			<%If Not bReserv And Not bWaiting Then%>
				fnGetCampus();
			<%ElseIf bReserv Then%>
				fnGetCampus().then(function() {
					return fnGetConsultant();
				}).then(function() {
					return fnGetCalendar();
				}).then(function() {
					fnGetTime();
				});
			<%End If%>
		<%End If%>
	});

	$(window).on('pageshow', function(event) {
		if (event.originalEvent.persisted || (window.performance && window.performance.navigation.type == 2)) {
			if (!sessionStorage.getItem('pageReloaded')) {
				sessionStorage.setItem('pageReloaded', 'true');
				window.location.reload();
			} else {
				sessionStorage.removeItem('pageReloaded');
			}
		}
	});

	$(document).on('click', '#timeBox li a', function() {
		if ($(this).hasClass('r-able')) {
			$(this).parent().siblings().each(function() {
				var obj = $(this).children('a');
				$(obj).removeClass().addClass($(obj).attr('data-class'));
			});

			$(this).addClass('r-active').removeClass('r-able');
		}
	});

	// 온라인 문의 팝업
	function fn_qnaGo() {
		<%If Not gLoginOk Then%>
			location.href = '<%=urlLogin%>?rtnUrl=<%=urlQna%>';
		<%Else%>
			<%If mobileChk = "Y" Then%>
				window.open('<%=urlMainMobile & urlQna%>');
			<%Else%>
				window.open('<%=urlQna%>');
			<%End If%>
		<%End If%>
	}


	//상세 정보 등록 확인
	function fn_historyGo(){
		<%If Not bReserv And Not bWaiting Then%>
			alert('온라인 접수 후 등록 가능합니다.');
		<%Else%>
			window.open('./popup.asp','online_reg','scrollbars=yes,width=857,height=1500,top=0');
		<%End IF%>
	}

	// 대학검색 팝업
	(function($){
		$.fn.placeholder = function(){
			return this.each(function(){
				var root = $(this);
				root.find('input').focusin(function(){
					$(this).closest(root).find('label').hide();
				});
				root.find('input').focusout(function(){
					if($(this).val().length == 0){
						$(this).closest(root).find('label').show();
					};
				});
				if(root.find('input').val().length > 0){
					root.find('label').hide();
				};
			});
		};
		$('.searchBox').placeholder();
	})(jQuery);

	// 로그인 연결
	function fn_loginGo() {
		<%If Not gLoginOk Then%>
			alert("로그인 후 이용가능합니다.");
			location.href = '<%=urlLogin%>?rtnUrl=<%=rtnUrl%>';
			return;
		<%Else%>
			window.open('/intro/2024/consulting_susi/index.asp')
		<%End If%>
	}


    //aos fadeup 효과
    AOS.init({
		offset: 200,
		duration: 500,
		easing: 'ease-in-sine',
		delay: 0,
		once: true
	});

	/*======== 캘린더 년월 변화 ========*/
	function preMonth() {
		//달력변화
		var $currentActive = $('tbody:not(.non-active)');
		var $prevActive = $currentActive.prev('tbody');

		if ($prevActive.length) {
			$currentActive.addClass('non-active');
			$prevActive.removeClass('non-active');

			var strDate = $('#calendar').find('tbody:not(.non-active) div a[data-cd]').eq(0).attr('data-cd');
			var yearMonth = new Date(strDate);
			var year = yearMonth.getFullYear();
			var month = yearMonth.getMonth() + 1;

			$('#calender_title').text(year + '년 ' + month + '월');
		}
	}
	function nextMonth() {
		//달력변화
		var $currentActive = $('tbody:not(.non-active)');
		var $nextActive = $currentActive.next('tbody');

		if ($nextActive.length) {
			$currentActive.addClass('non-active');
			$nextActive.removeClass('non-active');

			var strDate = $('#calendar').find('tbody:not(.non-active) div a[data-cd]').eq(0).attr('data-cd');
			var yearMonth = new Date(strDate);
			var year = yearMonth.getFullYear();
			var month = yearMonth.getMonth() + 1;

			$('#calender_title').text(year + '년 ' + month + '월');
		}
	}
	/*//======== 캘린더 년월 변화 ========*/

	function fnReset(flg) {
		if (flg == 0) {
			$('#campusBox').empty();
			$('#waitingCampus').empty();
			$('#waitingBox').hide();
		} else if (flg == 1) {
			$('#consultantBox').empty();
		} else if (flg == 2) {
			$('#calendarBox').hide();
			$('#calendar table tr td div').removeClass().removeAttr('data-class');
			$('#calendar table tbody').removeClass().not(':eq(0)').addClass('non-active');

			var strDate = $('#calendar').find('tbody:not(.non-active) div a[data-cd]').eq(0).attr('data-cd');
			var yearMonth = new Date(strDate);
			var year = yearMonth.getFullYear();
			var month = yearMonth.getMonth() + 1;

			$('#calender_title').text(year + '년 ' + month + '월');
		} else {
			$('#timeBox').empty();
		}
	}

	function fnGetCampus() {
		<%If gLoginOk And Not bWaiting Then%>
			return new Promise(function(resolve, reject) {
				fnReset(0);
				fnReset(1);
				fnReset(2);
				fnReset(3);

				_param = '';
				_param += 'mode=1';

				var result = fnSetAjax('html');

				if (result.length) {
					$('#campusBox').html(result);

					<%If Not bReserv Then%>
						var optionHtml = '<option value="">학원을 선택하세요.</option>';

						if ($('#campusBox a[data-waiting="Y"').length > 0) {
							$('#campusBox a[data-waiting="Y"').each(function() {
								var text = $(this).text();
								var data = $(this).attr('data-cd');
								optionHtml += '<option value="'+ data +'">'+ text +'</option>';
							});

							$('#waitingCampus').append(optionHtml);
							$('#waitingBox').show();
						}
					<%End If%>

					resolve();
				}
			});
		<%End If%>
	}

	function fnGetConsultant(obj) {
		<%If gLoginOk And Not bWaiting Then%>
			return new Promise(function(resolve, reject) {
				fnReset(1);
				fnReset(2);
				fnReset(3);

				<%If bReserv Then%>
					var selectClass = '.r-complete';
				<%Else%>
					var selectClass = '.r-active';
				<%End If%>

				if ($(obj).hasClass('r-able')) {
					$(obj).siblings().each(function() {
						$(this).removeClass().addClass($(this).attr('data-class'));
					});

					$(obj).addClass('r-active').removeClass('r-able');
				}

				var campusCode = $('#campusBox '+ selectClass).attr('data-cd');

				_param = '';
				_param += 'mode=2';
				_param += '&campusCode='+ campusCode;

				var result = fnSetAjax('html');
				$('#consultantBox').html(result);
				resolve();
			});
		<%End If%>
	}

	function fnGetCalendar(obj) {
		<%If gLoginOk And Not bWaiting Then%>
			return new Promise(function(resolve, reject) {
				fnReset(2);
				fnReset(3);

				<%If bReserv Then%>
					var selectClass = '.r-complete';
				<%Else%>
					var selectClass = '.r-active';
				<%End If%>

				if ($(obj).hasClass('r-able')) {
					$(obj).siblings().each(function() {
						$(this).removeClass().addClass($(this).attr('data-class'));
					});

					$(obj).addClass('r-active').removeClass('r-able');
				}

				var campusCode = $('#campusBox '+ selectClass).attr('data-cd');
				var ccIdx = $('#consultantBox '+ selectClass).attr('data-cd');

				_param = '';
				_param += 'mode=3';
				_param += '&campusCode='+ campusCode;
				_param += '&ccIdx='+ ccIdx;

				var result = fnSetAjax('json');

				if (result.length) {
					result.forEach(function(item) {
						dataDate = item.DataDate;
						dataDtlCnt = parseInt(item.DataDtlCnt);
						dataReservCnt = parseInt(item.DataReservCnt);
						dataMyCnt = parseInt(item.DataMyCnt);

						<%If bReserv Then%>
							if (dataMyCnt > 0) {
								$('#calendar table tr td div a[data-cd="'+ dataDate +'"]').parent().addClass('r-complete');
								$('#calendar table tr td div a[data-cd="'+ dataDate +'"]').parent().attr('data-class', 'r-complete');
							}
						<%Else%>
							if (dataDtlCnt > dataReservCnt) {
								$('#calendar table tr td div a[data-cd="'+ dataDate +'"]').parent().addClass('r-able');
								$('#calendar table tr td div a[data-cd="'+ dataDate +'"]').parent().attr('data-class', 'r-able');
								$('#calendar table tr td div a[data-cd="'+ dataDate +'"]').click(function(event) {
									event.preventDefault();
									fnGetTime(this);
								});
							} else {
								$('#calendar table tr td div a[data-cd="'+ dataDate +'"]').parent().addClass('r-disable');
								$('#calendar table tr td div a[data-cd="'+ dataDate +'"]').parent().attr('data-class', 'r-disable');
							}
						<%End If%>
					});
				}

				$('#calendarBox').show();
				resolve();
			});
		<%End If%>
	}

	function fnGetTime(obj) {
		<%If gLoginOk And Not bWaiting Then%>
			return new Promise(function(resolve, reject) {
				fnReset(3);

				<%If bReserv Then%>
					var selectClass = '.r-complete';
				<%Else%>
					var selectClass = '.r-active';
				<%End If%>

				if ($(obj).parent().hasClass('r-able')) {
					$('#calendar div').each(function() {
						$(this).removeClass().addClass($(this).attr('data-class'));
					});

					$(obj).parent().addClass('r-active').removeClass('r-able');
				}

				var campusCode = $('#campusBox '+ selectClass).attr('data-cd');
				var ccIdx = $('#consultantBox '+ selectClass).attr('data-cd');
				var reservDate = $('#calendar table tr td '+ selectClass + ' a').attr('data-cd');

				_param = '';
				_param += 'mode=4';
				_param += '&campusCode='+ campusCode;
				_param += '&ccIdx='+ ccIdx;
				_param += '&reservDate='+ reservDate;

				var result = fnSetAjax('html');
				$('#timeBox').html(result);
				resolve();
			});
		<%End If%>
	}

	function fnPay() {
		<%If gLoginMemKind <> "1" Then%>
			alert("학생 ID로만 예약 가능합니다.");
		<%Else%>
			if ($('.r-active').length < 4) {
				alert('모든 항목 선택 후 결제가 가능합니다.');
				return;
			}

			if (fnChk()) {
				var dtlIdx = $('#timeBox .r-active').attr('data-cd');

				if (dtlIdx > 0) {
					_param = '';
					_param += 'mode=6';
					_param += '&dtlIdx='+ dtlIdx;

					var result = fnSetAjax('text');

					if (result.length) {
						window.open('<%=urlPay%>?Mode=Register&Cole_Cd='+result,'popup','width=460,height=320,left=500,top=500,scrollbars=yes')
					}
				}
			} else {
				alert('이미 마감된 일정입니다.\n다른 일정을 선택해주세요.');
				fnReset();
			}
		<%End If%>
	}

	function fnChk() {
		var bChk = false;

		var dtlIdx = $('#timeBox .r-active').attr('data-cd');

		if (dtlIdx > 0) {
			_param = '';
			_param += 'mode=5';
			_param += '&dtlIdx='+ dtlIdx;

			var result = fnSetAjax('text');

			if (result.length) {
				if (result == 'TRUE') {
					bChk = true;
				}
			}
		}

		return bChk;
	}

	function fnSetWaiting() {
		var campusCode = $('#waitingCampus').val();

		if (campusCode != '') {
			if (confirm('대기 신청하시겠습니까?')) {
				_param = '';
				_param += 'mode=7';
				_param += '&campusCode='+ campusCode;

				var result = fnSetAjax('text');

				if (result.length) {
					if (result == 'TRUE') {
						location.reload();
					}
				}
			}
		} else {
			alert('학원을 선택해주세요.');
		}
	}

	function fnSetAjax(type) {
		var strResult;
		var param = "";

		param += _param;

		$.ajax({
			data    : param,
			dataType: type,
			url     : 'index_ax.asp',
			success : function(result) {
				strResult = result;
			},
			error   : function(xhr, status, error) {
				//location.reload();
			}
		});

		return strResult;
	}
</script>
</body>
</html>