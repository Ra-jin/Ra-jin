<!DOCTYPE html>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/Member/login_check.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<html lang="ko">
<head>
	<meta charset="euc-kr" />
	<title>식권결제 - 식권결제시스템</title>
	<!-- #include virtual = "/include/head.asp" -->
	<script>
		$(function(){
			$('select[name=V_TICKET_INFO]').change();

			$('input[name=V_REFUND_CNT]').on("propertychange change keyup paste input", function() {
				setV_REFUND_AMT();
			});

			$('input[name=V_REFUND_CNT]').on("focus", function() {
				$('input[name=V_REFUND_CNT]').select();
			});
		});

		function numberWithCommas(x) {
			return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}

		function setV_SET_CD(obj) {
			var selData = $(obj).val();
			var arrData = selData.split('||');

			if (arrData.length == 4) {
				$('#cnt_ticket').html(arrData[2]);
				$('#OneTicketAmt').html(numberWithCommas(arrData[3]));
				$('input[name=V_TICKET_AMT]').val(arrData[3]);
				$('input[name=V_SET_CD]').val(arrData[0]);
				$('input[name=V_PRO_CD]').val(arrData[1]);
			}
			else {
				$('#cnt_ticket').html(0);
				$('#OneTicketAmt').html(0);
				$('input[name=V_TICKET_AMT]').val(0);
				$('input[name=V_SET_CD]').val(0);
				$('input[name=V_PRO_CD]').val(0);
			}

			setV_REFUND_AMT();
		}

		function setV_REFUND_AMT() {			
			if (parseInt($('#cnt_ticket').html()) < parseInt($('input[name=V_REFUND_CNT]').val())) {
				alert("보유수량보다 신청건수가 높습니다.");
				$('input[name=V_REFUND_CNT]').val(0);
			}

			if ($.isNumeric($('input[name=V_REFUND_CNT]').val()) && $.isNumeric($('input[name=V_TICKET_AMT]').val())) {
				$('#RefundAmt').html(numberWithCommas($('input[name=V_REFUND_CNT]').val() * $('input[name=V_TICKET_AMT]').val()));
				$('input[name=V_REF_CASH_AMT]').val($('input[name=V_REFUND_CNT]').val() * $('input[name=V_TICKET_AMT]').val());
			}
		}

		function doRefund() {
			if (parseInt($('#cnt_ticket').html()) < parseInt($('input[name=V_REFUND_CNT]').val())) {
				alert("보유수량보다 신청건수가 높습니다.");
				return;
			}

			if (parseInt($('input[name=V_REFUND_CNT]').val()) <= 0) {
				alert("신청건수는 1 이상이어야 합니다.");
				return;
			}

			if ($('input[name=V_ACCT_NM]').val() == "") {
				alert("환불 계좌 예금주를 입력해주세요.");
				return;
			}

			if ($('input[name=V_ACCT_NO]').val() == "") {
				alert("환불계좌를 입력해주세요.");
				return;
			}

			form1.submit();
		}
	</script>
</head>
<body>
<div class="wrap">
	<header class="sub">
        <a href="/index.asp" class="btnPrev">식권결제</a>
		<ul class="info">
			<!-- <li class="sel">
				<select name="" id="">
					<option value="">평촌 F&S</option>
					<option value="">부천 F&S</option>
					<option value="">대치 F&S</option>
					<option value="">강남 F&S</option>
				</select>
			</li> -->
            <li class="student"><%=gLoginMemName%>(<%=nRmsMemCd%>)</li>
			<li class="campus">러셀 대치 재원중</li>
		</ul>
        <a href="javascript:void(0);" onclick="javascript:location.href='<%=header_addr2%>/russel/member/logout.asp?rtnUrl=<%=header_addr2%>';" class="btnClose btnLogout">로그아웃</a>
	</header>
	<section class="sub">
		<div class="inBox">
			<div class="tabCommon">
				<ul class="tabList">
					<li class="on"><a href="ticket_list.asp">식권 현황</a></li>
					<li><a href="calendar.asp">급식예약</a></li>
				</ul>
				<div class="tabCon">
					<!-- tabConList -->
					<div class="tabConList">
						<h2 class="blind">식권현황</h2>
						<div class="title-wrap">
							<h3 class="title">식권현황</h3>							
						</div>
						<div class="tableType">
							<table summary="">
								<caption></caption>
								<colgroup>
									<col width="33.3%">
									<col width="33.3%">
									<col width="*">
								</colgroup>
								<thead>
									<tr>
										<th>식권 잔량</th>
										<th>예약된 식권</th>
										<th>소진된 식권</th>
									</tr>
								</thead>
								<tbody>
									<tr><%
										' 식권 COUNT
										strSQL = ""
										strSQL = strSQL & " SELECT		ISNULL(SUM(CASE WHEN C.MR_SB_CD IS NULL THEN 1 ELSE 0 END),0) AS CNT_HAVING "
										strSQL = strSQL & " 			, ISNULL(SUM(CASE WHEN C.MR_SB_CD IS NOT NULL AND C.MR_MEAL_DT > DATEADD(D, -1, GETDATE()) THEN 1 ELSE 0 END), 0) AS CNT_RESERVATION "
										strSQL = strSQL & " 			, ISNULL(SUM(CASE WHEN C.MR_SB_CD IS NOT NULL AND CONVERT(VARCHAR(8), C.MR_MEAL_DT, 112) < CONVERT(VARCHAR(8), GETDATE(), 112) THEN 1 ELSE 0 END), 0) AS CNT_USED "
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
										iCntUsed = 0
										If not (RS.eof or RS.bof) then
											iCntHaving = RS("CNT_HAVING")
											iCntReservation = RS("CNT_RESERVATION")
											iCntUsed = RS("CNT_USED")
										End If
										RS.close
										set RS = nothing %>
										<td><a href="./pay_list.asp"><span class="big-num"><%=iCntHaving%></span></a></td>
										<td><a href="./calendar.asp"><span class="big-num"><%=iCntReservation%></span></a></td>
										<td><a href="./runOut.asp"><span class="big-num gray"><%=iCntUsed%></span></a></td>
									</tr>
								</tbody>
							</table>							
						</div>
						<div class="payment-btn-wrap">
							<a href="#" class="cancel">환불신청</a>
							<a href="./cart.asp" class="payment">식권 추가결제</a>
						</div>
						<!-- 환불신청 팝업 -->
						<div class="popup">
							<div class="dim-bg"></div>
							<div class="popup-wrap">							
								<div class="title-wrap">
									<p class="tit">환불신청</p>
									<a href="#" class="pop-close"><img src="<%=Application("img_path_russel")%>/mypage/fns/popup_close.png" alt="닫기" /></a>
								</div>
								<div class="info">
									<p class="sub-txt">환불신청을 진행할 건수를 입력해주세요.</p>
									<div class="pop-tableWrap">
									<form name="form1" method="post" action="./refund_sql.asp" />
										<table>
											<colgroup>
												<col width="20%">
												<col width="*">
											</colgroup>
											<thead>
												<tr>
													<th>구분</th>
													<th>내용</th>
												</tr>											
											</thead>
											<tbody>
												<tr>
													<th>식권차감</th>
													<td>
														<select name="V_TICKET_INFO" onchange="javascript:setV_SET_CD(this);"><%
															strSQL = ""
															strSQL = strSQL & " SELECT		SB_SET_CD, SB_BOOK_CD, BM_BOOK_NM, BM_BOOK_AMT, SUM(CASE WHEN MR_SB_CD IS NULL THEN 1 ELSE 0 END) "
															strSQL = strSQL & " FROM		AMS_SALE_BOOK	A (NOLOCK) "
															strSQL = strSQL & " INNER JOIN	AMS_BOOK_MAS	B (NOLOCK) ON SB_BOOK_CD = BM_BOOK_CD "
															strSQL = strSQL & " INNER JOIN	AMS_BOOK_CMON	C (NOLOCK) ON BM_BOOK_CD = BC_BOOK_CD "
															strSQL = strSQL & " INNER JOIN	AMS_BOOK_ACA	D (NOLOCK) ON BM_BOOK_CD = BA_BOOK_CD "
															strSQL = strSQL & " INNER JOIN	MegaRussel..MG_AMS_CODE	E (NOLOCK) ON  BA_ACA_CD = AMS_CODE_FNS "
															strSQL = strSQL & " LEFT JOIN	AMS_MEAL_RESERVATION	F (NOLOCK) ON SB_SB_CD = MR_SB_CD "
															strSQL = strSQL & " WHERE		1=1 "
															strSQL = strSQL & " AND			A.SB_MEM_CD = '" & nRmsMemCd & "' "
															strSQL = strSQL & " AND			A.SB_SALE_ST = 11 "
															strSQL = strSQL & " AND			A.SB_REF_DT IS NULL "
															strSQL = strSQL & " AND			B.BM_PRO_TYPE = 'F' "
															strSQL = strSQL & " GROUP BY	SB_SET_CD, SB_BOOK_CD, BM_BOOK_NM, BM_BOOK_AMT "
															strSQL = strSQL & " HAVING		SUM(CASE WHEN MR_SB_CD IS NULL THEN 1 ELSE 0 END) > 0 "
															strSQL = strSQL & " ORDER BY	SB_BOOK_CD, SB_SET_CD "
															set RS = amsobjdb.sqlQuery(strSql,3)
															If RS.EOF <> True Then%>
																<%DO WHILE NOT RS.EOF%>
																	<option value="<%=RS(0)%>||<%=RS(1)%>||<%=RS(4)%>||<%=RS(3)%>"><%=RS(2)%> : 잔여 <%=RS(4)%></option>
																	<%RS.MoveNext
																LOOP%>
															<%ELSE%>
																<option value="0||0||0||0">잔여 식권 없음</option>
															<%END IF
															RS.close
															Set RS = Nothing
															%>
														</select>	
													</td>
												</tr>
												<tr>
													<th>환불신청</th>
													<td>
													<div class="pop-refund">
														현재보유잔량 <span id="cnt_ticket">0</span>
														<img src="<%=Application("img_path_russel")%>/mypage/fns/pop_refund.png" alt="빼기" />
														환불 신청건수 <label><input type="text" name="V_REFUND_CNT" value="0" maxlength="3" /></label>
													</div></td>
												</tr>
												<tr>
													<th>환불계좌</th>
													<td>
														<div class="input-wrap">
															<select name="V_BANK_CD"><%
																strSQL = ""
																strSQL = strSQL & " SELECT	CD_DTL_CD, CD_COM_CLS "
																strSQL = strSQL & " FROM    AMS_COM_DTL with(nolock) "
																strSQL = strSQL & " WHERE   CD_COM_CD = 149 "
																set RS = amsobjdb.sqlQuery(strSql,3)
																If RS.EOF <> True Then%>
																	<%DO WHILE NOT RS.EOF%>
																		<option value="<%=RS(0)%>"><%=RS(1)%></option>
																		<%RS.MoveNext
																	LOOP%>
																<%ELSE%>
																	<option value="11">기타</option>
																<%END IF
																RS.close
																Set RS = Nothing
																%>
															</select>
															<label><input type="text" name="V_ACCT_NM" class="no-1" placeholder="예금주명"></label>
															<label><input type="text" name="V_ACCT_NO" class="no-2" placeholder="계좌번호를 입력해주세요."></label>
														</div>
													</td>
												</tr>
												<tr>
													<td colspan="2" class="pop-totalPayment">
														<span>1개 기준단가 = <span id="OneTicketAmt">0</span>원</span>
														<p>환불예상금액 <span id="RefundAmt">0</span>원</p>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="pop-btnWrap">
										<a href="#" class="cancel">취소</a>
										<a href="javascript:" onclick="javascript:doRefund()" class="pay">환불신청</a>
									</div>
									<ul class="txt-list">
										<li>· 환불계좌정보를 오기입력한 경우 환불이 취소될 수 있습니다.</li>
										<li>· 계좌환불 소요일은 약 7일이며, 회사 사정상 다소 지연될 수 있습니다.</li>
									</ul>
									<input type="hidden" name="V_SET_CD" value="0" />
									<input type="hidden" name="V_PRO_CD" value="0" />
									<input type="hidden" name="V_TICKET_AMT" value="0" />
									<input type="hidden" name="V_REF_CASH_AMT" value="0" />
									</form>
								</div>
							</div>
						</div>
						<!-- //환불신청 팝업 -->
						
						<!-- <div class="title-wrap">// 결제 현황 및 환불현황 주석처리 19.11.22	
							<h3 class="title">결제 현황</h3>
							<a href="./pay_list.asp" class="pos-r add">더보기</a>
						</div>
						<div class="tableType">
							<table summary="">
								<caption></caption>
								<colgroup>
									<col width="20%">
									<col width="*">
									<col width="20%">
									<col width="15%">
								</colgroup>
								<thead>
									<tr>
										<th>식권 잔량</th>
										<th>상품명</th>
										<th>결제액</th>
										<th>충전</th>
									</tr>
								</thead>
								<tbody><%
									strSQL = ""
									strSQL = strSQL & " SELECT		TOP 3 CONVERT(VARCHAR(10), SB_SALE_DT, 23) AS SALE_DT, BM_BOOK_NM AS PRO_NM, COUNT(*) AS PRO_CNT, SUM(SB_REAL_AMT) AS PRO_AMT "
									strSQL = strSQL & " FROM		AMS_SALE_BOOK	A (NOLOCK) "
									strSQL = strSQL & " INNER JOIN	AMS_BOOK_MAS	B (NOLOCK) ON SB_BOOK_CD = BM_BOOK_CD "
									strSQL = strSQL & " WHERE		1=1 "
									strSQL = strSQL & " AND			A.SB_MEM_CD = '" & nRmsMemCd & "' "
									strSQL = strSQL & " AND			B.BM_PRO_TYPE = 'F' "
									strSQL = strSQL & " AND			A.SB_SALE_DT >= DATEADD(M, -6, GETDATE()) "
									strSQL = strSQL & " GROUP BY	CONVERT(VARCHAR(10), SB_SALE_DT, 23), BM_BOOK_NM, SB_BOOK_CD "
									strSQL = strSQL & " ORDER BY	CONVERT(VARCHAR(10), SB_SALE_DT, 23) DESC, BM_BOOK_NM DESC "
									set RS = amsobjdb.sqlQuery(strSql,3)
									If RS.EOF <> True Then
						        								DO WHILE NOT RS.EOF%>
											<tr>
												<td><%=RS("SALE_DT")%></td>
												<td><strong><%=RS("PRO_NM")%></strong></td>
												<td class="price"><strong><%=FormatCurrencySTR(RS("PRO_AMT"))%></strong></td>
												<td><%=RS("PRO_CNT")%></td>
											</tr>
											<%RS.MoveNext
										LOOP
									END IF
						
									RS.close
									Set RS = Nothing
									%>
								</tbody>
							</table>							
						</div>
						<div class="title-wrap">
							<h3 class="title">환불 신청 중</h3>
							<a href="./refund_list.asp" class="pos-r add">더보기</a>
						</div>
						<div class="tableType">
							<table summary="">
								<caption></caption>
								<colgroup>
									<col width="20%">
									<col width="*">
									<col width="13%">
									<col width="15%">
									<col width="13%">
								</colgroup>
								<thead>
									<tr>
										<th>환불신청일</th>
										<th>환불계좌</th>
										<th>신청 수량</th>
										<th>환불 신청 금액</th>
										<th>비고</th>
									</tr>
								</thead>
								<tbody><%
									strSQL = ""
									strSQL = strSQL & " SELECT		TOP 3 CONVERT(VARCHAR(10), AH_REF_DT, 23) AS AH_REF_DT "
									strSQL = strSQL & " 			, dbo.UF_GET_COM_DTL(149, RA_BANK_CD) AS BANK_NM, RA_RCV_NM, RA_ACCT_NUM "
									strSQL = strSQL & " 			, REF_CNT, AH_REF_AMT "
									strSQL = strSQL & " 			, CASE WHEN AH_END_DT IS NULL THEN '진행중' ELSE '환불완료' END AS STATUS "
									strSQL = strSQL & " FROM		AMS_ACCREF_HIS	A (NOLOCK) "
									strSQL = strSQL & " INNER JOIN	( "
									strSQL = strSQL & " 				SELECT		RM_MEM_CD, RM_BACK_CD, COUNT(*) AS REF_CNT "
									strSQL = strSQL & " 				FROM		AMS_SALE_BOOK	A (NOLOCK) "
									strSQL = strSQL & " 				INNER JOIN	AMS_BOOK_MAS	B (NOLOCK) ON SB_BOOK_CD = BM_BOOK_CD "
									strSQL = strSQL & " 				INNER JOIN	AMS_REFUND_MAS	C (NOLOCK) ON SB_SB_CD = RM_SB_CD "
									strSQL = strSQL & " 				WHERE		1=1 "
									strSQL = strSQL & " 				AND			A.SB_SALE_ST = 13 "
									strSQL = strSQL & " 				AND			A.SB_REF_DT IS NOT NULL "
									strSQL = strSQL & " 				AND			B.BM_PRO_TYPE = 'F' "
									strSQL = strSQL & " 				GROUP BY	RM_MEM_CD, RM_BACK_CD "
									strSQL = strSQL & " 			) B ON AH_MEM_CD = RM_MEM_CD AND AH_BACK_CD = RM_BACK_CD "
									strSQL = strSQL & " INNER JOIN	(SELECT TOP 1 * FROM AMS_REF_ACCT (NOLOCK) WHERE RA_MEM_CD = '" & nRmsMemCd & "' AND RA_USE_YN = 'Y' ORDER BY RA_REG_DT DESC) C ON AH_MEM_CD = RA_MEM_CD "
									strSQL = strSQL & " WHERE		1=1 "
									strSQL = strSQL & " AND			AH_MEM_CD = '" & nRmsMemCd & "' "
									strSQL = strSQL & " AND			AH_REF_DT >= DATEADD(M, -6, GETDATE()) "
									strSQL = strSQL & " ORDER BY	AH_REF_DT DESC "
									set RS = amsobjdb.sqlQuery(strSql,3)
									If RS.EOF <> True Then
						        								DO WHILE NOT RS.EOF%>
											<tr>
												<td><%=RS("AH_REF_DT")%></td>
												<td><strong><%=RS("BANK_NM")%>(<%=RS("RA_RCV_NM")%>) <%=RS("RA_ACCT_NUM")%></strong></td>
												<td class="price"><strong>-<%=RS("REF_CNT")%></strong></td>
												<td class="price"><strong><%=FormatCurrencySTR(RS("AH_REF_AMT"))%></strong></td>
												<td><%=RS("STATUS")%></td>
											</tr>
											<%RS.MoveNext
										LOOP
									END IF
						
									RS.close
									Set RS = Nothing
									%>
								</tbody>
							</table>							
						</div>
						<p class="table-bottom-text">※ 환불내역은 최대 6개월까지만 제공됩니다.</p> -->
					</div>
					<!-- //tabConList -->
					<script>
							$(function(){
								$('.payment-btn-wrap .cancel').on('click', function(e){
									e.preventDefault();
									$('select[name=V_TICKET_INFO]').change();
									$('.popup').show();
								});
								$('.popup .pop-close').on('click', function(e){
									e.preventDefault();
									$('.popup').hide();
								});
								
							});
					</script>
					
				</div>
			</div>
		</div>
	</section>
</div>
</body>
</html>
