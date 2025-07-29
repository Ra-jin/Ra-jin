<!DOCTYPE html>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/Member/login_check.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<html lang="ko">
<head>
	<!-- #include virtual = "/include/head.asp" -->
	<!-- #include virtual = "/include/barcode.asp" -->
</head>
<body class="bg-gray main-body">
<div class="wrap">
	<header>



		<p class="logo"><a href="#"><img src="<%=Application("img_path_russel")%>/myinfo/common/logo.png" alt="러셀" /></a></a></p>
		<ul class="info">
			<li class="student"><span class="name"><%=gLoginMemName%></span><span class="mo-no">(<%=nRmsMemCd%>)</span></li>
			<li><a href="javascript:void(0);" onclick="javascript:location.href='<%=header_addr2%>/russel/member/logout.asp?rtnUrl=<%=header_addr2%>';" class="btnLogout mo-no"><span>로그아웃</span></a></li>
		</ul>
		<!-- 모바일 화면 -->
		<div class="my-info">
			<p><%=gLoginMemName%>(<%=nRmsMemCd%>) <br><%=G_AMS_ACA_NM%>&nbsp;<%=G_AMS_STATE_NM%></p>
			<a href="javascript:void(0);" onclick="javascript:location.href='<%=header_addr2%>/russel/member/logout.asp?rtnUrl=<%=header_addr2%>';" class="btnLogout">로그아웃</a>
		</div>
		<!-- 모바일 화면 -->

	</header>
	<script>
		$(".student").on("click",function(){
			$(".my-info, .student").toggleClass("on");
		});

	</script>

	<script>
	$(function(){
		$('.mainBox_W > div a').on('click', function(){
			$(this).parent().addClass('on');
			$(this).parent().siblings().removeClass('on');
			//교재구매 탭 클릭시 안내팝업 on/off
			if($(".mainBox_W_N").hasClass('on')){
				$('.modal-bg').addClass('active')
			}
			else{
				$('.modal-bg').removeClass('active')
			}
		});
	})

	//안내 모달팝업
	function modalControl(action) {
		var today = new Date();
		var todayKey = "modal-hide-" + today.getFullYear() + "-" + (today.getMonth() + 1) + "-" + today.getDate();
		var modal = document.getElementById('modal-popup');

		if (action === 'close') {
			$(modal).removeClass('active');
		} else if (action === 'todayClose') {
			localStorage.setItem(todayKey, 'true');
			modal.style.display = 'none';
		}
	}

	//오늘하루 안보기 적용했을때
	window.addEventListener('DOMContentLoaded', function () {
		var today = new Date();
		var todayKey = "modal-hide-" + today.getFullYear() + "-" + (today.getMonth() + 1) + "-" + today.getDate();
		var modal = document.getElementById('modal-popup');

		if (localStorage.getItem(todayKey) === 'true') {
			modal.style.display = 'none';
		}
	});
	</script>
	<!-- 시스템 변경 안내 모달 팝업 -->
	<div class="modal-bg" id="modal-popup" >
		<div class="modal-box">
			<p>
				<img class="only-pc" src="<%=Application("img_path_russel")%>/myinfo/common/omega_popup.jpg" alt=""/>
				<img class="only-mo" src="<%=Application("img_path_russel")%>/myinfo/common/omega_popup_mo.jpg" alt=""/>
			</p>
			<div class="btn-box">
				<button class="modal-btn today" onclick="modalControl('todayClose')">오늘 하루 보지 않기</button>
				<button class="modal-btn close" onclick="modalControl('close')">닫기</button>
			</div>
		</div>
	</div>
	<!--// 시스템 변경 안내 모달 팝업 -->

	<%
		' 바자관 등록대기 Count
		strSQL = ""
		strSQL = strSQL & " SELECT		COUNT(1) AS CNT_BAZA_WILL_PAY "
		strSQL = strSQL & " FROM		AMS_GRP_HIS A WITH(NOLOCK) "
		strSQL = strSQL & " INNER JOIN	AMS_LEC_SUB B WITH(NOLOCK) ON A.GH_COLE_CD = B.LS_PRE_COLE_CD "
		strSQL = strSQL & " INNER JOIN	AMS_COU_LEC C WITH(NOLOCK) ON B.LS_COLE_CD = C.CL_COLE_CD "
		strSQL = strSQL & " INNER JOIN	AMS_LEC_MAS D WITH(NOLOCK) ON C.CL_LEC_CD = D.LM_LEC_CD AND C.CL_ACA_CD = D.LM_ACA_CD "
		strSQL = strSQL & " LEFT JOIN	AMS_GRP_HIS E WITH(NOLOCK) ON C.CL_COLE_CD = E.GH_COLE_CD AND A.GH_MEM_CD = E.GH_MEM_CD AND E.GH_BE_CD = 11 AND E.GH_REFUND_CD IS NULL "
		strSQL = strSQL & " LEFT JOIN	( "
		strSQL = strSQL & " 					SELECT		GH_COLE_CD, COUNT(1) AS TOTAL_CNT "
		strSQL = strSQL & " 								, SUM(CASE WHEN BB.SL_ON_YN = 'Y' THEN 1 ELSE 0 END) AS ON_CNT "
		strSQL = strSQL & " 					FROM		AMS_GRP_HIS AA WITH(NOLOCK) "
		strSQL = strSQL & " 					INNER JOIN	AMS_SALE_LEC BB WITH(NOLOCK) ON AA.GH_SALE_CD = BB.SL_SALE_CD "
		strSQL = strSQL & " 					WHERE		1=1 "
		strSQL = strSQL & " 					AND			AA.GH_BE_CD = 11 "
		strSQL = strSQL & " 					AND			AA.GH_REFUND_CD IS NULL "
		strSQL = strSQL & " 					GROUP BY	AA.GH_COLE_CD "
		strSQL = strSQL & " 				) F ON C.CL_COLE_CD = F.GH_COLE_CD "
		strSQL = strSQL & " WHERE		1=1 "
		strSQL = strSQL & " AND			A.GH_MEM_CD = '" & nRmsMemCd & "' "
		strSQL = strSQL & " AND			A.GH_BE_CD = 11 "
		strSQL = strSQL & " AND			A.GH_REFUND_CD IS NULL "
		strSQL = strSQL & " AND			A.GH_REC_SDT <= GETDATE() AND DATEADD(d, 1, A.GH_REC_EDT) > GETDATE() "
		strSQL = strSQL & " AND			D.LM_CLS_CD = 14 AND D.LM_DTL_CD = 14 "
		strSQL = strSQL & " AND			C.CL_HIGH_YN = 4 "
		strSQL = strSQL & " AND			E.GH_COLE_CD IS NULL "
		strSQL = strSQL & " AND			C.CL_ONL_STAT = 'Y' "
		strSQL = strSQL & " AND			C.CL_ONL_SDT <= GETDATE() AND DATEADD(d, 1, C.CL_ONL_EDT) > GETDATE() "
		strSQL = strSQL & " AND			C.CL_MEM_NO > ISNULL(F.TOTAL_CNT, 0) "
		strSQL = strSQL & " AND			C.CL_MEMON_NO > ISNULL(F.ON_CNT, 0) "

		set RS = amsobjdb.sqlQuery(strSql,2)

		iCntBazaWillPay = 0
		If not (RS.eof or RS.bof) then
			iCntBazaWillPay = RS("CNT_BAZA_WILL_PAY")
		End If
		RS.close
		set RS = nothing

		' 바자관 등록완료 Count
		strSQL = ""
		strSQL = strSQL & " SELECT		COUNT(1) AS CNT_BAZA_PAID"
		strSQL = strSQL & " FROM		AMS_GRP_HIS A WITH(NOLOCK) "
		strSQL = strSQL & " INNER JOIN	AMS_COU_LEC B WITH(NOLOCK) ON A.GH_COLE_CD = B.CL_COLE_CD "
		strSQL = strSQL & " INNER JOIN	AMS_LEC_MAS C WITH(NOLOCK) ON B.CL_LEC_CD = C.LM_LEC_CD AND B.CL_ACA_CD = C.LM_ACA_CD "
		strSQL = strSQL & " INNER JOIN	AMS_SALE_LEC D WITH(NOLOCK) ON A.GH_SALE_CD = D.SL_SALE_CD "
		strSQL = strSQL & " WHERE		1=1 "
		strSQL = strSQL & " AND			A.GH_MEM_CD = '" & nRmsMemCd & "' "
		strSQL = strSQL & " AND			A.GH_BE_CD = 11 "
		strSQL = strSQL & " AND			A.GH_REFUND_CD IS NULL "
		strSQL = strSQL & " AND			B.CL_HIGH_YN = 4 "
		strSQL = strSQL & " AND			C.LM_CLS_CD = 14 "
		strSQL = strSQL & " AND			C.LM_DTL_CD = 14 "
		strSQL = strSQL & " AND			YEAR(CL_LEC_SDT) <= YEAR(GETDATE()) AND YEAR(CL_LEC_EDT) >= YEAR(GETDATE()) "
		strSQL = strSQL & " AND			D.SL_ON_YN = 'Y' "
		set RS = amsobjdb.sqlQuery(strSql,2)

		iCntBazaPaid = 0
		If not (RS.eof or RS.bof) then
			iCntBazaPaid = RS("CNT_BAZA_PAID")
		End If
		RS.close
		set RS = nothing

		iCntBookTotal = 0
		iCntBookNoSale = 0
		iCntOmegaNoSale = 0
		iCntBookNoRec = 0

		' 교재 구매가능
		strSQL = ""
		strSQL = strSQL & " SELECT		1 "
		strSQL = strSQL & " FROM		AMS_GRP_HIS A WITH(NOLOCK) "
		strSQL = strSQL & " INNER JOIN	AMS_COU_LEC B WITH(NOLOCK) ON A.GH_COLE_CD = B.CL_COLE_CD "
		strSQL = strSQL & " INNER JOIN	AMS_LEC_MAS C WITH(NOLOCK) ON B.CL_LEC_CD = C.LM_LEC_CD "
		strSQL = strSQL & " INNER JOIN  AMS_COURSE_MAS D WITH (NOLOCK) ON B.CL_COU_CD = D.CM_COURSE_CD "
		strSQL = strSQL & " INNER JOIN  AMS_LEC_BOOK E WITH (NOLOCK) ON B.CL_COLE_CD = E.LB_COLE_CD AND B.CL_ACA_CD = E.LB_ACA_CD AND B.CL_LEC_CD = C.LM_LEC_CD "
		strSQL = strSQL & " INNER JOIN  AMS_BOOK_MAS F WITH (NOLOCK) ON E.LB_BOOK_CD = F.BM_BOOK_CD "
		strSql = strSql & " INNER JOIN	AMS_SALE_LEC SL WITH(NOLOCK) ON A.GH_SALE_CD = SL.SL_SALE_CD "
		strSql = strSql & " INNER JOIN	( "
		strSql = strSql & " 				SELECT SH_SET_CD  , ( ISNULL( SUM(SH_SET_AMT), 0) - (  ISNULL(SUM(SH_RECI_AMT), 0)  - ISNULL(SUM(SH_REF_AMT), 0) ) ) AS MINAP_AMT "
		strSql = strSql & " 				FROM AMS_SET_HIS (nolock) "
		strSql = strSql & " 				GROUP BY SH_SET_CD "
		strSql = strSql & " 			) AS T2 ON SL.SL_SET_CD = T2.SH_SET_CD "
		strSQL = strSQL & " LEFT JOIN	( "
		strSQL = strSQL & " 				SELECT EA.SB_MEM_CD, EA.SB_BOOK_CD, EA.SB_SALE_ST, EA.SB_RECEIVE_YN "
		strSQL = strSQL & " 				FROM AMS_SALE_BOOK EA WITH (NOLOCK) "
		strSQL = strSQL & " 				INNER JOIN ( "
		strSQL = strSQL & " 					SELECT MAX(SB_SB_CD) AS SB_SB_CD FROM AMS_SALE_BOOK WITH (NOLOCK)  "
		strSQL = strSQL & " 					WHERE SB_MEM_CD = '" & nRmsMemCd & "' "
		strSQL = strSQL & "                           AND SB_SALE_ST = 11 "
		strSQL = strSQL & " 					GROUP BY SB_MEM_CD ,SB_BOOK_CD "
		strSQL = strSQL & " 				) EB ON EA.SB_SB_CD = EB.SB_SB_CD "
		strSQL = strSQL & " 			) G ON A.GH_MEM_CD = G.SB_MEM_CD AND E.LB_BOOK_CD = G.SB_BOOK_CD "
		strSQL = strSQL & " WHERE		1=1 "
		strSQL = strSQL & " AND			A.GH_BE_CD = 11 AND A.GH_REFUND_CD IS NULL "
		strSQL = strSQL & " AND			(C.LM_CLS_CD = 13 OR (C.LM_CLS_CD = 14 AND B.CL_HIGH_YN = 4)) "
		strSQL = strSQL & " AND 		NOT(C.LM_CLS_CD = 14 AND ISNULL(F.BM_TEST_TYPE, 0) = 3) " ' 2025.06.27 바자관 + OMEGA 조합은 제외
		strSQL = strSQL & " AND			(E.LB_SALE_SDT IS NULL OR E.LB_SALE_SDT <= GETDATE()) "
		strSQL = strSQL & " AND			(CASE WHEN E.LB_SALE_EDT IS NULL THEN DATEADD(DD, 1, B.CL_LEC_EDT) ELSE E.LB_SALE_EDT END) >= GETDATE() "
		strSQL = strSQL & " AND			ISNULL(G.SB_SALE_ST, '') <> 11 "
		strSQL = strSQL & " AND			F.BM_SALE_YN = 'Y' "
		strSQL = strSQL & " AND			F.BM_PRO_TYPE IN ('B', 'T') "
		strSQL = strSQL & " AND			T2.MINAP_AMT = 0 "
		strSQL = strSQL & " AND			A.GH_MEM_CD = '" & nRmsMemCd & "' "
		strSQL = strSQL & " GROUP BY	LB_BOOK_CD "
		set RS = amsobjdb.sqlQuery(strSql,2)

		If not (RS.eof or RS.bof) then
			iCntBookNoSale = RS.recordcount
		End If
		RS.close
		set RS = nothing

		' 선택과목 가져오기
		sSelectedSbuect1 = ""
		sSelectedSbuect2 = ""
		i = 1
		strSQL = ""
		strSQL = strSQL & " SELECT		C.* "
		strSQL = strSQL & " FROM		AMS_MEM_DTL A WITH(NOLOCK) "
		strSQL = strSQL & " CROSS APPLY STRING_SPLIT(A.MD_SEL3, '|') AS B "
		strSQL = strSQL & " INNER JOIN	AMS_COM_DTL C WITH(NOLOCK) ON C.CD_COM_CD = 222 AND C.CD_SUB_CODE = B.value "
		strSQL = strSQL & " WHERE		MD_MEM_CD = '" & nRmsMemCd & "'"
		strSQL = strSQL & " AND			C.CD_DTL_CD >= 4000 AND C.CD_DTL_CD < 5000 "
		set RS = amsobjdb.sqlQuery(strSql,3)
		DO WHILE NOT RS.EOF
			if i = 1 then
				sSelectedSbuect1 = RS("CD_DTL_CD")
			elseif i = 2 then
				sSelectedSbuect2 = RS("CD_DTL_CD")
			end if

			i = i + 1
			RS.MoveNext
		Loop
		RS.close
		set RS = nothing

		' 바자관 OMEGA 구매가능
		strSQL = ""
		strSQL = strSQL & " SELECT		1 "
		strSQL = strSQL & " FROM		AMS_GRP_HIS A WITH(NOLOCK) "
		strSQL = strSQL & " INNER JOIN	AMS_COU_LEC B WITH(NOLOCK) ON A.GH_COLE_CD = B.CL_COLE_CD "
		strSQL = strSQL & " INNER JOIN	AMS_LEC_MAS C WITH(NOLOCK) ON B.CL_LEC_CD = C.LM_LEC_CD "
		strSQL = strSQL & " INNER JOIN  AMS_COURSE_MAS D WITH (NOLOCK) ON B.CL_COU_CD = D.CM_COURSE_CD "
		strSQL = strSQL & " INNER JOIN  AMS_LEC_BOOK E WITH (NOLOCK) ON B.CL_COLE_CD = E.LB_COLE_CD AND B.CL_ACA_CD = E.LB_ACA_CD AND B.CL_LEC_CD = C.LM_LEC_CD "
		strSQL = strSQL & " INNER JOIN  AMS_BOOK_MAS F WITH (NOLOCK) ON E.LB_BOOK_CD = F.BM_BOOK_CD "
		strSql = strSql & " INNER JOIN	AMS_SALE_LEC SL WITH(NOLOCK) ON A.GH_SALE_CD = SL.SL_SALE_CD "
		strSql = strSql & " INNER JOIN	( "
		strSql = strSql & " 				SELECT SH_SET_CD  , ( ISNULL( SUM(SH_SET_AMT), 0) - (  ISNULL(SUM(SH_RECI_AMT), 0)  - ISNULL(SUM(SH_REF_AMT), 0) ) ) AS MINAP_AMT "
		strSql = strSql & " 				FROM AMS_SET_HIS (nolock) "
		strSql = strSql & " 				GROUP BY SH_SET_CD "
		strSql = strSql & " 			) AS T2 ON SL.SL_SET_CD = T2.SH_SET_CD "
		strSQL = strSQL & " LEFT JOIN	( "
		strSQL = strSQL & " 				SELECT EA.SB_MEM_CD, EA.SB_BOOK_CD, EA.SB_SALE_ST, EA.SB_RECEIVE_YN "
		strSQL = strSQL & " 				FROM AMS_SALE_BOOK EA WITH (NOLOCK) "
		strSQL = strSQL & " 				INNER JOIN ( "
		strSQL = strSQL & " 					SELECT MAX(SB_SB_CD) AS SB_SB_CD FROM AMS_SALE_BOOK WITH (NOLOCK)  "
		strSQL = strSQL & " 					WHERE SB_MEM_CD = '" & nRmsMemCd & "' "
		strSQL = strSQL & "                           AND SB_SALE_ST = 11 "
		strSQL = strSQL & " 					GROUP BY SB_MEM_CD ,SB_BOOK_CD "
		strSQL = strSQL & " 				) EB ON EA.SB_SB_CD = EB.SB_SB_CD "
		strSQL = strSQL & " 			) G ON A.GH_MEM_CD = G.SB_MEM_CD AND E.LB_BOOK_CD = G.SB_BOOK_CD "
		strSQL = strSQL & " WHERE		1=1 "
		strSQL = strSQL & " AND			A.GH_BE_CD = 11 AND A.GH_REFUND_CD IS NULL "
		strSQL = strSQL & " AND 		C.LM_CLS_CD = 14 AND B.CL_HIGH_YN = 4 AND F.BM_TEST_TYPE = 3 "
		strSQL = strSQL & " AND			(E.LB_SALE_SDT IS NULL OR E.LB_SALE_SDT <= GETDATE()) "
		strSQL = strSQL & " AND			(CASE WHEN E.LB_SALE_EDT IS NULL THEN DATEADD(DD, 1, B.CL_LEC_EDT) ELSE E.LB_SALE_EDT END) >= GETDATE() "
		strSQL = strSQL & " AND			ISNULL(G.SB_SALE_ST, '') <> 11 "
		strSQL = strSQL & " AND			F.BM_SALE_YN = 'Y' "
		strSQL = strSQL & " AND			F.BM_PRO_TYPE = 'T' "
		strSQL = strSQL & " AND			( "
		strSQL = strSQL & " 				F.BM_TEST_SUBJECT < 4000 "
		strSQL = strSQL & " 				OR F.BM_TEST_SUBJECT >= 5000 "
		strSQL = strSQL & " 				OR F.BM_TEST_SUBJECT = 4113 "
		if sSelectedSbuect1 <> "" then
		strSQL = strSQL & " 				OR F.BM_TEST_SUBJECT = '" & sSelectedSbuect1 & "' "
		end if
		if sSelectedSbuect2 <> "" then
		strSQL = strSQL & " 				OR F.BM_TEST_SUBJECT = '" & sSelectedSbuect2 & "' "
		end if
		strSQL = strSQL & " 			) "
		strSQL = strSQL & " AND			T2.MINAP_AMT = 0 "
		strSQL = strSQL & " AND			A.GH_MEM_CD = '" & nRmsMemCd & "' "
		strSQL = strSQL & " GROUP BY	LB_BOOK_CD "
		set RS = amsobjdb.sqlQuery(strSql,2)

		If not (RS.eof or RS.bof) then
			iCntOmegaNoSale = RS.recordcount
		End If
		RS.close
		set RS = nothing


		' 교재 미수령
		strSQL = ""
		strSQL = strSQL & " SELECT		1 "
		strSQL = strSQL & " FROM		AMS_GRP_HIS A WITH(NOLOCK) "
		strSQL = strSQL & " INNER JOIN	AMS_COU_LEC B WITH(NOLOCK) ON A.GH_COLE_CD = B.CL_COLE_CD "
		strSQL = strSQL & " INNER JOIN	AMS_LEC_MAS C WITH(NOLOCK) ON B.CL_LEC_CD = C.LM_LEC_CD "
		strSQL = strSQL & " INNER JOIN AMS_COURSE_MAS D WITH (NOLOCK) ON B.CL_COU_CD = D.CM_COURSE_CD "
		strSQL = strSQL & " INNER JOIN AMS_LEC_BOOK E WITH (NOLOCK) ON B.CL_COLE_CD = E.LB_COLE_CD AND B.CL_ACA_CD = E.LB_ACA_CD AND B.CL_LEC_CD = C.LM_LEC_CD "
		strSQL = strSQL & " INNER JOIN AMS_BOOK_MAS F WITH (NOLOCK) ON E.LB_BOOK_CD = F.BM_BOOK_CD "
		strSQL = strSQL & " LEFT JOIN	( "
		strSQL = strSQL & " 				SELECT EA.SB_MEM_CD, EA.SB_BOOK_CD, EA.SB_SALE_ST, EA.SB_RECEIVE_YN "
		strSQL = strSQL & " 				FROM AMS_SALE_BOOK EA WITH (NOLOCK) "
		strSQL = strSQL & " 				INNER JOIN ( "
		strSQL = strSQL & " 					SELECT MAX(SB_SB_CD) AS SB_SB_CD FROM AMS_SALE_BOOK WITH (NOLOCK)  "
		strSQL = strSQL & " 					WHERE SB_MEM_CD = '" & nRmsMemCd & "' "
		strSQL = strSQL & "                           AND SB_SALE_ST = 11 "
		strSQL = strSQL & " 					GROUP BY SB_MEM_CD ,SB_BOOK_CD "
		strSQL = strSQL & " 				) EB ON EA.SB_SB_CD = EB.SB_SB_CD "
		strSQL = strSQL & " 				WHERE dbo.UF_GET_SET_INFO(4, EA.SB_SET_CD) = 0 "
		strSQL = strSQL & " 			) G ON A.GH_MEM_CD = G.SB_MEM_CD AND E.LB_BOOK_CD = G.SB_BOOK_CD "
		strSQL = strSQL & " WHERE		1=1 "
		strSQL = strSQL & " AND			A.GH_BE_CD = 11 "
		strSQL = strSQL & " AND			(C.LM_CLS_CD = 13 OR (C.LM_CLS_CD = 14 AND B.CL_HIGH_YN = 4)) "
		strSQL = strSQL & " AND			DATEDIFF(DD, A.GH_REG_DT, GETDATE()) <= 90 "
		strSQL = strSQL & " AND			ISNULL(G.SB_SALE_ST, '') = 11 "
		strSQL = strSQL & " AND			ISNULL(G.SB_RECEIVE_YN, '') = 'N' "
		strSQL = strSQL & " AND			F.BM_PRO_TYPE IN ('B', 'T') "
		strSQL = strSQL & " AND			A.GH_MEM_CD = '" & nRmsMemCd & "' "
		strSQL = strSQL & " GROUP BY	LB_BOOK_CD "
		set RS = amsobjdb.sqlQuery(strSql,2)

		If not (RS.eof or RS.bof) then
			iCntBookNoRec = RS.recordcount
		End If
		RS.close
		set RS = nothing

		iCntBookTotal = iCntBookNoSale + iCntOmegaNoSale + iCntBookNoRec

		strSQL = " EXEC SP_SET_MG_RESERVATION_LIST '"& nRmsMemCd &"' "
		Set RS = russelobjdb.sqlQuery(strSQL,3)
		Dim arrList : arrList = Null
		If Not (RS.EoF And RS.BoF) Then
		arrList = RS.getrows
		End If

		RS.close
		Set RS = Nothing


		' 좌석 예약 현황 COUNT
		nReCnt = 0
		nNoCnt = 0
		If IsNull(arrList) = False Then
			For nLoopCnt = 0 To UBound(arrList,2)
				MEM_CODE = arrList(13,nLoopCnt)
				If MEM_CODE = "0" Then
					nNoCnt = nNoCnt + 1
				Else
					nReCnt = nReCnt + 1
				End if
			Next
		End if

		' 성적 COUNT
		strSQL = ""
		strSQL = strSQL & " SELECT		ISNULL(SUM(1), 0) AS CNT_SCORE, ISNULL(SUM(CASE WHEN C.TS_TRY_CD IS NOT NULL THEN 1 ELSE 0 END), 0) AS CNT_CONSULT "
		strSQL = strSQL & " FROM		AMS_TRY_MAS A (NOLOCK) "
		strSQL = strSQL & " INNER JOIN	AMS_MEM_SCORE B (NOLOCK) ON A.TM_TRY_CD = B.MS_TRY_CD "
		strSQL = strSQL & " LEFT JOIN	AMS_TRY_SUMMARY C (NOLOCK) ON A.TM_TRY_CD = C.TS_TRY_CD "
		strSQL = strSQL & " WHERE		YEAR(TM_REG_DT) = YEAR(GETDATE()) "
		strSQL = strSQL & " AND			B.MS_MEM_CD = '" & nRmsMemCd & "' "

		set RS = amsobjdb.sqlQuery(strSql,2)

		iCntScore = 0
		iCntConsult = 0
		If not (RS.eof or RS.bof) then
			iCntScore = RS("CNT_SCORE")
			iCntConsult = RS("CNT_CONSULT")
		End If
		RS.close
		set RS = nothing

		' RMS 재원생모의고사 메뉴 성적 COUNT 추가 (2022-05-09)
		strSQL = ""
		strSQL = strSQL & " SELECT		COUNT(JD_MEM_CD) AS CNT_EXAM  "
		strSQL = strSQL & " FROM		AMS_JTRY_DTL WITH (NOLOCK) "
		strSQL = strSQL & " WHERE		JD_MEM_CD = '" & nRmsMemCd & "' "

		set RS = amsobjdb.sqlQuery(strSql,2)

		iCntJaewonExam = 0
		If not (RS.eof or RS.bof) then
			iCntJaewonExam = RS("CNT_EXAM")
		End If
		RS.close
		set RS = nothing

		' 식권 COUNT
		strSQL = ""
		strSQL = strSQL & " SELECT		ISNULL(SUM(CASE WHEN C.MR_SB_CD IS NULL THEN 1 ELSE 0 END), 0) AS CNT_HAVING "
		strSQL = strSQL & " 			, ISNULL(SUM(CASE WHEN C.MR_SB_CD IS NOT NULL AND C.MR_MEAL_DT > DATEADD(D, -1, GETDATE()) THEN 1 ELSE 0 END), 0) AS CNT_RESERVATION "
		strSQL = strSQL & " FROM		AMS_SALE_BOOK	A (NOLOCK) "
		strSQL = strSQL & " INNER JOIN	AMS_BOOK_MAS	B (NOLOCK) ON SB_BOOK_CD = BM_BOOK_CD "
		strSQL = strSQL & " LEFT JOIN	AMS_MEAL_RESERVATION C (NOLOCK) ON SB_SB_CD = MR_SB_CD "
		strSQL = strSQL & " WHERE		1=1 "
		strSQL = strSQL & " AND			A.SB_MEM_CD = '" & nRmsMemCd & "' "
		strSQL = strSQL & " AND			A.SB_SALE_ST = 11 "
		strSQL = strSQL & " AND			A.SB_REF_DT IS NULL "
		strSQL = strSQL & " AND			B.BM_PRO_TYPE = 'F' "

		set RS = amsobjdb.sqlQuery(strSql,2)

		iCntHaving = 0
		iCntReservation = 0
		If not (RS.eof or RS.bof) then
			iCntHaving = RS("CNT_HAVING")
			iCntReservation = RS("CNT_RESERVATION")
		End If
		RS.close
		set RS = nothing
	%>
	<section>
		<div class="mainBox">
			<!-- 바코드 -->
			<div class="pc-no">
				<div class="barcode"><a href="" class="btn-barcode"><span></span>출석체크 바코드</a></div>
			</div>
			<div class="mainBox_W">
				<div class="mainBox_W_ST on bt-main">
					<a href="#">
						<span class="alarm"><span><%=iCntBazaWillPay%></span></span>
						<span class="p">바자관 재등록</span>
					</a>
				</div>
				<div class="mainBox_W_F bt-main">
					<a href="#">
						<span class="alarm"><span><%=iCntHaving + iCntReservation%></span></span>
						<span class="p">식권예약</span>
					</a>
				</div>
				<div class="mainBox_W_N bt-main">
					<a href="#">
						<span class="alarm"><span>
							<% if iCntBookTotal > 100 then
								Response.Write "99+"
							else
								Response.Write iCntBookTotal
							end if %>
						</span></span>
						<span class="p">교재구매</span>
					</a>
				</div>
				<div class="mainBox_W_S bt-main">
					<a href="#">
						<span class="alarm"><span><%=nNoCnt + nReCnt%></span></span>
						<span class="p">단과좌석</span>
					</a>
				</div>
				<div class="mainBox_W_R bt-main">
					<a href="#">
						<span class="alarm"><span><%=iCntScore + iCntConsult + iCntJaewonExam%></span></span>
						<span class="p">성적조회</span>
					</a>
				</div>

			</div>
			<div class="mainBox_E">
				<div class="mainBox_R_W">
					<a href="/study_hall/enroll.asp">
						<span class="title">바자관 등록대기</span>
						<span class="amount"><%=iCntBazaWillPay%></span>
					</a>
				</div>
				<div class="mainBox_R_E">
					<a href="/study_hall/fin.asp">
						<span class="title">바자관 등록완료</span>
						<span class="amount"><%=iCntBazaPaid%></span>
					</a>
				</div>
			</div>
			<div class="mainBox_E"  style="display:none;">
				<div class="mainBox_R_W">
					<a href="/fns/calendar.asp">
						<span class="title">예약관리</span>
						<span class="amount"><%=iCntReservation%></span>
					</a>
				</div>
				<div class="mainBox_R_E">
					<a href="/fns/cart.asp">
						<span class="title">식권결제</span>
						<span class="amount"><%=iCntHaving%></span>
					</a>
				</div>
			</div>
			<div class="mainBox_E three-col"  style="display:none;">
				<div class="top-area">
					<div class="mainBox_E_W">
						<a href="/textbook/shop.asp">
							<span class="title">교재<br>
							구매가능</span>
							<span class="amount"><%=iCntBookNoSale%></span>
						</a>
					</div>
					<div class="mainBox_E_W">
						<a href="/textbook/shop.asp?tab=2">
							<span class="title">바자관 OMEGA<br>
							구매가능</span>
							<span class="amount"><%=iCntOmegaNoSale%></span>
						</a>
					</div>
				</div>
				<div class="mainBox_E_E bt-area">
					<a href="/textbook/cart.asp">
						<span class="title">교재/바자관 OMEGA 미수령</span>
						<span class="amount"><%=iCntBookNoRec%></span>
					</a>
				</div>
			</div>
			<div class="mainBox_E" style="display:none;">
				<div class="mainBox_E_W">
					<a href="/reserve/reserve_list.asp">
						<span class="title">예약가능</span>
						<span class="amount"><%=nNoCnt%></span>
					</a>
				</div>
				<div class="mainBox_E_E">
					<a href="/reserve/reserve_list.asp">
						<span class="title">예약완료</span>
						<span class="amount"><%=nReCnt%></span>
					</a>
				</div>
			</div>
			<div class="mainBox_E" style="display:none;">
				<div class="mainBox_R_W">
					<a href="/score/result.asp">
						<span class="title">성적조회</span>
						<span class="amount"><%=iCntScore + iCntJaewonExam%></span>
					</a>
				</div>
				<div class="mainBox_R_E">
					<a href="/score/consulting.asp">
						<span class="title">성적상담</span>
						<span class="amount"><%=iCntConsult%></span>
					</a>
				</div>
			</div>

		</div>

	<div class="pc-no">
		<div class="popupWrap popup-barcode">
			<div class="in">
				<p class="title">바코드 출력</p>
				<p class="info">학원 안내데스크에 제출하여 주시면<br />교재수령이 가능합니다.</p>
				<div class="img-barcode">
					<div class="barcodeWrap">
						<img src="<%=Application("img_path_russel")%>/myinfo/common/com_bar_logo.gif" alt="" class="logo" />
						<%=getBarcode(nRmsMemCd)%>
					</div>
				</div>
				<a href="javascript:;" onClick="javascript:$('.btn-close').trigger('click');" class="btn-type01">확인</a>
				<a href="#" class="btn-close"><img src="<%=Application("img_path_russel")%>/myinfo/btn/layer_close.png" /></a>
			</div>
		</div>
		<div class="mask"></div>
		<script>
			$('.mainBox_W a').on('click', function(e){
				e.preventDefault();
				$('.mainBox_E').hide();
				$('.mainBox_E').eq($(this).closest('.mainBox_W > div').index()).show();
			});

			//바코드 팝업
			$(".btn-barcode").on("click",function(e){
				e.preventDefault();
				$(".mask,.popup-barcode").fadeIn();
			});
			$(".btn-close").on("click",function(e){
				e.preventDefault();
				$(".mask,.popup-barcode, .popup-popupBookPaymen").fadeOut();
			});
		</script>
	</div>
	<!-- //바코드 -->
	</section>

	<!-- footer -->
	<!-- #include virtual = "/include/footer.asp" -->
	<!-- //footer -->


</div>
</body>
</html>
