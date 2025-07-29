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
	<script>
		jQuery(document).ready(function(){
			setFilter();
			checkCanBuy(true);
		});

		function setFilter() {
			setFilterBook();
			setFilterOmega();
			setAllCheckStatus();
		}

		function setFilterBook() {
			let filteredProdCodeList = $('#divBookList input[name="Item_Cd"]').map((index, item) => item.value).get();
			let filteredProdCodeListByProdType = [];
			let filteredProdCodeListBy2ndSelect = [];
			let filteredProdCodeListByRtryType = [];

			const prodType = $('#divBookList select[name=V_PROD_TYPE]').val();
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

			const domOrTestSubject = $('#divBookList select[name=V_DOM_OR_TEST_SUBJECT]').val();
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

			const rtryType = $('#divBookList select[name=V_RTRY_TYPE]').val();
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


			$('#divBookList .item_row').hide();
			filteredProdCodeList.forEach(prodCode => {
				$(`#divBookList #item_${prodCode}`).show();
			});

			if (filteredProdCodeList.length === 0) {
				$('#no_item_row').show();
				$('.tb-type2').addClass('b-non');
			} else {
				$('.tb-type2').removeClass('b-non');
			}
		}

		function setFilterOmega() {
			let filteredProdCodeList = $('#divOmegaList input[name="Item_Cd"]').map((index, item) => item.value).get();
			let filteredProdCodeListBy2ndSelect = [];
			let filteredProdCodeListByRtryType = [];

			const domOrTestSubject = $('#divOmegaList select[name=V_DOM_OR_TEST_SUBJECT]').val();
			if (domOrTestSubject !== '') {
				filteredProdCodeListBy2ndSelect = $('input[name="sTestSbuject"][value="' + domOrTestSubject + '"]').map(
					(index, item) => $(item).siblings('input[name="Item_Cd"]').val()
				).get();
			}

			const rtryType = $('#divOmegaList select[name=V_RTRY_TYPE]').val();
			if (rtryType !== '') {
				filteredProdCodeListByRtryType = $('input[name="sRtryType"][value="' + rtryType + '"]').map(
					(index, item) => $(item).siblings('input[name="Item_Cd"]').val()
				).get();
			}

			filteredProdCodeList = filteredProdCodeList.filter(value =>
				(domOrTestSubject === '' || filteredProdCodeListBy2ndSelect.includes(value)) &&
				(rtryType === '' || filteredProdCodeListByRtryType.includes(value))
			);

			$('#divOmegaList .item_row').hide();
			filteredProdCodeList.forEach(prodCode => {
				$(`#divOmegaList #item_${prodCode}`).show();
			});

			setTimeout(() => {
				$('#divOmegaList .prod_table').each((index, element) => {
					let showRowCount = 0
					$(element).find('.item_row').each((index2, row) => {
						if ($(row).css('display') !== 'none') {
							showRowCount++;
						}
					});

					if (showRowCount === 0) {
						$(element).find('.item_row').last().show();
					}
				});
			}, 0);
		}

		// 구매할 수 있는 교제 인지 체크
		function checkCanBuy(defaultCheck) {
			let cntDbBookCnt = 0;
			let cntDbOmegaCnt = 0;

			$("#divBookList input[name='Item_Cd']").each((index, item) => {
				let book_cd = item.value;

				// 교재와 연동된 강좌들의 미납상태(라디오버튼 disabled) 를 체크
				// 연동된 모든 강좌가 미납일 때, checkbox disabled
				if ($("#divBookList input[name='V_DIS_NO_" + book_cd + "']").length === $("#divBookList input[name='V_DIS_NO_" + book_cd + "']:disabled").length) {
					$(item).prop('disabled', true);
					$(item).parent().addClass('disabled');
				} else {
					$(item).prop('disabled', false);
					$(item).parent().removeClass('disabled');

					cntDbBookCnt++;

					// 교재와 연동된 강좌중에 최상위 기본 선택
					if (defaultCheck === true) {
						$("#divBookList input[name='V_DIS_NO_" + book_cd + "']").each((disIndex, disItem) => {
							if ($(disItem).prop('disabled') === false) {
								$(disItem).prop('checked', true);

								V_DIS_NO_onChanged(disItem);
								return false;
							}
						});
					}
				}
			});

			$("#divOmegaList input[name='Item_Cd']").each((index, item) => {
				let book_cd = item.value;

				// 교재와 연동된 강좌들의 미납상태(라디오버튼 disabled) 를 체크
				// 연동된 모든 강좌가 미납일 때, checkbox disabled
				if ($("#divOmegaList input[name='V_OMEGA_DIS_NO_" + book_cd + "']").length === $("#divOmegaList input[name='V_OMEGA_DIS_NO_" + book_cd + "']:disabled").length) {
					$(item).prop('disabled', true);
					$(item).parent().addClass('disabled');
				} else {
					$(item).prop('disabled', false);
					$(item).parent().removeClass('disabled');

					cntDbOmegaCnt++;

					// 교재와 연동된 강좌중에 최상위 기본 선택
					if (defaultCheck === true) {
						$("#divOmegaList input[name='V_OMEGA_DIS_NO_" + book_cd + "']").each((disIndex, disItem) => {
							if ($(disItem).prop('disabled') === false) {
								$(disItem).prop('checked', true);

								V_DIS_NO_onChanged(disItem);
								return false;
							}
						});
					}
				}
			});

			$('#cntDbBookCnt').text(cntDbBookCnt);
			$('#cntDbOmegaCnt').text(cntDbOmegaCnt);
		}

		// 구매할 교재 체크에 따라 총구매수량 금액 변경
		function V_BOOK_CD_onCahnged(obj) {
			const book_cd = obj.value;
			const isOmega = $(obj).closest('#divOmegaList').length > 0;
			const divName = `#${$(obj).closest('#divOmegaList, #divBookList').attr('id')} `;

			const otherRadioDisName = !isOmega ? 'V_OMEGA_DIS_NO_' : 'V_DIS_NO_'


			$(`input[name='${otherRadioDisName}${book_cd}']`).each((index, item) => {
				if ($(item).siblings(`input[name='V_MINAP_AMT_${book_cd}']`).val() > 0) {
					return true;
				}

				$(item).prop('disabled', obj.checked);
			});

			if (obj.checked) {
				if ($(`#selected-list-${book_cd}`).length === 0) {
					$('.selected-list ul').append(`
						<li id="selected-list-${book_cd}">
							<div class="name">
								${$('#book_name_' + book_cd).html()}
							</div>
							<div class="price">
								${$(divName + '#book_amt_' + book_cd).is(':visible')
									? `<del>${$(divName + '#book_amt_' + book_cd).html()}</del>`
									: ''}
								<span><strong class="sale_amt_${book_cd}">${$(divName + '#sale_amt_' + book_cd).html()}</strong>원</span>
							</div>
							<a href="javascript:void(0);" onClick="removeSelectedItem('${book_cd}');">삭제</a>


						</li>
					`);
				}
			} else {
				$(`#selected-list-${book_cd}`).remove();
			}

			checkCanBuy();
			setAllCheckStatus();
			calcCntAndAmt();
			updateBottomMargin();
		}

		// checkbox 선택 시 하단 여백 증가
		function updateBottomMargin() {
			const isMobile = window.innerWidth <= 600;

			const isTotalOpen = $('.total-wrap').hasClass('on');
			const isSelectedOpen = $('.selected-wrap').hasClass('on');

			// ? 전체 wrap이 닫혔으면 → 무조건 여백 없애기
			if (!isTotalOpen) {
				$('.tb-type2').css('margin-bottom', '0px');
				return;
			}

			// ? 전체는 열려 있고 드롭다운이 접혔다면
			if (!isSelectedOpen) {
				const foldedMargin = isMobile ? 40 : 60;
				$('.tb-type2').css('margin-bottom', `${foldedMargin}px`);
				return;
			}

			// ? 전체 열림 + 드롭다운 펼침 → 체크 수에 따라 여백 조절
			const bCount = $("input[name='Item_Cd']:checked:not(:disabled)").length;

			let bMargin;
			if (bCount === 0) {
				bMargin = 0;
			} else {
				bMargin = isMobile
					? 38 + Math.min(bCount, 3) * 40
					: 90 + Math.min(bCount, 3) * 50;
			}

			$('.tb-type2').css('margin-bottom', `${bMargin}px`);
		}
		// 할인 항목 선택 시 판매금액 변경
		function V_DIS_NO_onChanged(obj) {
			let book_cd = $(obj).attr('name').replace('V_DIS_NO_', '').replace('V_OMEGA_DIS_NO_', '');
			let dis_no = $(obj).val();
			const isOmega = $(obj).attr('name').indexOf('V_OMEGA_DIS_NO_') === 0;
			const divName = `#${isOmega ? 'divOmegaList' : 'divBookList'} `;

			if (dis_no > 0) {
				$.ajax({
					method: "POST",
					url: "getDisAmt.asp",
					contentType: 'application/x-www-form-urlencoded; charset=euc-kr',
					data: {"V_BOOK_CD": book_cd , "V_DIS_NO": dis_no},
					error: function() {
						alert("교재 금액을 불러오지 못했습니다.");
					},
					success : function(book_sale_amt) {
						$(divName + '.sale_amt_' + book_cd).text(book_sale_amt);
						$('.selected-list ul .sale_amt_' + book_cd).text(book_sale_amt);
						$(divName + '#book_amt_' + book_cd).show();
						$(`#selected-list-${book_cd} .price del`).show();
						calcCntAndAmt();
					}
				});
			} else {
				$(divName + '.sale_amt_' + book_cd).text($('#book_amt_' + book_cd).text().replace('원', ''));
				$('.selected-list ul .sale_amt_' + book_cd).text($('#book_amt_' + book_cd).text().replace('원', ''));
				$(divName + '#book_amt_' + book_cd).hide();
				$(`#selected-list-${book_cd} .price del`).hide();
				calcCntAndAmt();
			}
		}

		// 구매 선택한 교재 삭제
		function removeSelectedItem(book_cd) {
			$("input[name='Item_Cd'][value='" + book_cd + "']").prop('checked', false).trigger('change');
		}

		// 총 구매건수, 금액 계산
		function calcCntAndAmt() {
			let totalCnt = 0;
			let totalAmt = 0;

			$("input[name='Item_Cd']").each((index, item) => {
				if ($(item).prop('checked')) {
					let book_cd = item.value;

					totalCnt++;
					totalAmt += parseInt($(item).closest('#divOmegaList, #divBookList').find('#sale_amt_' + book_cd).text().replace(/,/g, ''));
				}
			});

			// 구매수량이 0 -> 1 로 변경 시 선택한 리스트 표시
			if ($("#cntBook_Total").html() == '0' && totalCnt === 1) {
				$('.selected-wrap').addClass('on')
			}

			// 구매수량이 0 이면 선택한 리스트 숨김
			if (totalCnt === 0) {
				$('.total-wrap').removeClass('on')
				updateBottomMargin();
			} else {
				$('.total-wrap').addClass('on')
				updateBottomMargin();
			}

			$(".cntBook_Total").html(totalCnt);
			$("#amtBook_Total").html(totalAmt.toLocaleString());
		}

		function fncAllCheck(obj) {
			let bAllCheck = $(obj).prop('checked');

			$(obj).closest("table").find("input[name='Item_Cd']:not(:disabled):visible").each((index, item) => {
				$(item).prop('checked', bAllCheck);

				if (bAllCheck) {
					$(item).parent().addClass('on');
				} else {
					$(item).parent().removeClass('on');
				}

				V_BOOK_CD_onCahnged(item);
			});
		}

		// 체크박스 선택여부에 따라 전체 선택 체크박스 선택여부 결정
		function setAllCheckStatus() {
			const toSet = (selector) => new Set($(selector).map(function() {
				return this.value;
			}).get());

			$('.prod_table').each((index, item) => {
				const checkedSet = toSet($(item).find("input[name='Item_Cd']:checked"));
				const visibleSet = toSet($(item).find("input[name='Item_Cd']:not(:disabled)")
					.filter((index2, element) => $(element).closest('.item_row').css('display') !== 'none'));
				let isSame = [...visibleSet].every(v => checkedSet.has(v));

				if (visibleSet.size === 0) {
					isSame = false
				}

				$(item).find('.allCheck').prop('checked', isSame)
				$(item).find('.allCheck').parent().toggleClass('on', isSame);
			});
		}

		function PayPage_book(){
			if ($("input[name='Item_Cd']:checked").length == 0){
				alert("결제할 교재를 선택해 주세요.");
				return;
			}

			if ($("input[name='payType']:checked").length != 1) {
				alert("결제방법을 선택해 주세요.");
				return;
			}

			if(!confirm("교재를 결제하시겠습니까?")) return;

			// 할인코드를 , 로 구분하여 하나의 문자열로 만든다.
			let strDis_no = '';
			$("input[name='Item_Cd']:checked").each((index, item) => {
				let book_cd = item.value;
				let dis_name = 'V_DIS_NO_'

				if (strDis_no.length > 0) {
					strDis_no += ",";
				}

				if ($(item).parents('#divOmegaList').length > 0) {
					dis_name = 'V_OMEGA_DIS_NO_';
				}

				strDis_no += $("input[name='" + dis_name + book_cd + "']:checked").val() ?? '0';
			});
			$("input[name='V_DIS_NO']").val(strDis_no);

			var f = document.form1_book;
			f.submit();
		}

	</script>
	<style>
		body {padding-bottom:100px;}
		footer {display:none;}
		/* PC & 태블릿 */
		@media (max-width:1023px){
			body {padding-bottom:200px;}
		}
		/* 모바일 */
		@media (max-width:600px){
			body {padding-bottom:200px;}
		}
	</style>
</head>
<body>
<div class="wrap">
	<header class="sub">
		<a href="/index.asp" class="btnPrev">교재구매</a>
		<!-- #include virtual = "/include/header.asp" -->
	</header>
	<%
		' 선택과목 가져오기
		sSelectedSbuect1 = 0
		sSelectedSbuect2 = 0
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

		' 수강중인 강좌교재 구매
		strSQL = ""
		strSQL = strSQL & " SELECT		E.LB_BOOK_CD, F.BM_BOOK_NM, F.BM_BOOK_AMT, B.CL_COLE_CD, D.CM_COURSE_NM, C.LM_LEC_NM "
		strSQL = strSQL & " 			, CASE WHEN F.BM_ISBN = '' OR F.BM_ISBN IS NULL THEN 'N' ELSE 'Y' END AS BM_TAX_SUPPORT "
		strSQL = strSQL & " 			, ISNULL(E.LB_DIS_NO, 0) DIS_NO, DM_DIS_TYPE, DD_ITEM_RATE, T2.MINAP_AMT "
		strSQL = strSQL & " 			, F.BM_PRO_TYPE, F.BM_TEST_TYPE, F.BM_DOM_CD, F.BM_TEST_SUBJECT, F.BM_RTRY_TYPE "
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
		strSQL = strSQL & " LEFT JOIN AMS_DIS_MAS WITH (NOLOCK) ON E.LB_DIS_NO = DM_DIS_NO "
		strSQL = strSQL & " LEFT JOIN AMS_DIS_DEF WITH (NOLOCK) ON DM_DIS_NO = DD_DIS_NO AND DD_ITEM_CD = 41 "
		strSQL = strSQL & " WHERE		1=1 "
		strSQL = strSQL & " AND			A.GH_BE_CD = 11 AND A.GH_REFUND_CD IS NULL "
		strSQL = strSQL & " AND			(C.LM_CLS_CD = 13 OR (C.LM_CLS_CD = 14 AND B.CL_HIGH_YN = 4)) "
		strSQL = strSQL & " AND 		NOT(C.LM_CLS_CD = 14 AND ISNULL(F.BM_TEST_TYPE, 0) = 3) " ' 2025.06.27 바자관 + OMEGA 조합은 제외
		strSQL = strSQL & " AND			(E.LB_SALE_SDT IS NULL OR E.LB_SALE_SDT <= GETDATE()) "
		strSQL = strSQL & " AND			(CASE WHEN E.LB_SALE_EDT IS NULL THEN DATEADD(DD, 1, B.CL_LEC_EDT) ELSE E.LB_SALE_EDT END) >= GETDATE() "
		strSQL = strSQL & " AND			ISNULL(G.SB_SALE_ST, '') <> 11 "
		strSQL = strSQL & " AND			F.BM_SALE_YN = 'Y' "
		strSQL = strSQL & " AND			F.BM_PRO_TYPE IN ('B', 'T') "
		strSQL = strSQL & " AND			A.GH_MEM_CD = '" & nRmsMemCd & "' "
		strSQL = strSQL & " ORDER BY	F.BM_BOOK_CD DESC, MINAP_AMT "
		strSQL = strSQL & " 			, CASE WHEN DM_DIS_TYPE IS NULL THEN 1 ELSE 0 END "
		strSQL = strSQL & " 			, DM_DIS_TYPE, DD_ITEM_RATE DESC "

		set RS = amsobjdb.sqlQuery(strSql,3)

		arrBookList = null

		If not (RS.eof or RS.bof) then
			arrBookList = RS.getrows
		Else
		End If
		RS.close
		set RS = nothing

		' 바자관 OMEGA
		strSQL = ""
		strSQL = strSQL & " SELECT		E.LB_BOOK_CD, F.BM_BOOK_NM, F.BM_BOOK_AMT, B.CL_COLE_CD, D.CM_COURSE_NM, C.LM_LEC_NM "
		strSQL = strSQL & " 			, CASE WHEN F.BM_ISBN = '' OR F.BM_ISBN IS NULL THEN 'N' ELSE 'Y' END AS BM_TAX_SUPPORT "
		strSQL = strSQL & " 			, ISNULL(E.LB_DIS_NO, 0) DIS_NO, DM_DIS_TYPE, DD_ITEM_RATE, T2.MINAP_AMT "
		strSQL = strSQL & " 			, F.BM_PRO_TYPE, F.BM_TEST_TYPE, F.BM_DOM_CD, F.BM_TEST_SUBJECT, F.BM_RTRY_TYPE "
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
		strSQL = strSQL & " LEFT JOIN AMS_DIS_MAS WITH (NOLOCK) ON E.LB_DIS_NO = DM_DIS_NO "
		strSQL = strSQL & " LEFT JOIN AMS_DIS_DEF WITH (NOLOCK) ON DM_DIS_NO = DD_DIS_NO AND DD_ITEM_CD = 41 "
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
		if sSelectedSbuect1 > 0 then
		strSQL = strSQL & " 				OR F.BM_TEST_SUBJECT = '" & sSelectedSbuect1 & "' "
		end if
		if sSelectedSbuect2 > 0 then
		strSQL = strSQL & " 				OR F.BM_TEST_SUBJECT = '" & sSelectedSbuect2 & "' "
		end if
		strSQL = strSQL & " 			) "
		strSQL = strSQL & " AND			A.GH_MEM_CD = '" & nRmsMemCd & "' "
		strSQL = strSQL & " ORDER BY	"
		strSQL = strSQL & " 			CASE "
		strSQL = strSQL & " 				WHEN BM_TEST_SUBJECT < 4000 THEN 0 "
		strSQL = strSQL & " 				WHEN BM_TEST_SUBJECT = 4113 THEN 1 "
		strSQL = strSQL & " 				ELSE 2 "
		strSQL = strSQL & " 			END, "
		strSQL = strSQL & " 			F.BM_TEST_SUBJECT, F.BM_BOOK_CD DESC, MINAP_AMT "
		strSQL = strSQL & " 			, CASE WHEN DM_DIS_TYPE IS NULL THEN 1 ELSE 0 END "
		strSQL = strSQL & " 			, DM_DIS_TYPE, DD_ITEM_RATE DESC "
		set RS = amsobjdb.sqlQuery(strSql,3)
		arrOmegaList = null

		If not (RS.eof or RS.bof) then
			arrOmegaList = RS.getrows
		Else
		End If
		RS.close
		set RS = nothing

		Dim arrOmegaKor(), arrOmegaMath(), arrOmegaEng(), arrOmegaHis(), arrOmegaSoc(), arrOmegaSci()
		Dim korSize, mathSize, EngSize, hisSize, socSize, sciSize
		korSize = -1 : mathSize = -1 : EngSize = -1 : hisSize = -1 : socSize = -1 : sciSize = -1

		ReDim arrOmegaKor(korSize)
		ReDim arrOmegaMath(mathSize)
		ReDim arrOmegaEng(EngSize)
		ReDim arrOmegaHis(hisSize)
		ReDim arrOmegaSoc(socSize)
		ReDim arrOmegaSci(sciSize)

		if isArray(arrOmegaList) then
			for i=0 to Ubound(arrOmegaList, 2)
				sTestSbuject	= arrOmegaList(14, i)

				ReDim item(Ubound(arrOmegaList, 1))
				for j=0 to Ubound(arrOmegaList, 1)
					item(j) = arrOmegaList(j, i)
				next

				if sTestSbuject >= 1000 and sTestSbuject < 2000 then
					korSize = korSize + 1
					ReDim Preserve arrOmegaKor(korSize)
					arrOmegaKor(korSize) = item
				elseif sTestSbuject >= 2000 and sTestSbuject < 3000 then
					mathSize = mathSize + 1
					ReDim Preserve arrOmegaMath(mathSize)
					arrOmegaMath(mathSize) = item
				elseif sTestSbuject >= 3000 and sTestSbuject < 4000 then
					EngSize = EngSize + 1
					ReDim Preserve arrOmegaEng(EngSize)
					arrOmegaEng(EngSize) = item
				elseif sTestSbuject = 4113 then
					hisSize = hisSize + 1
					ReDim Preserve arrOmegaHis(hisSize)
					arrOmegaHis(hisSize) = item
				elseif sTestSbuject >= 4000 and sTestSbuject < 4200 then
					socSize = socSize + 1
					ReDim Preserve arrOmegaSoc(socSize)
					arrOmegaSoc(socSize) = item
				elseif sTestSbuject >= 4200 and sTestSbuject < 5000 then
					sciSize = sciSize + 1
					ReDim Preserve arrOmegaSci(sciSize)
					arrOmegaSci(sciSize) = item
				end if
			next
		end if

		Set dictOmega = Server.CreateObject("Scripting.Dictionary")
		dictOmega.Add "국어", arrOmegaKor
		dictOmega.Add "수학", arrOmegaMath
		dictOmega.Add "영어", arrOmegaEng
		dictOmega.Add "한국사", arrOmegaHis
		dictOmega.Add "사회탐구", arrOmegaSoc
		dictOmega.Add "과학탐구", arrOmegaSci
	%>
	<section class="sub">
		<div class="inBox">
			<div class="tabCommon textbook">
				<ul class="tabList">
					<li class="on"><a href="javascript:void(0)">수강중인<br class="pc-no">
					강좌교재구매</a></li>
					<li><a href="javascript:void(0)">바자관 OMEGA<br class="pc-no">
					콘텐츠 구매</a></li>
				</ul>
				<form name="form1_book" method="post" action="/russel/mypage/student/account_pay_chk.asp">
				<!-- 수강중인 강좌교재구매 탭 -->
				<div class="tabCon on" id="divBookList">
					<div class="tabConList">
						<div class="infoList">
							<ul>
								<li>수강 신청한 강좌의 교재만 구매 및 수령할 수 있습니다.</li>
								<li>교재 구매는 온라인 서비스를 통해서만 가능합니다.</li>
								<li>같은 교재를 여러 강좌에서 사용하는 경우, 목록 내 1건의 강좌만 선택하여 해당 교재를 구매할 수 있습니다.</li>
								<li>같은 교재를 사용하는 강좌의 경우, 다른 강좌에서 교재 구매 완료 시 본 교재 목록에 나타나지 않습니다.</li>
								<li>교재마다 구매할 수 있는 기간이 상이하며, 학원에서 별도 안내합니다.</li>
								<li>교재 수령은 학원으로 문의 또는 학원 홈페이지 공지사항을 통해 확인 할 수 있습니다.</li>
							</ul>
						</div>

						<h2 class="blind">수강중인 강좌교재구매</h2>
						<h3 class="title">수강중인 강좌교재 (<strong id="cntDbBookCnt" class="blue"></strong>건 구매가능)</h3>
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
						<div class="tb-type2">
							<table summary="이 표는 수강중인 강좌교재를 제공하며 선택, 교재정보, 금액으로 구성되어있습니다." class="prod_table">
								<caption>수강중인 강좌교재</caption>
								<colgroup>
									<col style="width:5%;">
									<col style="width:auto;">
									<col style="width:20%;">
								</colgroup>
								<thead>
									<tr>
										<th>
											<span class="imgCheck">
												<input type="checkbox" title="선택" onchange="javascript:fncAllCheck(this);" value="true" class="allCheck" />
											</span>
										</th>
										<th>교재정보</th>
										<th>금액</th>
									</tr>
								</thead>
								<tbody>
									<input name="Mode" type="hidden" value="Register7"> <% 'Register7 은 온라인교재구매(Register6 은 마이페이지 통해서 오는 구매) %>
									<input name="Book_Kbn" type="hidden" value="13"> <% 'Book_Kbn - 12 : 세트, 13 : 단일 %>
									<input name="V_DIS_NO" type="hidden" value="" />
									<% if isArray(arrBookList) then
										sPre_Book_CD = 0
										for i=0 to Ubound(arrBookList, 2)
											sBook_CD	= arrBookList(0, i)
											sBook_NM	= arrBookList(1, i)
											sBook_AMT	= arrBookList(2, i)
											sCole_CD 	= arrBookList(3, i)
											sCour_NM 	= arrBookList(4, i)
											sLec_NM 	= arrBookList(5, i)
											sTax_Support	= arrBookList(6, i)
											sDis_NO		= arrBookList(7, i)
											sDis_Type	= arrBookList(8, i)
											sDis_Rate	= arrBookList(9, i)
											sMinap_Amt	= arrBookList(10, i)
											sProdType	= arrBookList(11, i)
											sTestType	= arrBookList(12, i)
											sDomCode	= arrBookList(13, i)
											sTestSbuject	= arrBookList(14, i)
											sRtryType	= arrBookList(15, i)

											if sMinap_Amt > 0 then
												MINAP = "미납"
											Else
												MINAP = "완납"
											end if
											%>


											<% if i > 0 and sPre_Book_CD <> sBook_CD then %>
													</td>
												</tr>
											<% end if %>
											<% if sPre_Book_CD <> sBook_CD  then %>
												<tr id="item_<%=sBook_CD%>" class="item_row">
													<td>
														<span class="imgCheck">
															<input type="checkbox" title="선택" name="Item_Cd" value="<%=sBook_CD%>" onchange="javascript:V_BOOK_CD_onCahnged(this);"/>
															<input type="hidden" name="sProdType" value="<%=sProdType%>" />
															<input type="hidden" name="sTestType" value="<%=sTestType%>" />
															<input type="hidden" name="sDomCode" value="<%=sDomCode%>" />
															<input type="hidden" name="sTestSbuject" value="<%=sTestSbuject%>" />
															<input type="hidden" name="sRtryType" value="<%=sRtryType%>" />
														</span>
													</td>
													<td class="con" colspan="2">
														<dl>
															<dt><span class="subject" id="book_name_<%=sBook_CD%>"><%=sBook_NM%></span><% if sTax_Support = "Y" then %><a href="#" class="tax">소득공제</a><% end if %></dt>
															<dd class="price">
																<strong id="sale_amt_<%=sBook_CD%>" class="sale_amt_<%=sBook_CD%>"><%=FormatCurrencySTR(sBook_AMT)%></strong>원<br>
																<span class="bf" id="book_amt_<%=sBook_CD%>"><%=FormatCurrencySTR(sBook_AMT)%>원</span>
															</dd>
														</dl>
											<% end if %>
														<dl class="info">
															<dt>
																<input type="hidden" name="V_MINAP_AMT_<%=sBook_CD%>" value="<%=sMinap_Amt%>" />
																<input type="radio" name="V_DIS_NO_<%=sBook_CD%>" value="<%=sDis_NO%>" <% if MINAP="미납"  then %> disabled <% end if %> onchange="javascript:V_DIS_NO_onChanged(this);" />
																<strong><%=sCour_NM%></strong><br>
																<span><%=sLec_NM%></span>
															</dt>
															<dd class="apply">
																<strong>
																	<% if sDis_NO <> 0 then
																		Response.Write FormatCurrencySTR(sDis_Rate)
																		if sDis_Type = "A" then
																			Response.Write "원"
																		else
																			Response.Write "%"
																		end if %>
																		지원
																	<% else %>
																		-
																	<% end if %>
																</strong>
															</dd>
														</dl>
											<% sPre_Book_CD = sBook_CD
										next %>
													</td>
												</tr>
									<% end if %>
									<tr id="no_item_row" class="item_row">
										<td colspan="3">구매가능한 교재 정보가 없습니다.</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="tabConList">
						<h2 class="blind">교재구매/수령</h2>
					</div>
				</div>
				<!-- 바자관 OMEGA 콘텐츠 구매 탭 -->
				<div class="tabCon" id="divOmegaList">
					<div class="tabConList on">

						<h2 class="blind">수강중인 강좌교재구매</h2>
						<div class="filter-area mt30">
							<span>검색구분</span>
							<select name="V_DOM_OR_TEST_SUBJECT" class="s-second" onchange="setFilter();">
								<option value="">전체</option><%
								strSql = "Exec dbo.Msp_Get_Com_Dtl_01 222"
								set RS = amsobjdb.sqlQuery(strSql,3)

								DO WHILE NOT RS.EOF
									if RS("CD_DTL_CD") >= 4000 and RS("CD_DTL_CD") < 5000 and RS("CD_DTL_CD") <> 4113 and RS("CD_DTL_CD") <> sSelectedSbuect1 and RS("CD_DTL_CD") <> sSelectedSbuect2 then
									else %>
										<option value="<%=RS("CD_DTL_CD")%>"><%=RS("CD_COM_CLS")%></option><%
									end if
									RS.MoveNext
								LOOP
								RS.close
								set RS = nothing %>
							</select>
							<select name="V_RTRY_TYPE" class="s-third" onchange="setFilter();" disabled>
								<option value="">전체</option>
								<option value="H">모의고사</option>
								<option value="S">블랙</option>
								<option value="L">블루</option>
								<option value="W">위클리</option>
							</select>
						</div>
						<div class="tit-wrap">
							<h3 class="title mt10">바자관 OMEGA 콘텐츠 구매<br class="pc-no">
							(<strong id="cntDbOmegaCnt" class="blue"></strong>건 구매가능)</h3>
							<a href="javascript:void(0)" class="s-btn">선택과목 설정</a>
						</div>
						<div class="tb-type2"><%
							for each key in dictOmega.Keys
								arrOmegaListBySubject = dictOmega(key)
								if (sSelectedSbuect1 >= 4200 and sSelectedSbuect2 >= 4200 and key = "사회탐구") _
									or (sSelectedSbuect1 < 4200 and sSelectedSbuect2 < 4200 and key = "과학탐구") then ' 선택과목 모두 다른 영역을 선택했을 때 영역 비노출
								else %>
									<table class="prod_table">
										<caption>바자관 OMEGA 콘텐츠</caption>
										<colgroup>
											<col style="width:5%;">
											<col style="width:auto;">
											<col style="width:20%;">
										</colgroup>
										<thead>
											<tr class="bg-gray2">
												<th colspan="3" class="b-b-n tal"><%=key%></th>
											</tr>
											<tr>
												<th>
													<span class="imgCheck">
														<input type="checkbox" title="선택" onchange="javascript:fncAllCheck(this);" value="true" class="allCheck" />
													</span>
												</th>
												<th>교재정보</th>
												<th>금액</th>
											</tr>
										</thead>
										<tbody><%
											if ubound(arrOmegaListBySubject) >= 0 then
												sPre_Book_CD = 0
												for i=0 to ubound(arrOmegaListBySubject)
													omega = arrOmegaListBySubject(i)
													sBook_CD	= omega(0)
													sBook_NM	= omega(1)
													sBook_AMT	= omega(2)
													sCole_CD 	= omega(3)
													sCour_NM 	= omega(4)
													sLec_NM 	= omega(5)
													sTax_Support	= omega(6)
													sDis_NO		= omega(7)
													sDis_Type	= omega(8)
													sDis_Rate	= omega(9)
													sMinap_Amt	= omega(10)
													sProdType	= omega(11)
													sTestType	= omega(12)
													sDomCode	= omega(13)
													sTestSbuject	= omega(14)
													sRtryType	= omega(15)

													if sMinap_Amt > 0 then
														MINAP = "미납"
													Else
														MINAP = "완납"
													end if
													%>
													<% if i > 0 and sPre_Book_CD <> sBook_CD then %>
															</td>
														</tr>
													<% end if %>
													<% if sPre_Book_CD <> sBook_CD  then %>
														<tr id="item_<%=sBook_CD%>" class="item_row">
															<td>
																<span class="imgCheck">
																	<input type="checkbox" title="선택" name="Item_Cd" value="<%=sBook_CD%>" onchange="javascript:V_BOOK_CD_onCahnged(this);"/>
																	<input type="hidden" name="sProdType" value="<%=sProdType%>" />
																	<input type="hidden" name="sTestType" value="<%=sTestType%>" />
																	<input type="hidden" name="sDomCode" value="<%=sDomCode%>" />
																	<input type="hidden" name="sTestSbuject" value="<%=sTestSbuject%>" />
																	<input type="hidden" name="sRtryType" value="<%=sRtryType%>" />
																</span>
															</td>
															<td class="con" colspan="2">
																<dl>
																	<dt><span class="subject" id="book_name_<%=sBook_CD%>"><%=sBook_NM%></span><% if sTax_Support = "Y" then %><a href="#" class="tax">소득공제</a><% end if %></dt>
																	<dd class="price">
																		<strong id="sale_amt_<%=sBook_CD%>" class="sale_amt_<%=sBook_CD%>"><%=FormatCurrencySTR(sBook_AMT)%></strong>원<br>
																		<span class="bf" id="book_amt_<%=sBook_CD%>"><%=FormatCurrencySTR(sBook_AMT)%>원</span>
																	</dd>
																</dl>
													<% end if %>
																<dl class="info">
																	<dt>
																		<input type="hidden" name="V_MINAP_AMT_<%=sBook_CD%>" value="<%=sMinap_Amt%>" />
																		<input type="radio" name="V_OMEGA_DIS_NO_<%=sBook_CD%>" value="<%=sDis_NO%>" <% if MINAP="미납"  then %> disabled <% end if %> onchange="javascript:V_DIS_NO_onChanged(this);" />
																		<strong><%=sCour_NM%></strong><br>
																		<span><%=sLec_NM%></span>
																	</dt>
																	<dd class="apply">
																		<strong>
																			<% if sDis_NO <> 0 then
																				Response.Write FormatCurrencySTR(sDis_Rate)
																				if sDis_Type = "A" then
																					Response.Write "원"
																				else
																					Response.Write "%"
																				end if %>
																				지원
																			<% else %>
																				-
																			<% end if %>
																		</strong>
																	</dd>
																</dl>
													<% sPre_Book_CD = sBook_CD
												next
											end if %>
											<tr class="item_row">
												<td colspan="3">구매가능한 교재 정보가 없습니다.</td>
											</tr>
										</tbody>
									</table>
								<% end if %>
							<% Next %>
						</div>
					</div>
					<div class="tabConList">
						<h2 class="blind">교재구매/수령</h2>
					</div>
				</div>
				<!-- D: 구매 선택한 교재 1건 이상 class="on" 추가-->
				<div class="total-wrap">
					<!-- 구매 선택한 교재 -->
					<div class="selected-wrap">
						<h3>
							구매 선택한 교재 (<strong class="blue cntBook_Total">0</strong>건)
						</h3>
						<div class="selected-list">
							<ul>
							</ul>
						</div>
					</div>
					<!-- //구매 선택한 교재 -->
					<div class="totalInfo">
						<span>
							총 구매수량
							<strong id="cntBook_Total" class="cntBook_Total">0</strong>건</span>
							<span>총 구매금액 <strong id="amtBook_Total">0</strong>원
						</span>
					</div>
					<div class="paymentBox">
						<div class="payment_L">

							<span>
								<input type="radio" id="payment_c" name="payType" value="SC0030" checked /><label for="payment_c">퀵계좌이체</label>
								<!-- <span class="flag-sale">0.3% 할인</span> -->
								&nbsp;&nbsp;&nbsp;&nbsp;
							</span>
							<span>
								<input type="radio" id="payment_b" name="payType" value="21" /><label for="payment_b">실시간 계좌이체</label>
								&nbsp;&nbsp;&nbsp;&nbsp;
							</span>
							<span>
								<input type="radio" id="payment_a" name="payType" value="SC0010" /><label for="payment_a">신용카드</label>
							</span>
						</div>
						<div class="payment_R">
							<a href="/main.asp" class="cancel">취소</a>
							<a href="javascript:;" onClick="javascript:PayPage_book();" class="payment">결제하기</a>
						</div>
					</div>
				</div>
				</form>

				<!-- 선택과목 설정 팝업 -->
				<form name="form2_subject" method="post" action="./setSubejct.asp">
					<div class="sel-sbj-pop" style="display:none;">
						<div class="pop-con">
							<p>선택과목 설정</p>
							<div class="infoList">
								<p>OMEGA 선택과목 정보를 등록해 주세요.</p>
								<ul>
									<li>등록하신 선택과목 정보에 맞춰 구매해야 하는 OMEGA 모의고사가 자동으로 표시됩니다.</li>
									<li>선택과목 정보는 최초 1회만 등록하시면 됩니다.</li>
									<li>선택과목 변경은 바자관 OMEGA 콘텐츠 구매 탭의 [선택과목 설정] 버튼에서 가능합니다.</li>
								</ul>
							</div>
							<div class="tit-area">
								시험 영역<span>(사회/과학탐구 2과목 선택)</span>
							</div>
							<div class="sel-area">
								<ul>
									<li>
										<label class="s-checkbox">
											<input type="checkbox" checked disabled>
											<span></span>
										</label> 국어
									</li>
									<li>
										<label class="s-checkbox">
											<input type="checkbox" checked disabled>
											<span></span>
										</label> 수학
									</li>
									<li>
										<label class="s-checkbox">
											<input type="checkbox" checked disabled>
											<span></span>
										</label> 영어
									</li>
									<li>
										<label class="s-checkbox">
											<input type="checkbox" checked disabled>
											<span></span>
										</label> 한국사
									</li>
								</ul>
								<div>
									<ul><%
										strSQL = ""
										strSQL = strSQL & " SELECT		CD_DTL_CD, CD_SUB_CODE, CD_COM_CLS "
										strSQL = strSQL & " FROM		AMS_COM_DTL NOLOCK "
										strSQL = strSQL & " WHERE		CD_COM_CD = 222 "
										strSQL = strSQL & " AND			CD_DTL_YN = 'Y' "
										strSQL = strSQL & " AND			CD_DTL_CD >= 4100 AND CD_DTL_CD < 4200 "
										strSQL = strSQL & " AND			CD_DTL_CD <> 4113 "
										strSQL = strSQL & " ORDER BY	CD_ORD_NO "
										set RS = amsobjdb.sqlQuery(strSql,3)

										Do While Not Rs.EOF %>
											<li>
												<label class="s-checkbox">
													<input type="checkbox" name="V_SUB_CD" value="<%=rs("CD_SUB_CODE")%>" onchange="checkSubjectCount(this);" <%
														if rs("CD_DTL_CD") = sSelectedSbuect1 or rs("CD_DTL_CD") = sSelectedSbuect2 then %>checked <% end if %>
													>
													<span></span>
													<%=RS("CD_COM_CLS")%>
												</label>
											</li>
											<% Rs.MoveNext
										Loop
										RS.close
										set RS = nothing %>
									</ul>
									<ul><%
										strSQL = ""
										strSQL = strSQL & " SELECT		CD_DTL_CD, CD_SUB_CODE, CD_COM_CLS "
										strSQL = strSQL & " FROM		AMS_COM_DTL NOLOCK "
										strSQL = strSQL & " WHERE		CD_COM_CD = 222 "
										strSQL = strSQL & " AND			CD_DTL_YN = 'Y' "
										strSQL = strSQL & " AND			CD_DTL_CD >= 4200 AND CD_DTL_CD < 5000 "
										strSQL = strSQL & " ORDER BY	CD_ORD_NO "
										set RS = amsobjdb.sqlQuery(strSql,3)

										Do While Not Rs.EOF %>
											<li>
												<label class="s-checkbox">
													<input type="checkbox" name="V_SUB_CD" value="<%=rs("CD_SUB_CODE")%>" onchange="checkSubjectCount(this);" <%
														if rs("CD_DTL_CD") = sSelectedSbuect1 or rs("CD_DTL_CD") = sSelectedSbuect2 then %>checked <% end if %>
													>
													<span></span>
													<%=RS("CD_COM_CLS")%>
												</label>
											</li>
											<% Rs.MoveNext
										Loop
										RS.close
										set RS = nothing %>
									</ul>
								</div>
							</div>
							<a href="javascript:setSubejct();" class="btn-type01">저장</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
</div>
<!-- footer -->
<!-- #include virtual = "/include/footer.asp" -->
<!-- //footer -->

<script>
// 검색 구분값에 의한 select박스 변화(수강중인 강좌교재구매)
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
		document.querySelector('#divBookList select[name="V_RTRY_TYPE"]').value = '';
	}

	setFilter();
});

// 검색 구분값에 의한 select박스 변화02(바자관 OMEGA콘텐츠 구매)
$('#divOmegaList select[name="V_DOM_OR_TEST_SUBJECT"]').get(0).addEventListener('change', function () {
    const firstSelectedValue02 = $('#divOmegaList select[name="V_DOM_OR_TEST_SUBJECT"]').val();

    // 초기화
	const omegaTestType = $('#divOmegaList select[name="V_RTRY_TYPE"]').get(0)
    omegaTestType.disabled = true;

	if (firstSelectedValue02 !== '') {
		omegaTestType.disabled = false;
	} else {
		omegaTestType.disabled = true;
	}
});
// 구매 선택한 교재 드롭박스 이벤트
$(document).ready(function() {
	$('.selected-wrap h3').click(function () {
		$(this).closest('.selected-wrap').toggleClass('on');
		setTimeout(() => {
			updateBottomMargin();
		}, 0);
	});

  	// 상단 탭메뉴
	const urlParams = new URLSearchParams(window.location.search);
	const tabIndex = parseInt(urlParams.get('tab')) || 1;
	const idx = tabIndex - 1; // 탭 index는 0부터 시작

	$('.tabList li').on('click', function () {
		const idx = $(this).index();
		$('.tabList li').removeClass('on');
		$(this).addClass('on');

		$('.tabCon').removeClass('on');
		$('.tabCon').eq(idx).addClass('on');

		if (idx === 1) {
			if ('<%=sSelectedSbuect1%>' === '0' && '<%=sSelectedSbuect2%>' === '0') {
				$('.sel-sbj-pop').css('display', 'block');
			}
		}
	});

	$('.tabList li').eq(idx).trigger('click');

	// 선택과목 설정 팝업 열기
	$('.s-btn').on('click', function () {
		$('.sel-sbj-pop').css('display', 'block');
	});
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

// 선택과목 체크박스 선택 시 선택된 과목 카운트
function checkSubjectCount(object) {
	const MAX_COUNT = 2;

	if ($('input[name="V_SUB_CD"]:checked').length > MAX_COUNT) {
		alert(`최대 ${MAX_COUNT}과목 선택 가능합니다.`);
		object.checked = false;
	}
}

// 선택과목 저장 버튼
function setSubejct() {
	if ($('input[name="V_SUB_CD"]:checked').length === 0) {
		alert('사회/과학탐구 과목을 선택해주세요.');
		return;
	}

	if ($('input[name="V_SUB_CD"]:checked').length !== 2) {
		alert('사회/과학탐구 2과목을 선택해주세요.');
		return;
	}

	if (confirm('저장하시겠습니까?')) {
		document.form2_subject.submit();
	}
}


</script>
</body>
</html>
