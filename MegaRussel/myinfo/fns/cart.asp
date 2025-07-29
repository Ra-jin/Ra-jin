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
		function Item_Cnt_onChanged(obj,cnt) {
			if ($(obj).parent().children().first().val() == '') $(obj).parent().children().first().val("0");
			$(obj).parent().children().first().val(parseInt($(obj).parent().children().first().val()) + parseInt(cnt));			
			
			if (parseInt($(obj).parent().children().first().val()) <= 0) {
				$(obj).parent().children().first().val("0");
				$(obj).parent().children('.down').addClass('disabled');
				$(obj).parents('tr').find('input[type=checkbox]').prop('checked', false);
				$('.imgCheck').imgCheck();
			} else {
				$(obj).parent().children('.down').removeClass('disabled');
				$(obj).parents('tr').find('input[type=checkbox]').prop('checked', true);
				$('.imgCheck').imgCheck();
			}

			V_BOOK_CD_onCahnged();
		}

		function V_BOOK_CD_onCahnged() {
			iCntChecked = 0;
			iAmtChecked = 0;
			for (var i = 0; i < $("input[name='Item_Cd']").length; i++) {
				bookCd = 0 

				if ($("input[name='Item_Cd']")[i].checked == true) {
					bookCd = $("input[name='Item_Cd']")[i].value;
					bookCnt = $("input[name='Item_Cnt_" + bookCd + "']").val();
					 
					iCntChecked = iCntChecked + parseInt(bookCnt);
					iAmtChecked = iAmtChecked + (parseInt($($("input[name='V_BOOK_AMT']")[i]).val()) * parseInt(bookCnt));
				}
			}
			$("#cntBook_Total").html(iCntChecked);
			$("#amtBook_Total").html(iAmtChecked.toLocaleString());
		}

		function PayPage_book(){
			if ($("input[name='payType']:checked").length != 1) {
				alert("결제방법을 선택해 주세요.");
				return;
			}

			if ($("#cntBook_Total").html() == "0") {
				alert("총 구매수량이 0건 입니다.");
				return;
			}
			

			if(!confirm("식권을 결제하시겠습니까?")) return;

			var f = document.form1_book;
			f.submit();
		}
	</script>
</head>
<body onload="javascript:V_BOOK_CD_onCahnged();">
<div class="wrap">
	<header class="sub">
        <a href="/index.asp" class="btnPrev">식권결제</a>
		<!-- #include virtual = "/include/header.asp" -->			
	</header>
	<%
		strSQL = ""
		strSQL = strSQL & " SELECT		C.LM_LEC_NM, D.LB_BOOK_CD, D.BM_BOOK_NM, D.BM_BOOK_AMT, ISNULL(D.BM_BOOK_CNT, 0) AS BM_BOOK_CNT, ISNULL(D.SALE_CNT, 0) SALE_CNT "
		strSQL = strSQL & " 			, CASE WHEN D.BM_ISBN = '' OR D.BM_ISBN IS NULL THEN 'N' ELSE 'Y' END AS BM_TAX_SUPPORT, BM_IN_DT "
		strSQL = strSQL & " 			, AM_ACA_ABBR, AM_ACA_CD, BC_SALE_MON "
		strSQL = strSQL & " FROM		AMS_GRP_HIS A WITH(NOLOCK) "
		strSQL = strSQL & " INNER JOIN	AMS_COU_LEC B WITH(NOLOCK) ON A.GH_COLE_CD = B.CL_COLE_CD "
		strSQL = strSQL & " INNER JOIN	AMS_LEC_MAS C WITH(NOLOCK) ON B.CL_LEC_CD = C.LM_LEC_CD "
		strSQL = strSQL & " INNER JOIN	AMS_ACA_MAS E WITH(NOLOCK) ON A.GH_ACA_CD = E.AM_ACA_CD "
		strSQL = strSQL & " LEFT JOIN	( "
		strSQL = strSQL & " 				SELECT		* "
		strSQL = strSQL & " 				, (SELECT COUNT(*) FROM AMS_SALE_BOOK WITH(NOLOCK) WHERE SB_BOOK_CD = BM_BOOK_CD AND SB_SALE_ST = 11) AS SALE_CNT "
		strSQL = strSQL & " 				FROM		AMS_LEC_BOOK WITH(NOLOCK) "
		strSQL = strSQL & " 				INNER JOIN	AMS_BOOK_MAS WITH(NOLOCK) ON LB_BOOK_CD = BM_BOOK_CD "
		strSQL = strSQL & " 				INNER JOIN	AMS_BOOK_CMON WITH(NOLOCK) ON BM_BOOK_CD = BC_BOOK_CD "
		strSQL = strSQL & "					WHERE		BM_PRO_TYPE = 'F' "
		strSQL = strSQL & "					AND			BC_SALE_MON >= CONVERT(char(6), GETDATE(), 112) "
		strSQL = strSQL & " 			) D ON B.CL_COLE_CD = D.LB_COLE_CD "
		strSQL = strSQL & " WHERE		1=1 "
		strSQL = strSQL & " AND			A.GH_BE_CD = 11 AND A.GH_REFUND_CD IS NULL "
		strSQL = strSQL & " AND			C.LM_CLS_CD = 14 "
		strSQL = strSQL & " AND			DATEDIFF(DD, B.CL_LEC_EDT, GETDATE()) <= 0 "
		strSQL = strSQL & " AND			(D.LB_BOOK_CD IS NOT NULL) "
		strSQL = strSQL & " AND			D.BM_SALE_YN = 'Y' "
		strSQL = strSQL & " AND			A.GH_MEM_CD = '" & nRmsMemCd & "' "
		set RS = amsobjdb.sqlQuery(strSql,2)

		iCntBookNoSale = 0
		If not (RS.eof or RS.bof) then
			arrBookList = RS.getrows
			iCntBookNoSale = RS.RecordCount
		Else
		End If
		RS.close
		set RS = nothing
	%>
	<section class="sub">
		<div class="inBox">
			<div class="tabCommon">
				<ul class="tabList">					
					<li><a href="calendar.asp">예약관리</a></li>
					<li class="on"><a href="cart.asp">식권결제</a></li>
				</ul>
				<div class="tabCon">
					<form name="form1_book" method="post" action="/russel/mypage/student/account_pay_chk.asp">
					<div class="tabConList on">
						<h2 class="blind">식권결제</h2>
						<div class="title-wrap">
							<h3 class="title">구매가능 식권(<strong class="blue"><%=iCntBookNoSale%></strong>건 구매가능)</h3>							
						</div>
						<div class="tb-type2 bdColor-gy">
							<table summary="">
								<caption></caption>
								<colgroup>
									<col width="8%">
									<col width="13%">
									<col width="%">
									<col width="15%">
									<col width="20%">
								</colgroup>
								<thead>
									<tr>
										<th>선택</th>
										<th>학원</th>
										<th>상품명</th>
										<th>수량</th>
										<th>금액</th>
									</tr>
								</thead>
								<tbody>
									<input name="Mode" type="hidden" value="Register8"> <% 'Register8 은 온라인식권구매 %>
									<input name="Book_Kbn" type="hidden" value="13"> <% 'Book_Kbn - 13 : 단일교재(식권은 교재테이블에 생성되었기 때문에 이대로 사용) %>
									<% if isArray(arrBookList) then
										for i=0 to Ubound(arrBookList, 2)
											sLec_NM 	= arrBookList(0, i)
											sBook_CD	= arrBookList(1, i)
											sBook_NM	= arrBookList(2, i)
											sBook_AMT	= arrBookList(3, i)
											iBook_CNT	= arrBookList(4, i)
											iBook_Sale_CNT	= arrBookList(5, i)
											sTax_Support	= arrBookList(6, i)
											sBook_In_DT		= arrBookList(7, i)
											sAca_NM		= arrBookList(8,i)
											sAca_CD		= arrBookList(9,i)
											sBook_Sale_Mon	= arrBookList(10,i)

											strSQL = ""
											strSQL = strSQL & " SELECT		COUNT(CASE WHEN A.sKind_l = 'Y' THEN 1 END) AS CNT_AVAILABLE_LUN "
											strSQL = strSQL & " 			, COUNT(CASE WHEN A.sKind_s = 'Y' THEN 1 END) AS CNT_AVAILABLE_DIN "
											strSQL = strSQL & " FROM		( "
											strSQL = strSQL & " 			SELECT		RANK() OVER (ORDER BY sDate) AS RANKING, B.sDate, B.sKind_l, B.sKind_s "
											strSQL = strSQL & " 			FROM		MegaRussel..MG_AMS_CODE		A (NOLOCK) "
											strSQL = strSQL & " 			INNER JOIN	MegaRussel..MG_MEAL			B (NOLOCK) ON A.CAMPUS_CODE = B.sCode "
											strSQL = strSQL & " 			WHERE		1=1 "
											strSQL = strSQL & "             AND			A.AMS_CODE_ACA = '" & sAca_CD & "' "
											strSQL = strSQL & " 			AND			B.sDate >= CONVERT(VARCHAR(10), GETDATE(), 23) "
											strSQL = strSQL & "             AND			YEAR(B.sDate) = '" & left(sBook_Sale_Mon,4) & "' "
											strSQL = strSQL & "             AND			MONTH(B.sDate) = '" & right(sBook_Sale_Mon,2) & "' "
											strSQL = strSQL & " 			AND			B.sDate_hflag = 'N' "
											strSQL = strSQL & " 			) A "
											strSQL = strSQL & " WHERE		1=1 "
											strSQL = strSQL & " AND			RANKING > (CASE WHEN CONVERT(CHAR(6), GETDATE(), 112) < '" & sBook_Sale_Mon & "' THEN 0 ELSE 3 END) "
											set RS = amsobjdb.sqlQuery(strSql,2)

											iCntAvailableLun = 0
											iCntAvailableDin = 0
											If not (RS.eof or RS.bof) then
												iCntAvailableLun = RS("CNT_AVAILABLE_LUN")
												iCntAvailableDin = RS("CNT_AVAILABLE_DIN")
											Else
												
											End If
											RS.close
											set RS = nothing
											%>
											<tr>
												<td><span class="imgCheck"><input type="checkbox" title="선택" id="check_<%=i%>" name="Item_Cd" value="<%=sBook_CD%>" onchange="javascript:V_BOOK_CD_onCahnged();"  ></span></td>
												<td><%=sAca_NM%></td>
												<td class="con">
													<label for="check_<%=i%>">
														<%=sBook_NM%><br/>
														<span class="fns-num">(제공일 : 중식 <strong><%=iCntAvailableLun%></strong>개, 석식 <strong><%=iCntAvailableDin%></strong>개)</span>
													</label>
												</td>
												<td>
													<div class="count">
														<input type="text" name="Item_Cnt_<%=sBook_CD%>" value="0" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" onblur="javascript:Item_Cnt_onChanged(this, 0);">
														<button type="button" class="up" onclick="javacsript:Item_Cnt_onChanged(this, 1);"></button>
														<button type="button" class="down disabled" onclick="javacsript:Item_Cnt_onChanged(this, -1);"></button>
													</div>
												</td>
												<td class="price"><strong><%=FormatCurrencySTR(sBook_AMT)%></strong>원</td>
												<input type="hidden" name="V_BOOK_AMT" value="<%=sBook_AMT%>" />
											</tr>
										<% next
									end if %>
								</tbody>
							</table>							
						</div>
						<div class="important important2">
							<p>※ 구매전 주의사항</p>
							<ul>
								<li>· 구매한 달의 식권을 반드시 소진 하셔야 합니다.  ex) 9월 식권 10월 예약불가 </li>
								<li><strong>· 식권 결제 후 급식예약까지 완료 하셔야만 식사 제공이 가능합니다. 캘린더에서 예약까지 완료해주세요!</strong></li>
								<!-- <li><strong>· 구매는 IE(Internet Explorer)로 진행부탁드립니다. </strong></li> -->
							</ul>
							<!-- <p class="mt20">※ IE브라우저 상에서 결제 오류 시 조치사항</p>
							<ul>
								<li>1. IE(Internet Explorer) 아이콘을 우클릭 하여 <strong>관리자 권한으로 실행</strong>을 선택</li>
								<li>2. 인터넷 옵션 클릭→ 일반탭 삭제버튼 클릭 → 위에서 4번째 까지만 선택 후 삭제 </li>
								<li>3. 개인정보 탭 → 고급 → 항상 세션에 쿠키 허용 체크</li>
								<li>4. 개인정보 탭 → 팝업차단사용에 체크 해제 </li>
								<li class="mt20">위와 같이 진행하였음에도 결제 오류가 발생하는 경우, 토스 페이먼츠 1544-7772 고객센터로 문의부탁드립니다.</li>
							</ul> -->
						</div>
						<div class="totalInfo">
							<span>총 구매수량 <strong id="cntBook_Total">0</strong>건</span><span>구매금액 <strong id="amtBook_Total">0</strong>원</span>
						</div>
						<div class="paymentBox">
							<div class="payment_L">
								<input type="radio" id="payment_a" name="payType" value="11" checked/><label for="payment_a">신용 카드</label>
								<!--<input type="radio" id="payment_b" name="payType" value="21" /><label for="payment_b">실시간 계좌 이체</label>-->
							</div>
							<div class="payment_R">
								<a href="/main.asp" class="cancel">취소</a>
								<a href="javascript:;" onClick="javascript:PayPage_book();" class="payment">결제하기</a>
							</div>
						</div>
					</div>
					</form>
					<!-- tabConList -->
					<div>
						
					</div>
					<!-- //tabConList -->
				</div>
			</div>
		</div>
	</section>
</div>
</body>
</html>
