<!DOCTYPE html>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/Member/login_check.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<html lang="ko">
<head>
	<meta charset="euc-kr" />
	<title>교재구매 - 교재구매시스템</title>
	<!-- #include virtual = "/include/head.asp" -->
	<!-- #include virtual = "/include/barcode.asp" -->
</head>
<body>
<div class="wrap">
	<header class="sub">
		<a href="/index.asp" class="btnPrev">교재/OMEGA 콘텐츠 수령</a>
		<!-- #include virtual = "/include/header.asp" -->
	</header>
	<section class="sub">
		<div class="inBox">
			<div class="tabCommon textbook">
				<div class="tabCon on">
					<div class="tabConList">
						<h2 class="blind">수강중인 강좌교재구매</h2>
					</div>
					<div class="tabConList">
						<h2 class="blind">교재구매/수령</h2>
						<%
							strSQL = ""
							strSQL = strSQL & " "
							strSQL = strSQL & " SELECT		E.LB_BOOK_CD, F.BM_BOOK_NM, F.BM_BOOK_AMT, B.CL_COLE_CD, D.CM_COURSE_NM, C.LM_LEC_NM "
							strSQL = strSQL & " 			, F.BM_PRO_TYPE, F.BM_TEST_TYPE, F.BM_DOM_CD, F.BM_TEST_SUBJECT, F.BM_RTRY_TYPE "
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
							strSQL = strSQL & " ORDER BY	F.BM_BOOK_CD "

							set RS = amsobjdb.sqlQuery(strSql,2)

							arrBookList = null
							set dicNotReceiveBookCd = Server.CreateObject("Scripting.Dictionary")

							If not (RS.eof or RS.bof) then
								arrBookList = RS.getrows

								for i=0 to Ubound(arrBookList, 2)
									if Not dicNotReceiveBookCd.exists(arrBookList(0, i)) then
										dicNotReceiveBookCd.add (arrBookList(0, i)), True
									end if
								next
							Else
							End If
							RS.close
							set RS = nothing
						%>

						<div class="filter-area">
							<span>검색구분</span>
							<select name="V_PROD_TYPE" class="s-first" onchange="setFilter();">
								<option value="">전체</option>
								<option value="B">교재</option><%
								strSql = "Exec dbo.Msp_Get_Com_Dtl_01 228"
								set RS = amsobjdb.sqlQuery(strSql,3)

								DO WHILE NOT RS.EOF %>
									<option value="<%=RS("CD_DTL_CD")%>"><%=RS("CD_COM_CLS")%></option><%
									RS.MoveNext
								LOOP
								RS.close
								set RS = nothing %>
							</select>
							<select name="V_DOM_OR_TEST_SUBJECT" class="s-second" onchange="setFilter();" disabled>
								<option value="">전체</option>
							</select>
							<select name="V_RTRY_TYPE" class="s-third" onchange="setFilter();" disabled>
								<option value="">전체</option>
								<option value="H">모의고사</option>
								<option value="S">블랙</option>
								<option value="L">블루</option>
								<option value="W">위클리</option>
							</select>
						</div>
						<h3 class="title">미수령 현황 (<strong><%=dicNotReceiveBookCd.count%></strong>건)<a href="#" class="btnPrint">구매 바코드 확인</a></h3>
						<div class="tb-type2">
							<table summary="이 표는 미수령현황을 제공하며 교재명, 수령여부로 구성되어있습니다.">
								<caption>미수령현황</caption>
								<colgroup>
									<col style="width:80%;">
									<col style="width:20%;">
								</colgroup>
								<thead>
									<tr>
										<th>교재명</th>
										<th>수령여부</th>
									</tr>
								</thead>
								<tbody>
									<% if isArray(arrBookList) then
										sPre_Book_CD = 0
										for i=0 to Ubound(arrBookList, 2)
											sBook_CD	= arrBookList(0, i)
											sBook_NM	= arrBookList(1, i)
											sCour_NM 	= arrBookList(4, i)
											sLec_NM 	= arrBookList(5, i)
											sProdType	= arrBookList(6, i)
											sTestType	= arrBookList(7, i)
											sDomCode	= arrBookList(8, i)
											sTestSbuject	= arrBookList(9, i)
											sRtryType	= arrBookList(10, i)

											' if iBook_CNT > iBook_Rec_Cnt then
											' 	sIsReceive = "미수령"
											' 	sIsReceive_CLS_NM = "ing"
											' else
											' 	sIsReceive = "미입고"
											' 	sIsReceive_CLS_NM = "not"
											' end if

											' 교재 구매주문서를 통해 재고 관리를 하면서 미입고 상태체크는 제거
											sIsReceive = "미수령"
											sIsReceive_CLS_NM = "ing"
											%>

											<% if i > 0 and sPre_Book_CD <> sBook_CD then %>
													</td>
												</tr>
											<% end if %>

											<% if sPre_Book_CD <> sBook_CD  then %>
												<tr id="item_<%=sBook_CD%>" class="item_row">
													<td class="con" colspan="2">
														<input type="hidden" name="Item_Cd" value="<%=sBook_CD%>" />
														<input type="hidden" name="sProdType" value="<%=sProdType%>" />
														<input type="hidden" name="sTestType" value="<%=sTestType%>" />
														<input type="hidden" name="sDomCode" value="<%=sDomCode%>" />
														<input type="hidden" name="sTestSbuject" value="<%=sTestSbuject%>" />
														<input type="hidden" name="sRtryType" value="<%=sRtryType%>" />
														<dl>
															<dt><span class="subject"><%=sBook_NM%></span></dt>
															<dd class="price"><span class="<%=sIsReceive_CLS_NM%>"><%=sIsReceive%></span></dd>
														</dl>
											<% end if %>
														<dl class="info cart">
															<dt class="fz18"><strong><%=sCour_NM%></strong><br>
																<span class="stxt"><%=sLec_NM%></span></dt>
														</dl>
											<% sPre_Book_CD = sBook_CD
										next %>
													</td>
												</tr>
										<% set arrBookList = nothing
									end if %>
								</tbody>
							</table>
						</div>
						<%
							strSQL = ""
							strSQL = strSQL & " "
							strSQL = strSQL & " SELECT		E.LB_BOOK_CD, F.BM_BOOK_NM, F.BM_BOOK_AMT, B.CL_COLE_CD, D.CM_COURSE_NM, C.LM_LEC_NM "
							strSQL = strSQL & " 			, F.BM_PRO_TYPE, F.BM_TEST_TYPE, F.BM_DOM_CD, F.BM_TEST_SUBJECT, F.BM_RTRY_TYPE "
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
							strSQL = strSQL & " AND			(C.LM_CLS_CD = 13 OR C.LM_CLS_CD = 14) "
							strSQL = strSQL & " AND			DATEDIFF(DD, A.GH_REG_DT, GETDATE()) <= 90 "
							strSQL = strSQL & " AND			ISNULL(G.SB_SALE_ST, '') = 11 "
							strSQL = strSQL & " AND			ISNULL(G.SB_RECEIVE_YN, '') = 'Y' "
							strSQL = strSQL & " AND			F.BM_PRO_TYPE IN ('B', 'T') "
							strSQL = strSQL & " AND			A.GH_MEM_CD = '" & nRmsMemCd & "' "
							strSQL = strSQL & " ORDER BY	F.BM_BOOK_CD "
							set RS = amsobjdb.sqlQuery(strSql,2)

							arrBookList = null
							set dicReceiveBookCd = Server.CreateObject("Scripting.Dictionary")

							If not (RS.eof or RS.bof) then
								arrBookList = RS.getrows

								for i=0 to Ubound(arrBookList, 2)
									if Not dicReceiveBookCd.exists(arrBookList(1, i)) then
										dicReceiveBookCd.add (arrBookList(1, i)), True
									end if
								next
							Else
							End If
							RS.close
							set RS = nothing
						%>
						<h3 class="title">수령완료 현황 (<strong><%=dicReceiveBookCd.count%></strong>건)</h3>
						<div class="tb-type2">
							<table summary="이 표는 미수령현황을 제공하며 교재명, 수령여부로 구성되어있습니다.">
								<caption>미수령현황</caption>
								<colgroup>
									<col style="width:80%;">
									<col style="width:20%;">
								</colgroup>
								<thead>
									<tr>
										<th>교재명</th>
										<th>수령여부</th>
									</tr>
								</thead>
								<tbody>
									<% if isArray(arrBookList) then
										for i=0 to Ubound(arrBookList, 2)
											sBook_CD	= arrBookList(0, i)
											sBook_NM	= arrBookList(1, i)
											sCour_NM 	= arrBookList(4, i)
											sLec_NM 	= arrBookList(5, i)
											sProdType	= arrBookList(6, i)
											sTestType	= arrBookList(7, i)
											sDomCode	= arrBookList(8, i)
											sTestSbuject	= arrBookList(9, i)
											sRtryType	= arrBookList(10, i)

											%>
											<% if i > 0 and sPre_Book_CD <> sBook_CD then %>
													</td>
												</tr>
											<% end if %>

											<% if sPre_Book_CD <> sBook_CD  then %>
												<tr id="item_<%=sBook_CD%>" class="item_row">
													<input type="hidden" name="Item_Cd" value="<%=sBook_CD%>" />
													<input type="hidden" name="sProdType" value="<%=sProdType%>" />
													<input type="hidden" name="sTestType" value="<%=sTestType%>" />
													<input type="hidden" name="sDomCode" value="<%=sDomCode%>" />
													<input type="hidden" name="sTestSbuject" value="<%=sTestSbuject%>" />
													<input type="hidden" name="sRtryType" value="<%=sRtryType%>" />
													<td class="con" colspan="2">
														<dl>
															<dt><span class="subject"><%=sBook_NM%></span></dt>
															<dd class="price"><span class="end">수령</span></dd>
														</dl>
											<% end if %>
														<dl class="info">
															<dt><strong><%=sCour_NM%></strong><br>
																<span><%=sLec_NM%></span></dt>
														</dl>
											<% sPre_Book_CD = sBook_CD
											next %>
													</td>
												</tr>
										<% set arrBookList = nothing
									end if %>
								</tbody>
							</table>
						</div>
						<p class="tableInfo">※ 교재구매 현황은 최근 3개월까지만 표기됩니다.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>

<script>
	$(document).ready(function(){
		$('.inBox .btnPrint').popUp('.popupBarcode');
		setFilter();
	});
	// 검색 구분값에 의한 select박스 변화
	const firstSelect = document.querySelector('.s-first');
	const secondSelect = document.querySelector('.s-second');
	const thirdSelect = document.querySelector('.s-third');

	firstSelect.addEventListener('change', function () {
		const firstSelectedValue = firstSelect.value;

		// 초기화
		secondSelect.disabled = true;
		thirdSelect.disabled = true;

		const selectElement = document.querySelector('select[name="V_DOM_OR_TEST_SUBJECT"]');
		selectElement.innerHTML = '';

		const option = document.createElement('option');
		option.value = '';
		option.textContent = '전체';
		selectElement.appendChild(option);

		if (firstSelectedValue === '3') { // OMEGA
			secondSelect.disabled = false;
			thirdSelect.disabled = false;

			getTestSubjectList();
			return;
		} else if (firstSelectedValue === 'B') { // 교재
			secondSelect.disabled = false;

			getDomList();
			return;
		}

		if (firstSelectedValue !== '3') { // OMEGA
			document.querySelector('select[name="V_RTRY_TYPE"]').value = '';
		}

		setFilter();
	});

	function getDomList() {
		getRmsCommonCodeList(123)
			.then((response) => {
				const selectElement = document.querySelector('select[name="V_DOM_OR_TEST_SUBJECT"]');

				response.data.forEach(item => {
					const option = document.createElement('option');
					option.value = item.code;
					option.textContent = item.name;
					selectElement.appendChild(option);
				});

				setFilter();
			});
	}

	function getTestSubjectList() {
		getRmsCommonCodeList(222)
			.then((response) => {
				const selectElement = document.querySelector('select[name="V_DOM_OR_TEST_SUBJECT"]');

				response.data.forEach(item => {
					const option = document.createElement('option');
					option.value = item.code;
					option.textContent = item.name;
					selectElement.appendChild(option);
				});

				setFilter();
			});
	}

	function getRmsCommonCodeList(parentCode) {
		return $.ajax({
			url: 'getRmsComCode.asp',
			method: 'GET',
			data: {
				parentCode: parentCode
			},
			dataType: "json"
		});
	}

	function setFilter() {
		let filteredProdCodeList = $('input[name="Item_Cd"]').map((index, item) => item.value).get();
		let filteredProdCodeListByProdType = [];
		let filteredProdCodeListBy2ndSelect = [];
		let filteredProdCodeListByRtryType = [];

		const prodType = $('select[name=V_PROD_TYPE]').val();
		if (prodType !== '') {
			if (prodType === 'B') {
				filteredProdCodeListByProdType = $('input[name="sProdType"][value="B"]').map(
					(index, item) => $(item).siblings('input[name="Item_Cd"]').val()
				).get();
			} else {
				filteredProdCodeListByProdType = $('input[name="sProdType"][value="T"]').map(
					(index, item) => $(item).siblings('input[name="Item_Cd"]').val()
				).get();

				filteredProdCodeListByProdType = filteredProdCodeListByProdType.filter(
					value => $('input[name="sTestType"][value="' + prodType + '"]').map(
						(index, item) => $(item).siblings('input[name="Item_Cd"]').val()
					).get().includes(value)
				);
			}
		}

		const domOrTestSubject = $('select[name=V_DOM_OR_TEST_SUBJECT]').val();
		if (prodType !== '' && domOrTestSubject !== '') {
			if (prodType === 'B') {
				filteredProdCodeListBy2ndSelect = $('input[name="sDomCode"][value="' + domOrTestSubject + '"]').map(
					(index, item) => $(item).siblings('input[name="Item_Cd"]').val()
				).get();
			} else {
				filteredProdCodeListBy2ndSelect = $('input[name="sTestSbuject"][value="' + domOrTestSubject + '"]').map(
					(index, item) => $(item).siblings('input[name="Item_Cd"]').val()
				).get();
			}
		}

		const rtryType = $('select[name=V_RTRY_TYPE]').val();
		if (rtryType !== '') {
			filteredProdCodeListByRtryType = $('input[name="sRtryType"][value="' + rtryType + '"]').map(
				(index, item) => $(item).siblings('input[name="Item_Cd"]').val()
			).get();
		}

		filteredProdCodeList = filteredProdCodeList.filter(value =>
			(prodType === '' || filteredProdCodeListByProdType.includes(value)) &&
			(domOrTestSubject === '' || filteredProdCodeListBy2ndSelect.includes(value)) &&
			(rtryType === '' || filteredProdCodeListByRtryType.includes(value))
		);


		$('.item_row').hide();
		filteredProdCodeList.forEach(prodCode => {
			$(`#item_${prodCode}`).show();
		});
	}
</script>

<div class="popupWrap popupBarcode">
	<div class="in">
		<p class="title">바코드 출력</p>
		<p class="info">학원 안내데스크에 제출하여 주시면<br />교재수령이 가능합니다.</p>
		<div class="imgBarcode">
			<img src="<%=Application("img_path_russel")%>/myinfo/common/bg_barcode.jpg" />
			<%=getBarcode(nRmsMemCd)%>
		</div>
		<!-- <a href="#" class="btnPrint">인쇄하기</a> -->
	</div>
	<a href="#" class="btnClose"><img src="<%=Application("img_path_russel")%>/myinfo/btn/close_popup.png" /></a>
</div>

<!-- footer -->
<!-- #include virtual = "/include/footer.asp" -->
<!-- //footer -->
</body>
</html>
