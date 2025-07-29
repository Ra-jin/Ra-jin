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
		$( document ).ready(function() {
			$.ajaxSetup({ cache: false });
			loadList();
		});

		function showMore() {
			if (parseInt($('input[name=V_MAX_LIST]').val()) > parseInt($('input[name=V_CNT_LIST]').val())) {
				$('input[name=V_CNT_LIST]').val(parseInt($('input[name=V_CNT_LIST]').val()) + 10);
				loadList();
			}
			else {
				alert("더 이상 데이터가 없습니다.");
			}
		}

		function loadList() {
			$('#ListArea').load(
				'./list_ax.asp'
				,{
					'V_MODE' : 'refund'
					,'V_MEM_CD' : '<%=nRmsMemCd%>'
					,'V_COUNT' : $('input[name=V_CNT_LIST]').val()
				}
			);
		}
	</script>
</head>
<body>
<div class="wrap">
	<header class="sub">
        <a href="/index.asp" class="btnPrev">환불현황</a>
		<!-- #include virtual = "/include/header.asp" -->
	</header>
	<section class="sub">
		<div class="inBox">
			<div class="tabCommon">
				<ul class="tabList no-2">
					<li><a href="pay_list.asp">결제현황</a></li>
					<li class="last"><a href="runOut.asp">소진현황</a></li>
					<li class="on"><a href="refund_list.asp">환불현황</a></li>
				</ul>
				<div class="tabCon">
					<div class="tabConList on">
						<h2 class="blind">환불 신청 중</h2>
						<div class="title-wrap">
							<h3 class="title">환불 신청 중</h3>
						</div>
						<div class="tb-type2 mo-br">
							<table summary="">
								<caption></caption>
								<colgroup>
									<col width="15%">
									<col width="12%">
									<col width="13%">
									<col width="*">
									<col width="15%">
									<col width="10%">
								</colgroup>
								<thead>
									<tr>
										<th>환불<br>신청일</th>
										<th>신청<br>수량</th>
										<th>환불<br>금액</th>
										<th>환불 계좌</th>
										<th>환불<br>완료일</th>
										<th>비고</th>
									</tr>
								</thead>
								<tbody><%
									strSQL = ""
									strSQL = strSQL & " SELECT		CONVERT(VARCHAR(10), AH_REF_DT, 23) AS AH_REF_DT "
									strSQL = strSQL & " 			, dbo.UF_GET_COM_DTL(149, RA_BANK_CD) AS BANK_NM, RA_RCV_NM, dbo.UF_GET_Decode(RA_ACCT_NUM) AS RA_ACCT_NUM "
									strSQL = strSQL & " 			, REF_CNT, AH_REF_AMT "
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
									strSQL = strSQL & " AND			AH_END_DT IS NULL "
									strSQL = strSQL & " ORDER BY	AH_REF_DT DESC "
									set RS = amsobjdb.sqlQuery(strSql,3)
									If RS.EOF <> True Then
        								DO WHILE NOT RS.EOF%>
											<tr>
												<td><%=RS("AH_REF_DT")%></td>
												<td class="price">-<%=RS("REF_CNT")%></td>
												<td class="price"><%=FormatCurrencySTR(RS("AH_REF_AMT"))%></td>
												<td><%=RS("BANK_NM")%>(<%=RS("RA_RCV_NM")%>)<br><%=RS("RA_ACCT_NUM")%></td>
												<td>-</td>
												<td>진행중</td>
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
							<h3 class="title">환불현황</h3>
							<p class="pos-r table-bottom-text">※ 환불내역은 최대 6개월까지만 제공됩니다.</p>
						</div>
						<div class="tb-type2 mo-br">
							<table summary="">
								<caption></caption>
								<colgroup>
									<col width="15%">
									<col width="12%">
									<col width="13%">
									<col width="*">
									<col width="15%">
									<col width="10%">
								</colgroup>
								<thead>
									<tr>
										<th>환불<br>신청일</th>
										<th>신청<br>수량</th>
										<th>환불<br>금액</th>
										<th>환불계좌</th>
										<th>환불<br>완료일</th>
										<th>비고</th>
									</tr>
								</thead>
								<tbody id="ListArea">
									<input type="hidden" name="V_MAX_LIST" value="0" />
								</tbody>
							</table>
						</div>
						<div class="center">
							<a href="javascript:;" onclick="javascript:showMore();" class="add-bottom">더보기</a>
						</div>
					</div>
					<input type="hidden" name="V_CNT_LIST" value="10" />
					<!-- //tabConList -->
				</div>
			</div>
		</div>
	</section>
</div>
</body>
</html>
