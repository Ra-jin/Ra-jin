<%
If Request.ServerVariables("HTTPS") = "on" then
	sProtocol = "https://"
Else
	sProtocol = "http://"
End If
%>

<!DOCTYPE html>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/Member/login_check.asp" -->
<!--#include virtual="/payment/easypay70/inc/config.asp"-->
<!-- 공통 인클루드 페이지 종료 -->
<html lang="ko">
<head>
	<meta charset="euc-kr" />
	<title>주문결제 - 교재구매시스템</title>
	<!-- #include virtual = "/include/head.asp" -->
	<script language="javascript" src="https://<%=g_js_url%>/plugin/EasyPayPlugin.js"></script>
	<script>
		/**
		 * 입력값
		 * 		FormObj : Form Name
		 * 		PartialPay : 분할결제여부  (Y:분할결제, N:일괄결제)
		 * 		TaxSupport : 소득공제여부 (Y:소득공제, N:소득공제 X)
		 * 		PLCode : 구매 목록 CODE
		 * 		ItemName : 상품명
		 * 		Price : 상품금액
		 *
		 * */
		function PlugProcess(FormObj, PartialPay, TaxSupport, PLCode, ItemName, Price){
			if ($("#agree").hasClass("on") == false) {
				alert("상품이용 및 환불규정에 동의해야 합니다.");
				return;
			}

			//var iRtCode;
			FormObj.PgResource.value = '11';
			//시티카드면 가맹 아이디 바꾸기
			//if(FormObj.paykind_card[0].checked == true){
			//FormObj.EP_mall_id.value = FormObj.EP_mall_id_Citi.value;
			//FormObj.EP_usedcard_code.value = FormObj.EP_usedcard_code_Citi.value;
			//}else if(FormObj.paykind_card[1].checked == true) {
			//FormObj.EP_mall_id.value = FormObj.EP_mall_id_Etc.value;
			//FormObj.EP_usedcard_code.value = FormObj.EP_usedcard_code_Etc.value;
			//}else{
			//alert("카드가 선택되지 않았습니다.");
			//return;
			//}

			var pay_type = '<%=VARS("payType")%>';

			if (pay_type != "21" && pay_type != "SC0010" && pay_type != "SC0030") {
				alert("결제방법 선택에 문제가 있습니다.");
				history.back();
				return;
			}

			if (pay_type == "21") {
				<% if fncChkMobile() = "N" then %>
					if (TaxSupport == "Y") {
						FormObj.EP_mall_id.value = pgid_taxsupport;
					}
					else {
						FormObj.EP_mall_id.value = pgid;
					}

					FormObj.kind.value = ItemName;
					FormObj.acode.value = PLCode;
					FormObj.EP_product_amt.value = Price;
					FormObj.EP_product_nm.value = ItemName;

					FormObj.V_PARTIAL_PAY.value = PartialPay;
					FormObj.V_TAX_SUPPORT.value = TaxSupport;

					FormObj.EP_mall_id_Etc.value = FormObj.EP_mall_id.value;
					FormObj.EP_usedcard_code.value = FormObj.EP_usedcard_code_Etc.value;
					FormObj.EP_return_url.value = "<%=sProtocol%><%=Request.ServerVariables("HTTP_HOST")%>/payment/easypay80/popup_res.asp";

					window.open("", "kicc_webpay", "width=816, height=546, innerWidth=823, innerHeight=500, location=no, menubar=no, resizable=no, scrollbars=no, status=no, toolbar=no");

					FormObj.target = "kicc_webpay";
					FormObj.action = "/payment/easypay80/popup_req.asp";
					FormObj.submit();
				<% else %>
					if (TaxSupport == "Y") {
						FormObj.sp_mall_id.value = pgid_taxsupport
					}
					else {
						FormObj.sp_mall_id.value = pgid
					}

					FormObj.sp_reserved3.value = PLCode;
					FormObj.sp_pay_mny.value = Price;
					FormObj.sp_product_nm.value = ItemName;

					FormObj.sp_reserved1.value = PartialPay;
					FormObj.sp_reserved2.value = TaxSupport;

					FormObj.sp_mall_id_Etc.value = FormObj.sp_mall_id.value;
					FormObj.sp_usedcard_code.value = FormObj.sp_usedcard_code_Etc.value;

					document.charset="euc-kr"	// UTF-8 사용 가맹점은 주석 제거하고 사용
					FormObj.submit();
				<% end if %>
			} else {
				if (TaxSupport == "Y") {
					LGD_PAYINFO.CST_MID.value = pgid_taxsupport_lg;
					LGD_PAYINFO.LGD_MID.value = pgidlgd_taxsupport_lg;
				}
				else {
					LGD_PAYINFO.CST_MID.value = pgid_lg;
					LGD_PAYINFO.LGD_MID.value = pgidlgd_lg;
				}

				document.querySelector('input[name="LGD_CUSTOM_USABLEPAY"]').value = pay_type;

				LGD_PAYINFO.acode.value = PLCode;
				LGD_PAYINFO.LGD_AMOUNT.value = Price;
				LGD_PAYINFO.LGD_PRODUCTINFO.value = ItemName;

				LGD_PAYINFO.V_PARTIAL_PAY.value = PartialPay;
				LGD_PAYINFO.V_TAX_SUPPORT.value = TaxSupport;
					//LGD_PAYINFO.LGD_HASHDATA.value = pghash_lg;
				$.ajax({
					type:"POST",
					url: "/payment/lgdacom/get_hash_ax.asp",
					data: {
						"LGD_MID":LGD_PAYINFO.LGD_MID.value,
						"LGD_OID":LGD_PAYINFO.LGD_OID.value,
						"LGD_AMOUNT":LGD_PAYINFO.LGD_AMOUNT.value,
						"LGD_TIMESTAMP":LGD_PAYINFO.LGD_TIMESTAMP.value,
						"LGD_MERTKEY":(TaxSupport == "Y" ? pgkey_taxsupport_lg : pgkey_lg),
						"acode": PLCode,
						"V_PARTIAL_PAY": PartialPay,
						"V_TAX_SUPPORT": TaxSupport,
					},
					dataType:"html",
					success: function(html,textStatus) {
						LGD_PAYINFO.LGD_HASHDATA.value = html;
						launchCrossPlatform('/russel/mypage/student/account_order_process_book_lgdacom.asp');
					},
					error: function(xhr, textStatus, errorThrown) {
						alert("처리 중 오류가 발생하였습니다.");
					}
				});

				return;
			}
		}

		function f_submit() {
			var frm_pay = document.form1;

			frm_pay.target = "_self";
			frm_pay.action = "<%=sProtocol%><%=Request.ServerVariables("HTTP_HOST")%>/russel/mypage/student/account_order_process_book.asp";
			frm_pay.submit();
		}

		/* 초기 입력 자동 Setting */
		function f_init(){
			var frm_pay = document.form1;

			var today = new Date();
			var year  = today.getFullYear();
			var month = today.getMonth() + 1;
			var date  = today.getDate();
			var time  = today.getTime();

			if(parseInt(month) < 10) {
				month = "0" + month;
			}

			if(parseInt(date) < 10) {
				date = "0" + date;
			}

			<% if fncChkMobile() = "N" then %>
				frm_pay.EP_vacct_end_date.value = "" + year + month + date;               //가상계좌입금만료일
				frm_pay.EP_order_no.value = "ORDER_" + year + month + date + time;   //가맹점주문번호
			<% else %>
				frm_pay.sp_order_no.value = "ORDER_" + year + month + date + time;   //가맹점주문번호
			<% end if %>
		}
	</script>
</head>
<body onload="javascript:f_init();">
<div class="wrap">
	<header class="sub">
		<a href="./shop.asp" class="btnPrev">주문결제</a>
		<!-- #include virtual = "/include/header.asp" -->
	</header>
	<%
		strSql = ""
		strSql = strSql &" SELECT PD_CODE, PD_ACA_CODE "
		strSql = strSql &" 	, CASE WHEN PD_KBN = 12 THEN B.CM_COURSE_NM ELSE ISNULL(A.CM_COURSE_NM, '-') END CM_COURSE_NM "
		strSql = strSql &" 	, NULL AS TM_REAL_NM, NULL AS CL_COLE_SYM "
		strSql = strSql &" 	, CASE WHEN PD_KBN = 12 THEN B.SB_SET_NM ELSE A.BM_BOOK_NM END BM_BOOK_NM "
		strSql = strSql &" 	, PD_LEC_PRICE, PL_CODE, PL_TAX_SUPPORT  "
		strSql = strSql &" FROM  MegaRussel..MG_Payment_List (nolock)  "
		strSql = strSql &" INNER JOIN MegaRussel..MG_Payment_DTL PD (nolock) ON PD_PL_CD = PL_CODE   "
		strSql = strSql &" LEFT JOIN ( "
		strSql = strSql &" 	SELECT BM.BM_BOOK_CD, CMAS.CM_COURSE_NM, BM.BM_BOOK_NM "
		strSql = strSql &" 	FROM AMS_BOOK_MAS BM (nolock) "
		strSql = strSql &" 	LEFT JOIN AMS_COURSE_SUB CSUB (NOLOCK) ON BM.BM_SUB_CD = CSUB.CS_SUB_CD  "
		strSql = strSql &" 	LEFT JOIN AMS_COURSE_MAS CMAS (NOLOCK) ON CMAS.CM_COURSE_CD = CSUB.CS_COURSE_CD  "
		strSql = strSql &" 	) A ON A.BM_BOOK_CD = PD.PD_COLE_CD  "
		strSql = strSql &" LEFT JOIN ( "
		strSql = strSql &" 	SELECT SB.SB_SET_CD, CMAS.CM_COURSE_NM, SB.SB_SET_NM "
		strSql = strSql &" 	FROM AMS_SET_BOOK SB (nolock) "
		strSql = strSql &" 	INNER JOIN AMS_COURSE_SUB CSUB (NOLOCK) ON SB.SB_CUR_CD = CSUB.CS_SUB_CD  "
		strSql = strSql &" 	INNER JOIN AMS_COURSE_MAS CMAS (NOLOCK) ON CMAS.CM_COURSE_CD = CSUB.CS_COURSE_CD  "
		strSql = strSql &" 	) B ON B.SB_SET_CD = PD.PD_COLE_CD  "
		strSql = strSql &" WHERE PL_MEM_CODE = "& Trim(gLoginMemCode) &" AND PL_DEL_OK = 'N' AND PL_PAY_STAT = 'N'  "
		strSql = strSql &" AND ((PD_KBN = 12 AND B.SB_SET_CD IS NOT NULL) OR (PD_KBN = 13 AND A.BM_BOOK_CD IS NOT NULL)) "

		set Rs1 = amsobjdb.sqlQuery(strSql,2)
		If not (Rs1.eof or Rs1.bof) then
			vrs1 = Rs1.GetRows()
			Rcount1 = ubound(vrs1,2)
		Else
			Rcount1 = -1
		End If
		payCnt = Rs1.recordcount
		Rs1.close
		set Rs1 = nothing
	%>
	<section class="sub">
		<div class="inBox">
			<ul class="paymentStep">
				<li class="on"><span>주문결제</span></li>
				<li><span>결제완료</span></li>
			</ul>
			<!-- <p class="importantInfo"><img src="<%=Application("img_path_russel")%>/myinfo/common/important.png" alt="!" />도서 소득공제를 받으려면 2회 결제하기를 선택하세요.</p> -->
			<div class="tb-type2 bdColor-gy">
				<table summary="이 표는 수강중인 강좌교재를 제공하며 선택, 교재정보, 금액으로 구성되어있습니다.">
					<caption>수강중인 강좌교재</caption>
					<thead>
						<tr>
							<th>주문내역</th>
							<th>수령</th>
							<th>금액</th>
						</tr>
					</thead>
					<tbody>
					<%
						iCntTaxSupport = 0 ' 소득공제용 교제 갯수
						If Rcount1 >= 0 Then
							LecTotalPrice = 0 '총금액
							For k1  = 0 to Rcount1
								if instr(PL_CODE, vrs1(7,k1)) = 0 then
									if len(PL_CODE) = 0 then
										PL_CODE = vrs1(7,k1)
									else
										PL_CODE = PL_CODE & "," & vrs1(7,k1)
									end if
								end if

								LecTotalPrice = LecTotalPrice + CDBL(vrs1(6,k1))
								If k1 > 0 Then
									If Trim(vrs1(1,k1)) <> Trim(vrs1(1,k1-1)) Then
										js_back("학원이 다른 결제내역이 있을 경우 동시결제가 불가능 합니다.")
										Response.End
									End If
								End If
								pgid			= arr_pay_pgid(CStr(vrs1(1,k1)))
								pgid_taxsupport	= arr_pay_pgid_tax_supp(CStr(vrs1(1,k1)))
								pgid_cityreward	= arr_pay_pgid_citi(CStr(vrs1(1,k1)))
								if IsDevSvr() then
									if fncChkMobile() <> "N" then
										pgid			= "T0009696"
										pgid_taxsupport	= "T0009696"
										pgid_cityreward	= "T0009696"
									end if
								end if
								pAcaNM 			= AmsDName(vrs1(1,k1))&"메가스터디"
								pAcaCD = vrs1(1,k1)
								LecName = Replace(vrs1(5,k1),"""","")

								if vrs1(8,k1) = "Y" then
									iCntTaxSupport = iCntTaxSupport + 1
									PL_CODE_TAX_SUPPORT = vrs1(7,k1)
									LecTotalPrice_TAX_SUPPORT = LecTotalPrice_TAX_SUPPORT + CDBL(vrs1(6,k1))
									LecName_TAX_SUPPORT = Replace(vrs1(5,k1),"""","")
								end if
								%>
								<tr>
									<td class="con"><span class="subject"><%=Replace(vrs1(5,k1),"""","")%></span><% if vrs1(8,k1) = "Y" then %> <a href="#" class="tax">소득공제</a> <% end if %></td>
									<td>1</td>
									<td class="price"><strong><%=FormatCurrencySTR(vrs1(6,k1))%></strong>원</td>
								</tr>
							<%next

							If Rcount1 > 0 Then
								LecName = LecName & " 외" & Rcount1 &"건"
							end if

							if iCntTaxSupport > 1 then
								LecName_TAX_SUPPORT = LecName_TAX_SUPPORT & " 외" & (iCntTaxSupport - 1) &"건"
							end if


						end if
					%>
						<tr>
							<td colspan="4" class="totalPayment">
								<span>최종결제 금액</span>
								<ul>
									<li>총 구매수량 <strong><%=payCnt%></strong>건</li>
									<li>구매금액 <strong><%=FormatCurrencySTR(LecTotalPrice)%></strong>원</li>
								</ul>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<% if fncChkMobile() = "N" then %>
				<form name="form1" id="form1" method="post" action="/russel/mypage/student/account_order_process_book.asp" onsubmit="return checkfrm(this)" target="hidefrm">
					<input type="hidden" name="payType" value="<%=VARS("payType")%>">
					<input type="hidden" name="PgResource">
					<input type="hidden" name="V_PARTIAL_PAY"> <!-- 부분결제 여부 //-->
					<input type="hidden" name="V_TAX_SUPPORT"> <!-- 소득공제 여부 //-->
					<!-- ▣▣ easypay 7.0 변수세팅 ▣▣ -->

					<!-- [수정불가] 해외카드인증구분 //-->
					<input type="hidden" name="EP_os_cert_flag"     value="2">

					<!-- [변경불가] 플러그인으로 부터 받는 필드  //-->
					<input type="hidden" id = "EP_res_cd" 			name="EP_res_cd"           value="">			<!-- 응답코드     //-->
					<input type="hidden" id = "EP_res_msg" 			name="EP_res_msg"          value="">			<!-- 응답메시지   //-->
					<input type="hidden" id = "EP_tr_cd" 			name="EP_tr_cd"            value="">			<!-- 플러그인 요청구분  //-->
					<input type="hidden" id = "EP_trace_no" 		name="EP_trace_no"         value="">			<!-- 거래추적번호 //-->
					<input type="hidden" id = "EP_sessionkey" 		name="EP_sessionkey"       value="">			<!-- 암호화키     //-->
					<input type="hidden" id = "EP_encrypt_data" 	name="EP_encrypt_data"     value="">			<!-- 암호화전문   //-->
					<input type="hidden" id = "EP_card_code" 		name="EP_card_code"        value="">			<!-- 인증카드코드   //-->
					<input type="hidden" id = "EP_ret_pay_type" 	name="EP_ret_pay_type"     value="">			<!-- 안심클릭인증값 //-->
					<input type="hidden" id = "EP_ret_complex_yn" 	name="EP_ret_complex_yn"   value="">			<!-- 복합결제여부   //-->
					<!-- [변경불가] 플러그인으로 부터 받는 필드 끝 //-->

					<!----------------------------------------------------------------------------------------------------------------------
						플러그인 옵션 설정
					------------------------------------------------------------------------------------------------------------------------//-->
					<input type="hidden" name="EP_mall_id" value="<%=pgid%>">		<!-- 가맹점아이디 -->
					<input type="hidden" name="EP_mall_pwd" value="1111">				<!-- 가맹점패스워드 (고정) -->
					<input type="hidden" name="EP_mall_nm" value="<%=pAcaNM%>">			<!-- 가맹점명 -->

					<input type="hidden" name="EP_mall_id_Etc" value="<%=pgid%>">							<!-- 일반가맹점아이디 -->
					<input type="hidden" name="EP_mall_id_Citi" value="<%=pgid_cityreward%>">		<!-- 시티가맹점아이디 -->
					<input type="hidden" name="EP_return_url" id="EP_return_url" value="">    <!-- [W] 인증응답 받을 callback URL -->
					<!--
						※ 가맹점 CI URL
					-->
					<input type="hidden" name="EP_ci_url" value="<%=Application("img_path")%>/library/common/family_megastudy.gif">
					<!--
						※ 영문버젼여부
							- ex) ex) 한글="", 영문="ENG"
					-->
					<input type="hidden" name="EP_lang_flag" value="">
					<!--
						※ 가맹점개발언어
							- ex) ASP="ASP", PHP="PHP", JSP="JSP"
					-->
					<input type="hidden" name="EP_agent_ver" value="ASP">
					<!--
						※ 결제수단
							- ex) 신용카드="11", 계좌이체="21", 무통장입금="22", 휴대폰="31", 전화결제="32", 포인트="41", "
								모든결제수단="11:21:22:31:32:41 , 신용카드/휴대폰="11:31"
					-->
					<input type="hidden" name="EP_pay_type" value="<%=VARS("payType")%>">
					<!--
						※ 통화코드
							- ex) 원화="00", 달러="01"
					-->
					<input type="hidden" name="EP_currency" value="00">
					<!--
						※ 복합결제 허용여부
							-  ex) 선택안함="", 허용="Y", 불가="N"
					-->
					<input type="hidden" name="EP_complex_yn" value="N">
					<!--
						※ 신용카드인증방식
							- 인증/비인증의 경우 특약가맹점만 사용 가능합니다.
							- ex) 선택없음="", 인증="0", 비인증="1"
					-->
					<input type="hidden" name="EP_cert_type" value="">
					<!--
						029:027:031:008:026:016:047:018:006:021:002:017:010:011:001:058:126:226:050
						022
						※ 플러그인에 전달될 카드사 리스트 변수
							- 신한=029,현대=027,삼성=031,외환=008,비씨=026,국민=016,롯데=047,NH농협=018,하나SK=006,시티=022,
							우리=021,광주=002,수협=017,전북=010,제주=011,조흥=001,산업=058,저축=126,우체국=226,해외=050
							- ex) 전체노출="", 특정카드만 노출할때="029:008"
					-->
					<input type="hidden" name="EP_usedcard_code" value="">
					<input type="hidden" name="EP_usedcard_code_Etc" value="029:027:031:008:026:016:047:018:006:021:002:017:010:011:001:058:126:226:050:022">
					<input type="hidden" name="EP_usedcard_code_Citi" value="022">
					<!--
						※ 할부개월
							- ex) 3개월/6개월="03:06"
					-->
					<input type="hidden" name="EP_quota" value="00:02:03:04:05:06:07:08:09:10:11:12">
					<!--
						※ 무이자사용여부
							- ex) 가맹점DB조회="", 무이자="Y", 일반="N"
					-->
					<input type="hidden" name="EP_noinst_flag" value="">
					<!--
						※ 무이자설정(카드코드-할부개월)
							- 무이자 사용여부선택에 DB조회선택시 사용없음
							- ex) 신한카드2/3/4/5/6개월,현대카드2/3개월="029-02:03:04:05:06,027-02:03"
					-->
					<input type="hidden" name="EP_noinst_term" value="">
					<!--
						※ 플러그인에 전달될 가상계좌 은행 리스트 변수
							- 기업은행=003,국민은행=004,농협중앙회=011,우리은행=020,SC제일은행=023,신한은행=026,부산은행=032,우체국=071,하나은행=081
							- ex) 기업은행,국민은행="003:004" !현재 플러그인에는 설정값과 상관없이 전부노출
					-->
					<input type="hidden" name="EP_vacct_bank" value="">
					<!--
						※ 가상계좌 입금만료일
							- ex) 20121007
					-->
					<input type="hidden" name="EP_vacct_end_date" value="">
					<!--
						※ 가상계좌 입금만료시간
							- ex) 235959
					-->
					<input type="hidden" name="EP_vacct_end_time" value="">

					<!----------------------------------------------------------
					------------------------------------------------------------
					플러그인 옵션 설정 끝
					------------------------------------------------------------
					------------------------------------------------------------//-->

					<!-- 사용자 및 상품정보 변수 -->
					<input type="hidden" name="EP_order_no" value="">											<!-- 주문번호 -->
					<input type="hidden" name="EP_user_type" value="1">										<!-- 사용자구분 -->
					<input type="hidden" name="EP_user_id" value="<%=gLoginMemId%>">			<!-- 고객ID -->
					<input type="hidden" name="EP_user_nm" value="<%=gLoginMemName%>">	<!-- 고객명 -->
					<input type="hidden" name="EP_user_mail" value="">		<!-- 고객Email -->
					<input type="hidden" name="EP_user_phone1" value="">				<!-- 고객전화번호 -->
					<input type="hidden" name="EP_user_phone2" value="">				<!-- 고객휴대폰 -->
					<input type="hidden" name="EP_user_addr" value="">										<!-- 고객주소 -->
					<input type="hidden" name="EP_product_type" value="0">									<!-- 상품구분 -->
					<!-- 사용자 및 상품정보 변수끝 -->

					<input type="hidden" name="kind" value="<%=LecName%>">
					<input type="hidden" name="acode" value="<%=PL_CODE%>">

					<!-- 플러그인 호출직전 세팅되는 변수 -->
					<input type="hidden" name="EP_product_amt" value="<%=LecTotalPrice%>">	<!-- 상품금액 -->
					<input type="hidden" name="EP_product_nm" value="단과 강의 [<%=LecName%>]">		<!-- 상품명 -->

					<input type="hidden" name="paykind_card" value="1">
					<!-- 플러그인 호출직전 세팅되는 변수끝 -->


				<!-- ▣▣ //easypay 7.0 변수세팅 끝 ▣▣ -->
				</form>

			<% else %>
			<%
				if IsDevSvr() then
					return_url = "https://devmyrussel.megastudy.net/russel/mypage/student/account_order_process_m_book.asp"
				else
					return_url = "https://myrussel.megastudy.net/russel/mypage/student/account_order_process_m_book.asp"
				end if
			%>

				<form id="form1" name="form1" method="post" action="<%=g_sp_url%>/main/MainAction.do">
					<!-- HIDDEN 필드 START -->
					<!-- [선택]가맹점 몰 이름 미 입력시 KICC에 등록된 가맹점 명 사용-->
					<input type='hidden' name="sp_mall_nm"  			value='<%=pAcaNM%>'>
					<!-- [필수]통화코드 (원화:'00', 달러:'01' ) -->
					<input type='hidden' name="sp_currency"  			value='00'>
					<!-- [필수]이지페이 버전  -->
					<input type="hidden" name="sp_agent_ver"         	value="ASP">
					<!-- [필수]사용자 IP   -->
					<input type='hidden' name="sp_client_ip"  			value='<%=client_ip %>'>
					<!-- [필수]결제처리 종류(수정불가) -->
					<input type='hidden' name="sp_tr_cd"			    value='00101000'>
					<!-- [필수]신용카드 결제구분 (수정불가) -->
					<input type='hidden' name="sp_card_txtype"			value='20'>
					<!-- [필수]리턴 URL(sample 소스에 있는 easypay_request.asp 호출)-->
					<input type='hidden' name="sp_return_url"  			value='<%=return_url%>'>
					<!-- [선택]사용가능카드 리스트  -->
					<input type="hidden" name="sp_usedcard_code">
					<!-- [선택]가맹점 CI URL  -->
					<input type="hidden" name="sp_ci_url"         		value="<%=Application("img_path")%>/library/common/family_megastudy.gif">
					<!-- [선택]언어구분(한국어/영어 구분)  -->
					<input type="hidden" name="sp_lang_flag"         	value="KOR">
					<!-- [선택] 모바일 가맹점 예약필드 1  -->
					<input type="hidden" name="sp_mobilereserved1"      value="">
					<!-- [선택] 모바일 가맹점 예약필드 2  -->
					<input type="hidden" name="sp_mobilereserved2"      value="">
					<!-- [선택] 가맹점 예약필드 1  -->
					<input type="hidden" name="sp_reserved1"         	value="">
					<!-- [선택] 가맹점 예약필드 2  -->
					<input type="hidden" name="sp_reserved2"         	value="">
					<!-- [선택] 가맹점 예약필드 3  -->
					<input type="hidden" name="sp_reserved3"         	value="">
					<!-- [선택] 가맹점 예약필드 4  -->
					<input type="hidden" name="sp_reserved4"         	value="">
					<!-- 신용카드 인증방식  0 : 일반. 1 : KEY-IN(인증), 2 : KEY-IN(비인증) -->
					<input type="hidden" name="sp_cert_type"         	value="0">
					<!-- HIDDEN 필드 END   -->

					<input type="hidden" name="sp_mall_id" 				value="<%=pgid%>">			<!-- 가맹점아이디 -->
					<input type="hidden" name="sp_mall_id_Etc" 			value="<%=pgid%>">			<!-- 일반가맹점아이디 -->
					<input type="hidden" name="sp_order_no" 			value="<%=PL_CODE%>">		<!-- 주문번호 -->
					<input type="hidden" name="sp_user_id" 				value="<%=gLoginMemId%>">	<!-- 고객ID -->
					<input type="hidden" name="sp_user_id" 				value="<%=gLoginMemId%>">	<!-- 고객ID -->
					<input type="hidden" name="sp_user_nm" 				value="<%=gLoginMemName%>">	<!-- 고객명 -->
					<input type="hidden" name="sp_user_mail" 			value="">					<!-- 고객Email -->
					<input type="hidden" name="sp_product_nm" 			value="<%=LecName%>">		<!-- 상품명 -->
					<input type="hidden" name="sp_pay_mny"		 		value="<%=LecTotalPrice%>">	<!-- 상품금액 -->
					<input type="hidden" name="sp_pay_type" 			value="<%=VARS("payType")%>"><!-- 신용카드="11", 계좌이체="21", 무통장입금="22", 휴대폰="31", 전화결제="32", 포인트="41" -->
					<input type="hidden" name="sp_noint_yn" 			value="">					<!-- 무이자사용여부 - ex) 가맹점DB조회="", 무이자="Y", 일반="N" -->
					<input type="hidden" name="sp_quota"				value="00:02:03:04:05:06:07:08:09:10:11:12"> <!-- 할부개월 - ex) 3개월/6개월="03:06" -->
					<input type="hidden" name="sp_noinst_term" 			value="">					<!-- 무이자설정(카드코드-할부개월) - 무이자 사용여부선택에 DB조회선택시 사용없음 - ex) 신한카드2/3/4/5/6개월,현대카드2/3개월="029-02:03:04:05:06,027-02:03" -->
					<input type="hidden" name="sp_user_type" 			value="1">					<!-- 사용자구분 -->
					<input type="hidden" name="sp_user_phone1" 			value="">					<!-- 고객전화번호 -->
					<input type="hidden" name="sp_user_phone2" 			value="010">					<!-- 고객휴대폰 -->
					<input type="hidden" name="sp_user_addr" 			value="">					<!-- 고객주소 -->
					<input type="hidden" name="sp_product_type" 		value="0">					<!-- 상품구분 -->
					<input type="hidden" name="sp_version" 				value="0">					<!-- 버전 웹="0", 앱="1" -->

					<!--
						029:027:031:008:026:016:047:018:006:021:002:017:010:011:001:058:126:226:050
						022
						※ 전달될 카드사 리스트 변수
							- 신한=029,현대=027,삼성=031,외환=008,비씨=026,국민=016,롯데=047,NH농협=018,하나SK=006,시티=022,
							우리=021,광주=002,수협=017,전북=010,제주=011,조흥=001,산업=058,저축=126,우체국=226,해외=050
							- ex) 전체노출="", 특정카드만 노출할때="029:008"
					-->
					<input type="hidden" name="sp_usedcard_code_Etc" value="029:027:031:008:026:016:047:018:006:021:002:017:010:011:001:058:126:226:050:022">

					<input type="hidden" name="PgResource">
					<input type="hidden" name="acode" value="<%=PL_CODE%>">
					<input type="hidden" name="paykind_card" value="1">
				</form>
			<% end if %>
			<%
			sPayRes = "/russel/mypage/student/account_order_process_book_lgdacom.asp"
			memId = Trim(gLoginMemId)
			%>
			<!--#include virtual="/payment/lgdacom/lgdacom_inc.asp"-->
			<div class="important">
				<p>※ 상품이용 및 환불규정 안내</p>
				<ul class="list-dot">
					<li>교재구매의 경우 강의교재 강좌 개강일이 지나면 환불이 불가능합니다.</li>
					<li>
						결제한 교재의 훼손 여부에 따라 환불이 불가할 수 있습니다. <br>
						(사용된 교재, 패킹된 교재의 경우 밀봉이 훼손된 경우 등)
					</li>
				</ul>

				<span class="imgCheck" id="agree"><input type="checkbox" id="agreePay" /><label for="agreePay">상품이용 및  환불규정에 동의합니다.</label></span>
			</div>
			<div class="important important2">
				<p>※ 결제진행 시 주의사항 안내</p>
				<ul class="list-dot">
					<li class="orange">도서 소득공제를 받으려면 2회 결제가 필요합니다.</li>
					<li>2회 결제란? 도서소득공제에 해당하는 교재의 금액을 먼저 결제 후 비대상 교재의 금액을 따로 결제, 총 2회 결제를 하는 것입니다.</li>
					<li>소득공제 교재와 비대상 교재를 묶어 1회 결제로 진행하면 도서 소득공제를 받을 수 없습니다.</li>
					<li>교재 1권만 결제할 경우 소득공제는 자동 적용됩니다.</li>
					<li>교재별로 소득공제 가능 여부는 상이하며, 모든 교재가 소득공제 대상은 아닙니다. </li>
				</ul>
			</div>
			<div id="loadingBar" style="display:none;">
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
				<tr>
					<td align="center" height ="10">&nbsp</td>
				</tr>
				<tr>
					<td align="center" height ="10"><img src="<%=Application("img_path")%>/library/image/megastudy/Loading.gif"></td>
				</tr>
				<tr>
					<td align="center" height ="10">&nbsp</td>
				</tr>
				<tr>
					<td align="center">결제 입력 처리 중입니다.</td>
				</tr>
				<tr>
					<td align="center" height ="10">&nbsp</td>
				</tr>
				</table>
			</div>

			<% if payCnt = iCntTaxSupport or iCntTaxSupport = 0 then %>
				<div id="InputBar" class="paymentBtn">
					<a href="./shop.asp">취소하기</a>
					<a href="javascript:;" onclick="javascript:PlugProcess(document.form1, 'N', <%if iCntTaxSupport > 0 then%> 'Y' <%else%> 'N' <%end if%> ,'<%=PL_CODE%>','<%=Replace(LecName,"'", "\'")%>','<%=LecTotalPrice%>');">결제하기</a>
				</div>
			<% else %>
				<div id="InputBar"  class="paymentBtn_triple" style="overflow:hidden">
					<a href="./shop.asp" class="cancel">취소하기</a>
					<%If Rcount1 >= 0 Then %>
						<a href="javascript:;" onclick="javascript:PlugProcess(document.form1, 'N', 'N','<%=PL_CODE%>','<%=Replace(LecName,"'", "\'")%>','<%=LecTotalPrice%>');" class="payment_1">1회 결제하기<br /><span>(도서 소득공제 불가)</span></a>
						<a href="javascript:;" onclick="javascript:PlugProcess(document.form1, 'Y', 'Y','<%=PL_CODE_TAX_SUPPORT%>','<%=Replace(LecName_TAX_SUPPORT,"'", "\'")%>','<%=LecTotalPrice_TAX_SUPPORT%>');" class="payment_2">2회 결제하기<br /><span>(도서 소득공제)</span></a>
					<%Else%>
						<a href="javascript:;" onclick="javascript:alert('결제할 내역이 없습니다.');" class="payment_1">1회 결제하기<br /><span>(도서 소득공제 불가)</span></a>
						<a href="javascript:;" onclick="javascript:alert('결제할 내역이 없습니다.');" class="payment_2">2회 결제하기<br /><span>(도서 소득공제)</span></a>
					<%End If%>
				</div>
			<% end if %>


		</div>
	</section>
</div>
<div class="popupWrap popupBookPayment" style="display:none;">
	<div class="in">
		<p class="title">교재구매</p>
		<p class="bookPaymentInfo">도서 소득공제 금액이 결제 되었습니다.<br />이어서 결제를 진행하세요.</p>
		<div class="btnTwin">
			<a href="#" class="btnCancel">결제 취소</a>
			<a href="javascript:;" onclick="javascript:PlugProcess(document.form1, 'Y', 'N','<%=PL_CODE%>','<%=Replace(LecName,"'", "\'")%>','<%=LecTotalPrice%>');">결제 진행</a>
		</div>
	</div>
	<a href="#" class="btnClose"><img src="<%=Application("img_path_russel")%>/myinfo/btn/close_popup.png" /></a>
</div>

<script type="text/javascript">
	var pgid = "<%=pgid%>";
	var pgid_taxsupport = "<%=pgid_taxsupport%>";

	var pgid_lg = "<%=PG_ID%>";
	var pgidlgd_lg = "<%=PG_ID_LGD%>";
	var pgkey_lg = "<%=PG_KEY%>";

	var pgid_taxsupport_lg = "<%=PG_ID_TAX%>";
	var pgidlgd_taxsupport_lg = "<%=PG_ID_TAX_LGD%>";
	var pgkey_taxsupport_lg = "<%=PG_KEY_TAX%>";

	$(document).ready(function(){

		
		<% if VARS("V_PARTIAL_PAY") = "Y" AND VARS("V_TAX_SUPPORT") = "N" then %>
			$("#agree").addClass("on")
			$(document).popUpLoad('.popupBookPayment');
		<% end if %>
		//$(popClass).hide();
	});
</script>
<iframe name="hidefrm" width="0" height="0"></iframe>
</body>
</html>