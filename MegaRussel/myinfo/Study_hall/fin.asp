<!DOCTYPE html>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/Member/login_check.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<html lang="ko">
<head>
	<meta charset="euc-kr" />
	<title>바자관 등록 완료 - 바자관 구매내역</title>
	<!-- #include virtual = "/include/head.asp" -->
	<script>
		// 온라인 취소 처리
		function OnCanProce(pCode){
			var f = document.form1;
			if(!confirm("강좌 결제를 취소하시겠습니까?")) return;
			location.href = "/russel/mypage/student/account_cancel_process.asp?strSetCD="+pCode+"&V_COMP_URL=" + encodeURI("/main.asp") ;

		}
	</script>
<body>
<div class="wrap">
	<header class="sub">
		<a href="/index.asp" class="btnPrev">바자관 재등록</a>
		<!-- #include virtual = "/include/header.asp" -->
	</header>
	<section class="sub">
		<div class="inBox">
			<div class="tabCommon">
				<ul class="tabList">
					<li><a href="enroll.asp">바자관 등록 대기</a></li>
					<li class="on"><a href="fin.asp">바자관 등록 완료</a></li>
				</ul>
				<div class="tabCon">
					<div class="tabConList">
						<h2 class="blind">바자관 구매 내역</h2>
                        <div class="title-wrap">
							<h3 class="title mo-no">바자관 구매 내역</h3>
						</div>
						<div class="tb-type2 rps-tb">
							<table summary="이 표는 바자관 구매내역 리스트를 제공하며 학원, 결제일자, 구매내역, 결제금액, 결제수단, 결제상태로 구성되어있습니다.">
								<caption>바자관 구매내역 리스트</caption>
								<thead>
									<tr>
										<th>학원</th>
										<th>결제일자</th>
										<th>구매내역</th>
										<th>결제금액</th>
										<th>결제수단</th>
										<th>상태</th>
									</tr>
								</thead>
								<tbody><%
									strSQL = ""
									strSQL = strSQL & " SELECT		D.AM_ACA_ABBR, CONVERT(VARCHAR(10), F.SM_REG_DT, 21) AS SM_REG_DT, G.CM_COURSE_NM + '/' + C.LM_LEC_NM AS LM_LEC_NM "
									strSQL = strSQL & " 			, ISNULL((SELECT COUNT(1) FROM AMS_SALE_LEC WITH(NOLOCK) WHERE SL_SET_CD = F.SM_SET_CD AND SL_SALE_CD <> E.SL_SALE_CD), 0) AS OTHER_CNT "
									strSQL = strSQL & " 			, [dbo].[UF_GET_SET_INFO](1, F.SM_SET_CD) AS SET_AMT "
									strSQL = strSQL & " 			, ISNULL( (SELECT SUM(CS_CARD_AMT) FROM AMS_CARD_SET WITH(NOLOCK) WHERE CS_SET_CD = F.SM_SET_CD ), 0 ) AS CARD_AMT "
									strSQL = strSQL & " 			, ISNULL( (SELECT SUM(CS_CASH_AMT) FROM AMS_CASH_SET WITH(NOLOCK) WHERE CS_SET_CD = F.SM_SET_CD ), 0 ) AS CASH_AMT "
									strSQL = strSQL & " 			, ISNULL( (SELECT SUM(AS_ACCT_AMT) FROM AMS_ACCT_SET WITH(NOLOCK) WHERE AS_SET_CD = F.SM_SET_CD AND AS_REF_YN = 'N' AND AS_TRAN_YN = 'Y' ), 0 ) AS ACCT_AMT "
									strSQL = strSQL & " 			, ISNULL( (SELECT SUM(BS_BANK_AMT) FROM AMS_BANK_SET WITH(NOLOCK) WHERE BS_SET_CD = F.SM_SET_CD ), 0 ) AS BANK_AMT "
									strSQL = strSQL & " 			, F.SM_SET_CD, F.SM_ON_YN "
									strSQL = strSQL & " 			, ISNULL((SELECT COUNT(1) FROM AMS_SALE_LEC WITH(NOLOCK) WHERE SL_SET_CD = F.SM_SET_CD AND SL_SALE_ST <> 11), 0) AS TRANS_CNT "
									strSQL = strSQL & " FROM		AMS_GRP_HIS A WITH(NOLOCK) "
									strSQL = strSQL & " INNER JOIN	AMS_COU_LEC B WITH(NOLOCK) ON A.GH_COLE_CD = B.CL_COLE_CD "
									strSQL = strSQL & " INNER JOIN	AMS_LEC_MAS C WITH(NOLOCK) ON B.CL_LEC_CD = C.LM_LEC_CD AND B.CL_ACA_CD = C.LM_ACA_CD "
									strSQL = strSQL & " INNER JOIN	AMS_ACA_MAS D WITH(NOLOCK) ON A.GH_ACA_CD = D.AM_ACA_CD "
									strSQL = strSQL & " INNER JOIN	AMS_SALE_LEC E WITH(NOLOCK) ON A.GH_SALE_CD = E.SL_SALE_CD "
									strSQL = strSQL & " INNER JOIN	AMS_SET_MAS F WITH(NOLOCK) ON E.SL_SET_CD= F.SM_SET_CD "
									strSQL = strSQL & " INNER JOIN	AMS_COURSE_MAS G WITH(NOLOCK) ON B.CL_COU_CD = G.CM_COURSE_CD "
									strSQL = strSQL & " WHERE		1=1 "
									strSQL = strSQL & " AND			A.GH_MEM_CD = '" & nRmsMemCd & "' "
									strSQL = strSQL & " AND			A.GH_BE_CD = 11 "
									strSQL = strSQL & " AND			A.GH_REFUND_CD IS NULL "
									strSQL = strSQL & " AND			B.CL_HIGH_YN = 4 "
									strSQL = strSQL & " AND			C.LM_CLS_CD = 14 "
									strSQL = strSQL & " AND			C.LM_DTL_CD = 14 "
									strSQL = strSQL & " AND			YEAR(CL_LEC_SDT) <= YEAR(GETDATE()) AND YEAR(CL_LEC_EDT) >= YEAR(GETDATE()) "
									strSQL = strSQL & " AND			F.SM_ON_YN = 'Y' "
									strSQL = strSQL & " ORDER BY	F.SM_REG_DT DESC "
									set RS = amsobjdb.sqlQuery(strSql,2)
									If not (RS.eof or RS.bof) then
										arrPaidInfo = RS.GetRows()
									End If
									RS.close
									set RS = nothing

									If isArray(arrPaidInfo) then
										For i=0 To UBound(arrPaidInfo, 2)
											sPayMethod = ""
											bCanRef = false ' 환불 가능 여부 변수

											IF arrPaidInfo(5, i) > 0 THEN
												sPayMethod = sPayMethod & "신용카드/"
											END IF

											IF arrPaidInfo(6, i) > 0 THEN
												sPayMethod = sPayMethod & "현금/"
											END IF

											IF arrPaidInfo(7, i) > 0 THEN
												sPayMethod = sPayMethod & "입금/"
											END IF

											IF arrPaidInfo(8, i) > 0 THEN
												sPayMethod = sPayMethod & "계좌이체/"
											END If

											IF sPayMethod <> "" THEN
												sPayMethod = MID( sPayMethod, 1 , LEN(sPayMethod)-1 )
											ELSE
												sPayMethod = "-"
											END IF

											' 환불 가능일 구하기 (같이 구매한 강좌 OR 바자관 중에 가장 빠른 상품의 개강일 하루 전)
											MIN_LEC_SDT = ""
											strSQL = ""
											strSQL = strSQL & " SELECT		DATEADD(DD, -1, MIN(CL_LEC_SDT)) AS CL_LEC_SDT "
											strSQL = strSQL & " FROM 		AMS_SALE_LEC A WITH(NOLOCK) "
											strSQL = strSQL & " INNER JOIN	AMS_COU_LEC B WITH (NOLOCK) ON A.SL_COLE_CD = B.CL_COLE_CD "
											strSQL = strSQL & " INNER JOIN	AMS_LEC_MAS C WITH (NOLOCK) ON B.CL_LEC_CD = C.LM_LEC_CD AND B.CL_ACA_CD = C.LM_ACA_CD "
											strSQL = strSQL & " WHERE 		A.SL_SET_CD = '" & arrPaidInfo(9, i) & "' "
											strSQL = strSQL & " AND 		A.SL_SALE_ST = 11 "
											strSQL = strSQL & " AND 		C.LM_CLS_CD <> 0  "
											MIN_LEC_SDT = amsobjdb.sqlResult(strSQL)

											'▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 결제 관한 조건 체크 // ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
											' 순수 온라인 결제만 이루어진 경우만 취소 되게 5가지 경우에 대하여 체크 한다.
											' 1. 계좌 이체 환불이 있는가
											' 2. 현금 수납 이력이 있는가
											' 3. 현금 환불 이력이 있는가
											' 4. 온라인 승인된 카드가 없는경우의 카드 이력이 있는가
											' 5. 카드부분취소 이력이 있는가

											strSql = ""
											strSql = strSql &"  SELECT TOP 1 Tbl1.FEXIT_FLG AS FEXIT_FLG "
											strSql = strSql &"  FROM ( "
											strSql = strSql &"  			SELECT 1 as FEXIT_FLG "
											strSql = strSql &"  			FROM AMS_ACCREF_HIS WITH(NOLOCK) "
											strSql = strSql &"  			INNER JOIN AMS_PAYBACK_MAS WITH(NOLOCK) ON PM_BACK_CD = AH_BACK_CD "
											strSql = strSql &"  			WHERE PM_SET_CD = " & arrPaidInfo(9, i)

											strSql = strSql &"  			union all "

											strSql = strSql &"  			SELECT 1 as FEXIT_FLG "
											strSql = strSql &"  			FROM AMS_CASH_SET WITH(NOLOCK) "
											strSql = strSql &"  			WHERE CS_SET_CD  = " & arrPaidInfo(9, i)

											strSql = strSql &"  			union all "

											strSql = strSql &"  			SELECT 1 as FEXIT_FLG "
											strSql = strSql &"  			FROM AMS_CASH_DAYREF WITH(NOLOCK) "
											strSql = strSql &"  			WHERE CD_SET_CD = " & arrPaidInfo(9, i)

											strSql = strSql &"  			union all "

											strSql = strSql &"  			SELECT 1 as FEXIT_FLG "
											strSql = strSql &"  			FROM AMS_CARD_SET WITH(NOLOCK) "
											strSql = strSql &"  			INNER JOIN MegaRussel..MG_PAYMENT_LIST (nolock) ON PL_SET_CD = CS_SET_CD "
											strSql = strSql &"  			WHERE CS_sET_CD = " & arrPaidInfo(9, i)
											strSql = strSql &"  			   AND CS_CTRL_NO <> PL_PAY_SERIAL "

											strSql = strSql &"  			union all "

											strSql = strSql &"  			SELECT 1 as FEXIT_FLG "
											strSql = strSql &"  			FROM AMS_CARD_PARTREF WITH(NOLOCK) "
											strSql = strSql &"  			WHERE CP_SET_CD = " & arrPaidInfo(9, i)

											strSql = strSql &"  			union all "
											strSql = strSql &"  			SELECT 0 as FEXIT_FLG "
											strSql = strSql &"  	) AS Tbl1 "
											strSql = strSql &"  ORDER BY FEXIT_FLG DESC "
											bCheckSetCd = 0
											bCheckSetCd = amsobjdb.sqlResult(strSql)

											'▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 결제 관한 4가지 조건 체크끝 // ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒

											' 온라인 결제 + 신용카드 or 0원 결제 + 환불 가능일 + 전반여부 + 5가지조건(환불 또는 추가카드결제 없는지)
											if arrPaidInfo(10, i) = "Y" _
												and (sPayMethod = "신용카드" or sPayMethod = "-" ) _
												and int(DateDiff("d", now(), MIN_LEC_SDT)) >= 0 _
												and arrPaidInfo(11, i) = 0 _
												and bCheckSetCd = 0 _
												then
												bCanRef = true
											end if
											%>
											<tr>
												<!-- 바자관 수정 - pc-no - pc 일때 안보임, mo-no - 모바일 일때 안보임 그외 공통 -->
												<td class="aca-name"><%=arrPaidInfo(0, i)%></td>
												<td class="pc-no pay-date">결제일자 <%=arrPaidInfo(1,i)%> (<%=sPayMethod%>)</td>
												<td class="mo-no"><%=arrPaidInfo(1, i)%></td>
												<td class="con"><%=arrPaidInfo(2, i)%> <% IF arrPaidInfo(3, i) > 0 THEN %> 외 <strong class="fc-b"><%=arrPaidInfo(3, i)%>건</strong><% END IF %></td>
												<td class="mo-no"><strong><%=FormatNumber(arrPaidInfo(4, i), 0)%></strong>원</td>
												<td class="mo-no"><%=sPayMethod%></td>
												<td class="mo-no <% if bCanRef = false then %> fc-p <% end if %>">
													<% if bCanRef = true then %>
														<a href="javascript:OnCanProce(<%=arrPaidInfo(9, i)%>);" class="bt-del">취소요청</a><br>
														<span class="fc-p del-date mo-no">(<%=MIN_LEC_SDT%>까지)</span><span class="fc-p s-txt pc-no">취소 가능 날짜 : 2021.11.05까지</span>
													<% else %>
														결제완료
													<% end if %>
												</td>
												<td class="pc-no del-date"><p>취소 가능 날짜 : <%=MIN_LEC_SDT%> 까지</p></td>
												<td class="pc-no price-wrap">
													<div class="price-box">
														<p class="txt-price"><strong><%=FormatNumber(arrPaidInfo(4, i), 0)%></strong>원</p>
														<% if bCanRef = true then %>
															<a href="javascript:OnCanProce(<%=arrPaidInfo(9, i)%>);" class="bt-del">취소요청</a>
														<% else %>
															<!-- <a href="javascript:void(0);" class="bt-del">취소문의</a> -->
															<p class="txt-price fc-p">결제완료</p>
														<% end if %>
													</div>
												</td>
											</tr>
										<% Next
									Else %>
										<tr>
											<td colspan="8" class="class-n">바자관 구매 내역이 없습니다. </td>
										</tr>
									<% End If

									%>
								</tbody>
							</table>
						</div>
						<!--
                        <div class="paging mt30 mo-no">
                            <span class="p-first"></span>
                            <a href="javascript:void(0);" class="on">1</a>
                            <a href="javascript:void(0);">2</a>
                            <a href="javascript:void(0);">3</a>
                            <a href="javascript:void(0);">4</a>
                            <a href="javascript:void(0);">5</a>
                            <a href="javascript:void(0);">6</a>
                            <a href="javascript:void(0);">7</a>
                            <a href="javascript:void(0);">8</a>
                            <a href="javascript:void(0);">9</a>
                            <a href="javascript:void(0);">10</a>
                            <span class="p-last"></span>
                        </div>
						-->
                        <p class="tableInfo">※ 현재 년도 바른공부 자습전용관 온라인 재등록 결제 내역만 조회 가능합니다.<br><span class="fc-p">※ 바른공부 자습전용관 환불은 수강시작일 1일 전까지만 가능하며, 개강 이후 환불은 학원으로 문의주시기 바랍니다.</span></p>
                        <!-- <div class="center pc-no">
							<a href="javascript:;" onclick="javascript:showMore();" class="add-bottom">더보기</a>
						</div> -->
						<!--<a href="javascript:;" onclick="javascript:showMore();" class="pc-no bt-more-text mt30">더보기(<span class="more_cnt">0</span>/<span>0</span>)</a>-->
					</div>
					<div class="tabConList">
						<h2 class="blind">바자관 등록 대기</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>

<!-- footer -->
<!-- #include virtual = "/include/footer.asp" -->
<!-- //footer -->
</body>
</html>
