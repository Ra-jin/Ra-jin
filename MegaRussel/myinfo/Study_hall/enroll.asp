<!DOCTYPE html>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/Member/login_check.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<html lang="ko">
<head>
	<meta charset="euc-kr" />
	<title>바자관 등록 대기 - 바자관 재등록</title>
	<!-- #include virtual = "/include/head.asp" -->
	<script>
		function V_ITEM_CD_onCahnged() {
			iAmtChecked = 0;
			for (var i = 0; i < $("input[name='V_ITEM_CD']").length; i++) {
				if ($("input[name='V_ITEM_CD']")[i].type == "hidden" || $("input[name='V_ITEM_CD']")[i].checked == true) {
					iAmtChecked = iAmtChecked + parseInt($($("input[name='V_PAY_AMT']")[i]).val());
				}
			}
			$("#total_pay_amt").html(iAmtChecked.toLocaleString());
		}

		function PayPage(){
			if ($("input[name='payType']:checked").length != 1) {
				alert("결제방법을 선택해 주세요.");
				return;
			}

			if (
				$("input[name='V_ITEM_CD'][type='checkbox']").length > 0 &&
				$("input[name='V_ITEM_CD'][type='checkbox']:checked").length == 0
			) {
				alert("모의고사 상품을 1개 이상 선택해주세요.");
				return;
			}

			if ($("input[name='V_ITEM_CD']").length == 0 ) {
				alert("결제 상품이 없습니다.");
				return;
			}

			if(!confirm("결제하시겠습니까?")) return;

			var f = document.form1;
			f.submit();
		}
	</script>
</head>
<%
RMS_URL = ""

if IsDevSvr() then
	RMS_URL = "https://devrms.megastudy.net"
else
	RMS_URL = "https://rms.megastudy.net"
end if

strSQL = ""
strSQL = strSQL & " SELECT		H.CM_COURSE_NM, G.LM_LEC_NM, I.CM_COURSE_NM, D.LM_LEC_NM, B.LS_HOUR_NO, B.LS_LEC_CNT_MIN "
strSQL = strSQL & " 			, ISNULL(( "
strSQL = strSQL & " 				SELECT		SUM(CC.LS_HOUR_NO) "
strSQL = strSQL & " 				FROM		AMS_GRP_HIS AA WITH(NOLOCK) "
strSQL = strSQL & " 				INNER JOIN	AMS_COU_LEC BB WITH(NOLOCK) ON AA.GH_COLE_CD = BB.CL_COLE_CD "
strSQL = strSQL & " 				INNER JOIN	AMS_LEC_SUB CC WITH(NOLOCK) ON BB.CL_COLE_CD = CC.LS_COLE_CD "
strSQL = strSQL & " 				WHERE		1=1 "
strSQL = strSQL & " 				AND			AA.GH_MEM_CD = A.GH_MEM_CD "
strSQL = strSQL & " 				AND			AA.GH_BE_CD = 11 "
strSQL = strSQL & " 				AND			AA.GH_REFUND_CD IS NULL "
strSQL = strSQL & " 				AND			BB.CL_ACA_CD = C.CL_ACA_CD "
strSQL = strSQL & " 				AND			(CC.LS_BAZA_SUB_CD1 = C.CL_SUB_CD OR CC.LS_BAZA_SUB_CD2 = C.CL_SUB_CD) "
strSQL = strSQL & " 			), 0.0) AS HAVE_HOUR_NO "
strSQL = strSQL & " 			, ISNULL(( "
strSQL = strSQL & " 				SELECT		SUM(CC.LS_LEC_CNT_MIN) "
strSQL = strSQL & " 				FROM		AMS_GRP_HIS AA WITH(NOLOCK) "
strSQL = strSQL & " 				INNER JOIN	AMS_COU_LEC BB WITH(NOLOCK) ON AA.GH_COLE_CD = BB.CL_COLE_CD "
strSQL = strSQL & " 				INNER JOIN	AMS_LEC_SUB CC WITH(NOLOCK) ON BB.CL_COLE_CD = CC.LS_COLE_CD "
strSQL = strSQL & " 				WHERE		1=1 "
strSQL = strSQL & " 				AND			AA.GH_MEM_CD = A.GH_MEM_CD "
strSQL = strSQL & " 				AND			AA.GH_BE_CD = 11 "
strSQL = strSQL & " 				AND			AA.GH_REFUND_CD IS NULL "
strSQL = strSQL & " 				AND			BB.CL_ACA_CD = C.CL_ACA_CD "
strSQL = strSQL & " 				AND			(CC.LS_BAZA_SUB_CD1 = C.CL_SUB_CD OR CC.LS_BAZA_SUB_CD2 = C.CL_SUB_CD) "
strSQL = strSQL & " 			), 0.0) AS HAVE_LEC_CNT "
strSQL = strSQL & " 			, B.LS_REG_NOTE1, B.LS_REG_NOTE2, B.LS_REG_NOTE3 "
strSQL = strSQL & " 			, C.CL_ACA_CD, C.CL_SUB_CD, C.CL_COLE_CD "
strSQL = strSQL & " 			, (SELECT TOP 1 AM_ACA_ABBR FROM AMS_ACA_MAS WITH(NOLOCK) WHERE AM_ACA_CD = C.CL_ACA_CD) AS AM_ACA_ABBR "
strSQL = strSQL & " 			, ISNULL (( "
strSQL = strSQL & " 				SELECT SUM(RI_RECE_AMT) "
strSQL = strSQL & "                 FROM AMS_RECE_ITEM with(nolock) "
strSQL = strSQL & "                 WHERE RI_ACA_CD = C.CL_ACA_CD AND RI_COLE_CD = C.CL_COLE_CD "
strSQL = strSQL & " 			) , C.CL_LEC_AMT) AS SALE_AMT "
strSQL = strSQL & " 			, K.CF_FILE1, K.CF_FILE1_NAME "
strSQL = strSQL & " 			, B.LS_MIN_TYPE "
strSQL = strSQL & " FROM		AMS_GRP_HIS A WITH(NOLOCK) "
strSQL = strSQL & " INNER JOIN	AMS_LEC_SUB B WITH(NOLOCK) ON A.GH_COLE_CD = B.LS_PRE_COLE_CD "
strSQL = strSQL & " INNER JOIN	AMS_COU_LEC C WITH(NOLOCK) ON B.LS_COLE_CD = C.CL_COLE_CD "
strSQL = strSQL & " INNER JOIN	AMS_LEC_MAS D WITH(NOLOCK) ON C.CL_LEC_CD = D.LM_LEC_CD AND C.CL_ACA_CD = D.LM_ACA_CD "
strSQL = strSQL & " INNER JOIN	AMS_COU_LEC F WITH(NOLOCK) ON A.GH_COLE_CD = F.CL_COLE_CD " ' 현재 바자관 정보
strSQL = strSQL & " INNER JOIN	AMS_LEC_MAS G WITH(NOLOCK) ON F.CL_LEC_CD = G.LM_LEC_CD AND F.CL_ACA_CD = G.LM_ACA_CD " ' 현재 바자관 정보
strSQL = strSQL & " INNER JOIN	AMS_COURSE_MAS H WITH(NOLOCK) ON F.CL_COU_CD = H.CM_COURSE_CD " ' 현재 바자관 정보
strSQL = strSQL & " INNER JOIN	AMS_COURSE_MAS I WITH(NOLOCK) ON C.CL_COU_CD = I.CM_COURSE_CD "
strSQL = strSQL & " LEFT JOIN	AMS_GRP_HIS E WITH(NOLOCK) ON C.CL_COLE_CD = E.GH_COLE_CD AND A.GH_MEM_CD = E.GH_MEM_CD AND E.GH_BE_CD = 11 AND E.GH_REFUND_CD IS NULL "
strSQL = strSQL & " LEFT JOIN	( "
strSQL = strSQL & " 				SELECT		GH_COLE_CD, COUNT(1) AS TOTAL_CNT "
strSQL = strSQL & " 							, SUM(CASE WHEN BB.SL_ON_YN = 'Y' THEN 1 ELSE 0 END) AS ON_CNT "
strSQL = strSQL & " 				FROM		AMS_GRP_HIS AA WITH(NOLOCK) "
strSQL = strSQL & " 				INNER JOIN	AMS_SALE_LEC BB WITH(NOLOCK) ON AA.GH_SALE_CD = BB.SL_SALE_CD "
strSQL = strSQL & " 				WHERE		1=1 "
strSQL = strSQL & " 				AND			AA.GH_BE_CD = 11 "
strSQL = strSQL & " 				AND			AA.GH_REFUND_CD IS NULL "
strSQL = strSQL & " 				GROUP BY	AA.GH_COLE_CD "
strSQL = strSQL & " 			) J ON C.CL_COLE_CD = J.GH_COLE_CD "
strSQL = strSQL & " LEFT JOIN	AMS_COLE_FILE K WITH(NOLOCK) ON C.CL_COLE_CD = K.CF_COLE_CD "
strSQL = strSQL & " WHERE		1=1 "
strSQL = strSQL & " AND			A.GH_MEM_CD = '" & nRmsMemCd & "' "
strSQL = strSQL & " AND			A.GH_BE_CD = 11 "
strSQL = strSQL & " AND			A.GH_REFUND_CD IS NULL "
strSQL = strSQL & " AND			A.GH_REC_SDT <= GETDATE() AND DATEADD(d, 1, A.GH_REC_EDT) > GETDATE() "
strSQL = strSQL & " AND			G.LM_CLS_CD = 14 AND G.LM_DTL_CD = 14 "
strSQL = strSQL & " AND			D.LM_CLS_CD = 14 AND D.LM_DTL_CD = 14 "
strSQL = strSQL & " AND			E.GH_COLE_CD IS NULL "
strSQL = strSQL & " AND			C.CL_ONL_STAT = 'Y' "
strSQL = strSQL & " AND			C.CL_ONL_SDT <= GETDATE() AND DATEADD(d, 1, C.CL_ONL_EDT) > GETDATE() "
strSQL = strSQL & " AND			C.CL_MEM_NO > ISNULL(J.TOTAL_CNT, 0) "
strSQL = strSQL & " AND			C.CL_MEMON_NO > ISNULL(J.ON_CNT, 0) "
strSQL = strSQL & " ORDER BY	CASE WHEN C.CL_HIGH_YN = 4 THEN 1 ELSE 2 END "
set RS = amsobjdb.sqlQuery(strSql,2)
bLecCnt = false
iHourNo = 0.0
iLecCntMin = 0.0
iHaveHourNo = 0.0
iHaveLecCnt = 0.0
sRegNote1 = ""
sRegNote2 = ""
sRegNote3 = ""
If not (RS.eof or RS.bof) then
	if Rs("LS_MIN_TYPE") = "2" then
		bLecCnt = true '의무강좌수로 할지 체크하는 플래그
	end if

	' 최상위 1행(독서실)의 의무시수,강좌, 인정시수, 강좌 저장, 바자관 재등록 안내문구
	iHourNo = RS("LS_HOUR_NO")
	iLecCntMin = RS("LS_LEC_CNT_MIN")
	iHaveHourNo = RS("HAVE_HOUR_NO")
	iHaveLecCnt = RS("HAVE_LEC_CNT")
	sRegNote1 = RS("LS_REG_NOTE1")
	sRegNote2 = RS("LS_REG_NOTE2")
	sRegNote3 = RS("LS_REG_NOTE3")
	sFileNM = RS("CF_FILE1")
	sFilePath = RS("CF_FILE1_NAME")
	arrBazaInfo = RS.getrows()
End If
RS.close
set RS = nothing


%>
<body>
	<style>
		.tb-type2 table {height:100%;}
	</style>
<div class="wrap">
	<header class="sub">
		<a href="/index.asp" class="btnPrev">바자관 재등록</a>
		<!-- #include virtual = "/include/header.asp" -->
	</header>
	<section class="sub">
		<div class="inBox">
			<div class="tabCommon">
				<ul class="tabList">
					<li class="on"><a href="enroll.asp">바자관 등록 대기</a></li>
					<li><a href="fin.asp">바자관 등록 완료</a></li>
				</ul>
				<div class="tabCon">
					<form name="form1" method="post" action="/russel/mypage/student/account_pay_chk.asp">
						<input name="Mode" type="hidden" value="Register9"> <% 'Register9 는 온라인 바자관, 기타상품구매(Register6 은 마이페이지 통해서 오는 구매) %>
						<input name="V_PAY_URL" type="hidden" value="/Study_hall/payment.asp">
						<div class="tabConList">
							<h2 class="blind">바자관 정보</h2>
							<h3 class="title">바자관 정보</h3>
							<div class="study-td-flex">
								<div class="tb-type2">
									<table summary="이 표는 현재 바자관 정보를 제공하며 과정명, 학반/강좌로 구성되어있습니다.">
										<caption>현재 또는 재등록 바자관 정보</caption>
										<colgroup>
											<col style="width:100px;">
											<col style="width:*;">
										</colgroup>
										<thead>
											<tr>
												<th colspan="2" style="height:40px">현재 바자관 정보</th>
											</tr>
											<tr>
												<th class="b-r fix-h">과정명</th>
												<th>학반/강좌</th>
											</tr>
										</thead>
										<tbody>
											<% if isArray(arrBazaInfo) then %>
												<% for i = 0 to ubound(arrBazaInfo, 2) %>
													<tr>
														<% if i = 0 then %>
															<td class="b-r" rowspan="<%=ubound(arrBazaInfo, 2) + 1%>"><%=arrBazaInfo(0, i)%></td>
														<% end if %>
														<td class="fix-td"><p><%=arrBazaInfo(1, i)%></p></td>
													</tr>
												<% Next %>
											<% else %>
												<tr>
													<td colspan="2">바자관 재등록 정보가 없습니다.</td>
												</tr>
											<% end if %>
										</tbody>
									</table>
								</div>
								<div class="tb-type2">
									<table summary="이 표는 재등록 바자관 정보를 제공하며 과정명, 학반/강좌, 의무시수, 인정시수로 구성되어있습니다.">
										<caption>현재 또는 재등록 바자관 정보</caption>
										<colgroup>
											<col style="width:100px;">
											<col style="width:*;">
											<col style="width:10%;">
											<col style="width:10%;">
										</colgroup>
										<thead>
											<tr>
												<th colspan="4" class="bg-sky" style="height:40px">재등록 바자관 정보</th>
											</tr>
											<tr>
												<th class="bg-sky b-r fix-h">과정명</th>
												<th class="bg-sky b-r">학반/강좌</th>
												<th class="bg-sky b-r">
													의무<% if bLecCnt then Response.Write "강좌" else Response.Write "시수" end if %>
													<div class="ques-wrap">
														<i class="i-ques">?</i>
														<!-- 레이어팝업 시작 -->
														<div class="pop-ques">
															<% if bLecCnt then %>
																<div class="box">
																	<p class="tit">의무강좌란?</p>
																	<p class="txt">바자관 등록을 위해<br>필수로 수강해야하는 단과 강좌 수</p>
																</div>
															<% else %>
																<div class="box">
																	<p class="tit">의무시수란?</p>
																	<p class="txt">바자관 등록을 위해<br>필수로 수강해야하는 단과 강좌 시수<br>(주당 수업시간)</p>
																</div>
															<% end if %>
														</div>
														<!-- //레이어팝업 끝 -->
													</div>
												</th>
												<th class="bg-sky">
													인정<% if bLecCnt then Response.Write "강좌" else Response.Write "시수" end if %>
													<div class="ques-wrap">
														<i class="i-ques">?</i>
														<!-- 레이어팝업 시작 -->
														<div class="pop-ques">
															<% if bLecCnt then %>
																<div class="box">
																	<p class="tit">인정강좌란?</p>
																	<p class="txt">학생이 수강하는 단과 강좌 중<br>바자관 등록에 인정되는 강좌 수</p>
																</div>
															<% else %>
																<div class="box">
																	<p class="tit">인정시수란?</p>
																	<p class="txt">학생이 수강하는 단과 강좌 중<br>바자관 등록에 인정되는 강좌 시수<br>(주당 수업시간)</p>
																</div>
															<% end if %>
														</div>
														<!-- //레이어팝업 끝 -->
													</div>
												</th>
											</tr>
										</thead>
										<tbody>
											<% if isArray(arrBazaInfo) then %>
												<% for i = 0 to ubound(arrBazaInfo, 2) %>
													<tr>
														<% if i = 0 then %>
															<td class="bg-sky b-r" rowspan="<%=ubound(arrBazaInfo, 2) + 1%>"><%=arrBazaInfo(2, i)%></td>
														<% end if %>
														<td class="bg-sky b-r fix-td"><p><%=arrBazaInfo(3, i)%></p></td>
														<% if i = 0 then %>
														<td class="bg-sky b-r" rowspan="<%=ubound(arrBazaInfo, 2) + 1%>">
															<% if bLecCnt then Response.Write iLecCntMin & " 강좌" else Response.Write iHourNo & " T"%>
														</td>
														<td class="bg-sky <% if (bLecCnt = true and CDBL(iHaveLecCnt) > 0) or (bLecCnt = false and CDBL(iHaveHourNo) > 0) then %>bt-class<% end if %>" rowspan="<%=ubound(arrBazaInfo, 2) + 1%>">
															<% if (bLecCnt = true and CDBL(iHaveLecCnt) > 0) or (bLecCnt = false and CDBL(iHaveHourNo) > 0) then %>
																<a href="javascript:void(0);" onclick="fscreen('<%=bLecCnt%>', '<% if bLecCnt then Response.Write iLecCntMin else Response.Write iHourNo%>', '<%=arrBazaInfo(11, i)%>', '<%=arrBazaInfo(12, i)%>')">
															<% end if %>
																<% if bLecCnt then Response.Write CDBL(iHaveLecCnt) & " 강좌" else Response.Write iHaveHourNo & " T"%>
															<% if (bLecCnt = true and CDBL(iHaveLecCnt) > 0) or (bLecCnt = false and CDBL(iHaveHourNo) > 0) then %>
															</a>
															<% end if %>
														</td>
														<% end if %>
													</tr>
												<% Next %>
											<% else %>
												<tr>
													<td colspan="4" class="bg-sky">바자관 재등록 정보가 없습니다.</td>
												</tr>
											<% end if %>
										</tbody>
									</table>
								</div>
							</div>
							<h2 class="blind">바자관 재등록</h2>
							<h3 class="title">바자관 재등록
								<% if ValueCheck(sFileNM) then %>
									<a href="<%=RMS_URL%>/chr/Dan/dan_file_download.asp?file=/Upload_File/danka_file/<%=sFilePath%>&fn=<%=sFileNM%>" class="btn-type02"><i class="i-icon">i</i> 유의사항 (등록 전 확인 필수)</a>
								<% end if %>
							</h3>

							<p class="stxt mb15">
								<% if sRegNote1 <> "" then Response.Write sRegNote1 & "<br/>" end if %>
								<% if sRegNote2 <> "" then Response.Write sRegNote2 & "<br/>" end if %>
								<% if sRegNote3 <> "" then Response.Write sRegNote3 & "<br/>" end if %>
							</p>
							<div class="tb-type2">
								<table summary="이 표는 바자관 재등록 리스트를 제공하며 선택, 학원, 학반/강좌, 금액, 할인금액, 최종금액으로 구성되어있습니다.">
									<caption>수강중인 강좌교재</caption>
									<thead>
										<tr>
											<th>선택</th>
											<th class="mo-no">학원</th>
											<th>학반/강좌</th>
											<th class="mo-no">금액</th>
											<th class="mo-no">할인금액</th>
											<th>최종금액</th>
										</tr>
									</thead>
									<tbody>
										<% sColeCdList = ""
										iTotalPayAmt = 0
										if isArray(arrBazaInfo) then %>
											<% for i = 0 to ubound(arrBazaInfo, 2)
												sColeCd = arrBazaInfo(13, i)
												nHourNo = CDBL(arrBazaInfo(4, i))
												nLecCnt = CDBL(arrBazaInfo(5, i))
												nHavaHourNo = CDBL(arrBazaInfo(6, i))
												nHaveLecCnt = CDBL(arrBazaInfo(7, i))
												iLecAmt = arrBazaInfo(15, i)
												iPayAmt	= arrBazaInfo(15, i)
												iDisAmt = 0
												sDisCd = ""

												if nLecCnt > 0 then
													bLecCnt = true '의무강좌수로 할지 체크하는 플래그
												end if

												' 의무시수 이상일 때만 구매리스트 표시
												if (bLecCnt = true and nHaveLecCnt >= nLecCnt) or (bLecCnt = false and nHavaHourNo >= nHourNo) then
													' 바자관 구매대상 ColeCD 수집
													if sColeCdList <> "" then sColeCdList = sColeCdList & ", "
													sColeCdList = sColeCdList & sColeCd

													' 의무시수에 따라 할인코드 가져오기
													strSQL = ""
													strSQL = strSQL & " SELECT		BD_DIS_NO "
													strSQL = strSQL & " FROM		AMS_BAZA_DIS WITH(NOLOCK) "
													strSQL = strSQL & " WHERE		BD_COLE_CD = '" & sColeCd & "' "
													if bLecCnt = true then
													strSQL = strSQL & " AND			BD_DIS_MIN <= '" & nHaveLecCnt & "' "
													strSQL = strSQL & " AND			BD_DIS_MAX > '" & nHaveLecCnt & "' "
													else
													strSQL = strSQL & " AND			BD_DIS_MIN <= '" & nHavaHourNo & "' "
													strSQL = strSQL & " AND			BD_DIS_MAX > '" & nHavaHourNo & "' "
													end if
													sDisCd = amsobjdb.sqlResult(strSQL)

													if sDisCd <> "" then
														strSQL = " EXEC Msp_Get_Pay_Dis_Amt_New_03_New " & sColeCd & ", " & sDisCd

														set RS = amsobjdb.sqlQuery(strSql,2)
														If not (RS.eof or RS.bof) then
															Do While NOT RS.EOF
																if RS("ITEM_CD") = "11" then
																	iPayAmt = CLNG(RS("DIS_AMT")) ' 최종금액
																	iDisAmt = iLecAmt - iPayAmt ' 할인금액
																end if
																RS.MoveNext()
															Loop
														End If
														RS.close
														set RS = nothing
													end if
													iTotalPayAmt = iTotalPayAmt + iPayAmt ' 최종결제 금액(기타상품 선택 시 변경)
													%>

													<tr>
														<td></td>
														<td class="mo-no"><%=arrBazaInfo(14, i)%></td>
														<td class="con"><%=arrBazaInfo(2, i)%>/<%=arrBazaInfo(3, i)%></td>
														<td class="mo-no"><strong><%=FormatNumber(iLecAmt, 0)%></strong>원</td>
														<td class="mo-no fc-p"><strong><%=FormatNumber(iDisAmt, 0)%></strong>원</td>
														<td><strong><%=FormatNumber(iPayAmt, 0)%></strong>원</td>
														<input type="hidden" name="V_ITEM_CD" value="<%=sColeCd%>" />
														<input type="hidden" name="V_PAY_AMT" value="<%=iPayAmt%>" />
														<input type="hidden" name="V_DIS_CD" value="<% if sDisCd = "" then Response.Write "0" else Response.Write sDisCd end if %>" />
													</tr>
												<% end if %>
											<% Next %>
										<% end if

										if sColeCdList = "" then %>
											<tr>
												<td colspan="6">바자관 재등록 정보가 없습니다.</td>
											</tr>
										<% end if

										if sColeCdList <> "" then
											strSQL = ""
											strSQL = strSQL & " SELECT		DISTINCT D.AM_ACA_ABBR, C.LM_LEC_NM "
											strSQL = strSQL & " 			, ISNULL (( "
											strSQL = strSQL & " 				SELECT SUM(RI_RECE_AMT) "
											strSQL = strSQL & "                 FROM AMS_RECE_ITEM with(nolock) "
											strSQL = strSQL & "                 WHERE RI_ACA_CD = B.CL_ACA_CD AND RI_COLE_CD = B.CL_COLE_CD "
											strSQL = strSQL & " 			) , B.CL_LEC_AMT) AS SALE_AMT "
											strSQL = strSQL & " 			, B.CL_COLE_CD "
											strSQL = strSQL & " FROM		AMS_BAZA_LEC A WITH(NOLOCK) "
											strSQL = strSQL & " INNER JOIN	AMS_COU_LEC B WITH(NOLOCK) ON A.BL_ETC_COLE_CD = B.CL_COLE_CD "
											strSQL = strSQL & " INNER JOIN	AMS_LEC_MAS C WITH(NOLOCK) ON B.CL_LEC_CD = C.LM_LEC_CD AND B.CL_ACA_CD = C.LM_ACA_CD "
											strSQL = strSQL & " INNER JOIN	AMS_ACA_MAS D WITH(NOLOCK) ON B.CL_ACA_CD = D.AM_ACA_CD "
											strSQL = strSQL & " LEFT JOIN	AMS_GRP_HIS E WITH(NOLOCK) ON B.CL_COLE_CD = E.GH_COLE_CD AND E.GH_MEM_CD = '" & nRmsMemCd & "' AND E.GH_BE_CD = 11 AND E.GH_REFUND_CD IS NULL "
											strSQL = strSQL & " WHERE		A.BL_BAZA_COLE_CD IN (" & sColeCdList & ") "
											strSQL = strSQL & " AND			B.CL_ONL_STAT = 'Y' "
											strSQL = strSQL & " AND			E.GH_COLE_CD IS NULL "
											set RS = amsobjdb.sqlQuery(strSql,2)
											If not (RS.eof or RS.bof) then
												Do While NOT RS.EOF %>
													<tr>
														<td>
															<span class="imgCheck">
																<input type="checkbox" title="선택" name="V_ITEM_CD" value="<%=RS("CL_COLE_CD")%>" onchange="javascript:V_ITEM_CD_onCahnged();" />
															</span>
														</td>
														<td class="mo-no"><%=RS("AM_ACA_ABBR")%></td>
														<td class="con"><%=RS("LM_LEC_NM")%></td>
														<td class="mo-no"><strong><%=FormatNumber(RS("SALE_AMT"), 0)%></strong>원</td>
														<td class="mo-no">-</td>
														<td><strong><%=FormatNumber(RS("SALE_AMT"), 0)%></strong>원</td>
														<input type="hidden" name="V_PAY_AMT" value="<%=RS("SALE_AMT")%>" />
														<input type="hidden" name="V_DIS_CD" value="" />
													</tr>
													<% RS.MoveNext()
												Loop
											End If
											RS.close
											set RS = nothing
										end if %>
										<tr>
											<td colspan="6" class="totalPayment type2">
												<span class="tit">최종결제 금액</span>
												<ul>
													<li><strong id="total_pay_amt"><%=FormatNumber(iTotalPayAmt, 0)%></strong>원</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="paymentBox">
								<div class="payment_L">

									<span>
										<input type="radio" id="payment_c" name="payType" value="SC0030" checked /><label for="payment_c">퀵계좌이체</label>
										<!-- <span class="flag-sale">0.3% 할인</span> -->
										 &nbsp;&nbsp;&nbsp;&nbsp;
									</span>
									<span>
										<input type="radio" id="payment_b" name="payType" value="21" /><label for="payment_b">실시간 계좌 이체</label>
										&nbsp;&nbsp;&nbsp;&nbsp;
									</span>
									<span>
										<input type="radio" id="payment_a" name="payType" value="SC0010" /><label for="payment_a">신용 카드</label>
									</span>
								</div>
								<div class="payment_R">
									<a href="/main.asp" class="cancel">취소</a>
									<a href="javascript:;" onClick="javascript:PayPage();" class="payment">결제하기</a>
								</div>
							</div>
						</div>
					</form>
					<div class="tabConList">
						<h2 class="blind">바자관 구매 완료</h2>
					</div>
				</div>
			</div>
		</div>
	</section>

	<%
	'분당 재원생 여부 체크 (모의고사 팝업 분당재원생만 분기처리 위해)
	BD_ACA_CHK = Split(AMS_ACACODE_S, ",")

	BD_STUDENT = false

	For i=0 to ubound(BD_ACA_CHK)
		If trim(BD_ACA_CHK(i)) = "65" Then
			BD_STUDENT = true
			Exit For
		End If
	Next

	'모바일 여부 체크
	mobile_chk = fncChkMobile()

	If BD_STUDENT = true and (ValueCheck(request.cookies("bd_pop")) = false or request.cookies("bd_pop") <> "1") then
	%>
	<% end if %>

	<%

	' 바자관 학원, 재원상태 가져오기
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
	strSql = strSql & " WHERE XX.GH_STATE IN (11,12,31,24,21)  AND XX.GH_CLS_CD IN (14) "
	strSql = strSql & " ORDER BY XX.GH_STATE ASC, XX.GH_CLS_CD ASC, XX.GH_REG_DT DESC "'재원대기 순 / 재정_연합_단과 순으로/ 최근등록순.

	AMS_ACACODE = ""
	G_AMS_CLS_CD = ""
	G_AMS_STATE = ""

	G_AMS_CLS_NM = ""
	G_AMS_STATE_NM = ""

	G_AMS_ACA_NM = ""

	AMS_ACACODE_S = ""
	' Response.write strSql
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
			If vrs1(2,k1) = "11" Or vrs1(2,k1) = "12" Then
					AMS_ACACODE_S = vrs1(0,k1)
					Exit For
			End If
		Next
	End If

	'모바일 여부 체크
	mobile_chk = fncChkMobile()
	cam_code = AmsDCode(AMS_ACACODE_S)

	strSql = ""
	strSql = strSql & " SELECT COUNT(*) "
	strSql = strSql & "	FROM MR_BAZA_POPUP (NOLOCK) "
	strSql = strSql & "	WHERE 1=1 "
	strSql = strSql & " AND bp_campus_code = '" & cam_code & "' AND BP_SHOW_YN = 'Y' "
	strSql = strSql & " AND bp_show_sdt <= GETDATE()" ' 2025-03-13 노출 기간에 대한 조건이 빠져있어서 추가
	strSql = strSql & " AND bp_show_edt >=GETDATE()"  ' 2025-03-13 노출 기간에 대한 조건이 빠져있어서 추가
	' Response.write strSql
	Set objRs = russelobjdb.sqlQuery(strSql, 3)
	If Not (objRs.EoF And objRs.BoF) Then
		nTotalCnt = objRs(0)
	End If
	objRs.close
	Set objRs = Nothing


	If nTotalCnt > 0 and (ValueCheck(request.cookies("baza_popup")) = false or request.cookies("baza_popup") <> "1") then

		strSql = ""
		strSql = strSql & " SELECT [bp_idx],[bp_campus_code],[bp_title],[bp_show_sdt],[bp_show_edt],[bp_show_yn], "
		strSql = strSql & " 	[bp_img_path],[bp_pc_link],[bp_mo_link],[bp_reg_dt]"
		strSql = strSql & " 	, ISNULL(bp_today_yn, 'N') AS bp_today_yn "
		strSql = strSql & " FROM MR_BAZA_POPUP (NOLOCK) "
		strSql = strSql & " WHERE bp_campus_code = '" & cam_code & "' "

		Set dic = russelobjdb.sqlFetchArray(strSql)

		If Instr(dic("bp_img_path"), "FileServer") = 0 Then
			If isDevSvr Then
				download_file_main = "https://devrussel.megastudy.net"
			Else
				download_file_main = "https://russel.megastudy.net"
			End If
		Else
			download_file_main = "https://file.megastudy.net"
		End If

	%>
	<!-- 바자관 재등록 팝업 -->
	<div class="layer-baza">
		<a <% if mobile_chk = "N" then%> href="<%=dic("bp_pc_link")%>" <%else%> href="<%=dic("bp_mo_link")%>" <%end if%> target="_blank">
		<img src="<%=download_file_main & dic("bp_img_path")%>" alt="" /></a>
		<div class="bt-box">
			<% if dic("bp_today_yn") = "Y" then %>
			<a href="javascript:;" onclick="setCookie('baza_popup', '1', '1');pop_baza_close();">오늘 하루 보지 않기</a>
			<% end if %>
			<a href="" class="bt-layer-close">닫기</a>
		</div>
	</div>
	<script>
		$('.bt-layer-close').on('click',function(e){
			e.preventDefault()
			pop_baza_close();
		})

		function pop_baza_close() {
			$('.layer-baza').css('display','none')
		}
	</script>
	<!-- //바자관 재등록 팝업 -->
	<% end if%>
</div>
<script>

// 바자관 인정시수 현황
// bLecCnt - true : 의무강좌수, false : 의무시수
function fscreen(bLecCnt, sMustCnt, sAcaCd, sSubCD) {
	url = "./pop_result.asp?V_CHECK_TYPE="+bLecCnt+"&V_MUST_CNT="+sMustCnt+"&V_ACA_CD="+sAcaCd+"&V_SUB_CD="+sSubCD;
	if (window.innerWidth > 600) {
		fullscreen = window.open(url, "fullscreen", 'top=0,left=0,width=1000px,height=600,fullscreen=yes,toolbar=0,location=0,directories=0,status=0,menubar=0,resizable=0,scrolling=0,scrollbars=yes');
	} else {
		fullscreen = window.open(url, "fullscreen", 'top=0,left=0,width='+(screen.availWidth-10)+',height='+(screen.availHeight-48)+',fullscreen=yes,toolbar=0,location=0,directories=0,status=0,menubar=0,resizable=0,scrolling=0,scrollbars=yes');
	}
}
</script>
<!-- footer -->
<!-- #include virtual = "/include/footer.asp" -->
<!-- //footer -->
</body>
</html>
