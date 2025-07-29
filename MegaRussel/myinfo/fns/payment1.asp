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
	<title>식권결제 - 식권결제시스템</title>
	<!-- #include virtual = "/include/head.asp" -->
	<script language="javascript" src="https://<%=g_js_url%>/plugin/EasyPayPlugin.js"></script>
	<script>
		//StartSmartInstall();
		
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
			if ($("#check_1").is(":checked") == false) {
				alert("상품이용 및 환불규정에 동의해야 합니다.");
				return;
			}

			if ($("#check_2").is(":checked") == false) {
				alert("개인정보처리 및 이용에 동의해야 합니다.");
				return;
			}

			if ($("#check_3").is(":checked") == false) {
				alert("개인정보의 제3자 위탁 제공에 동의해야 합니다.");
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

			if (FormObj.EP_pay_type.value != "11" && FormObj.EP_pay_type.value != "21") {
				alert("결제방법 선택에 문제가 있습니다.");
				history.back();
				return;
			}

			if (FormObj.EP_pay_type.value == '11') {
				if (TaxSupport == "Y") {
					LGD_PAYINFO.CST_MID.value = pgid_taxsupport_lg;
					LGD_PAYINFO.LGD_MID.value = pgidlgd_taxsupport_lg;
				}
				else {
					LGD_PAYINFO.CST_MID.value = pgid_lg;
					LGD_PAYINFO.LGD_MID.value = pgidlgd_lg;
				}

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
						"LGD_MERTKEY":(TaxSupport == "Y" ? pgkey_taxsupport_lg : pgkey_lg)
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
			} else if (FormObj.EP_pay_type.value != "21") {

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

				// EasyPay 플러그인 시작!!
				var bRetVal = false;
				/* Easypay Plugin 실행 */
				if ( StartPayment( FormObj ) == true ) {
					if ( FormObj.EP_res_cd.value == "0000" ) {
						bRetVal = true;
					} else {

						/* 실패 메시지 */
						alert( "응답코드:"   + FormObj.EP_res_cd.value + "]\n" +
							"응답메시지:" + FormObj.EP_res_msg.value + "]\n" );
					}
				}

				if ( bRetVal ){
					$('.popupWrap .btnClose').trigger('click');
					document.all.loadingBar.style.display="";
					document.all.InputBar.style.display="none";
					FormObj.submit();
				}
			}
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
			frm_pay.EP_vacct_end_date.value = "" + year + month + date;               //가상계좌입금만료일
			frm_pay.EP_order_no.value = "ORDER_" + year + month + date + time;   //가맹점주문번호
		}
	</script>
</head>
<body>
<div class="wrap">
	<header class="sub">
        <a href="./cart.asp" class="btnPrev">식권결제</a>
		<ul class="info">
			<li class="sel">
				<select name="" id="">
					<option value="">평촌 F&S</option>
					<option value="">부천 F&S</option>
					<option value="">대치 F&S</option>
					<option value="">강남 F&S</option>
				</select>
			</li>
            <li class="student"><%=gLoginMemName%>(<%=nRmsMemCd%>)</li>
		</ul>
        <a href="javascript:void(0);" onclick="javascript:location.href='<%=header_addr2%>/russel/member/logout.asp?rtnUrl=<%=header_addr2%>';" class="btnClose btnLogout">로그아웃</a>
	</header>
	<%
		strSql = ""
		strSql = strSql &" SELECT PD_CODE, PD_ACA_CODE "
		strSql = strSql &" 	, NULL AS CM_COURSE_NM "
		strSql = strSql &" 	, NULL AS TM_REAL_NM, NULL AS CL_COLE_SYM "
		strSql = strSql &" 	, BM_BOOK_NM "
		strSql = strSql &" 	, PD_LEC_PRICE, PL_CODE, PL_TAX_SUPPORT, PD_LEC_CNT  "
		strSql = strSql &" FROM  MegaRussel..MG_Payment_List (nolock)  "
		strSql = strSql &" INNER JOIN MegaRussel..MG_Payment_DTL PD (nolock) ON PD_PL_CD = PL_CODE   "
		strSql = strSql &" INNER JOIN AMS_BOOK_MAS (nolock) on BM_BOOK_CD = PD.PD_COLE_CD "
		strSql = strSql &" WHERE PL_MEM_CODE = "& Trim(gLoginMemCode) &" AND PL_DEL_OK = 'N' AND PL_PAY_STAT = 'N'  "

		set Rs1 = amsobjdb.sqlQuery(strSql,2)
		If not (Rs1.eof or Rs1.bof) then
			vrs1 = Rs1.GetRows()
			Rcount1 = ubound(vrs1,2)
		Else
			Rcount1 = -1
		End If
		Rs1.close
		set Rs1 = nothing
	%>
	<section class="sub">
		<div class="inBox">
			<ul class="paymentStep">
				<li class="on"><span>주문결제</span></li>
				<li><span>결제완료</span></li>
			</ul>
			<div class="tableType tableType3">
				<table summary="이 표는 수강중인 강좌교재를 제공하며 선택, 교재정보, 금액으로 구성되어있습니다.">
					<caption>수강중인 강좌교재</caption>
					<thead>
						<tr>
							<th>주문내역</th>
							<th>수량</th>
							<th>금액</th>
							<!--<th></th>-->
						</tr>
					</thead>
					<tbody>
					<%
						payCnt = 0 ' 총 구매 수량
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
								
								payCnt = payCnt + cint(CheckNumber_reset(vrs1(9,k1), "1"))
								LecTotalPrice = LecTotalPrice + (CDBL(vrs1(6,k1)) * cint(CheckNumber_reset(vrs1(9,k1), "1")))
								If k1 > 0 Then
									If Trim(vrs1(1,k1)) <> Trim(vrs1(1,k1-1)) Then
										js_back("학원이 다른 결제내역이 있을 경우 동시결제가 불가능 합니다.")
										Response.End
									End If
								End If
								pgid			= arr_pay_pgid(CStr(vrs1(1,k1)))
								pgid_taxsupport	= arr_pay_pgid_tax_supp(CStr(vrs1(1,k1)))
								pgid_cityreward	= arr_pay_pgid_citi(CStr(vrs1(1,k1)))
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
									<td class="con"><span class="subject"><%=Replace(vrs1(5,k1),"""","")%></span></td>
									<td><%=CheckNumber_reset(vrs1(9,k1), "1")%></td>
									<td class="price"><strong><%=FormatCurrencySTR(CDBL(vrs1(6,k1)) * cint(CheckNumber_reset(vrs1(9,k1), "1")))%></strong>원</td>
									<!--<td><a href="#"><img src="<%=Application("img_path_russel")%>/mypage/textbook/tablet/btn/delete.gif" /></a></td>-->
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
			<form name="form1" id="form1" method="post" action="/russel/mypage/student/account_order_process_book.asp" onsubmit="return checkfrm(this)" target="hidefrm">
				<input type="hidden" name="payType" value="<%=VARS("payType")%>">
				<input type="hidden" name="PgResource">
				<input type="hidden" name="V_PARTIAL_PAY"> <!-- 부분결제 여부 //-->
				<input type="hidden" name="V_TAX_SUPPORT"> <!-- 소득공제 여부 //-->
				<!-- ▣▣ easypay 7.0 변수세팅 ▣▣ -->

				<!-- [수정불가] 해외카드인증구분 //-->
				<input type="hidden" name="EP_os_cert_flag"     value="2">

				<!-- [변경불가] 플러그인으로 부터 받는 필드  //-->
				<input type="hidden" name="EP_res_cd"           value="">			<!-- 응답코드     //-->
				<input type="hidden" name="EP_res_msg"          value="">			<!-- 응답메시지   //-->
				<input type="hidden" name="EP_tr_cd"            value="">			<!-- 플러그인 요청구분  //-->
				<input type="hidden" name="EP_trace_no"         value="">			<!-- 거래추적번호 //-->
				<input type="hidden" name="EP_sessionkey"       value="">			<!-- 암호화키     //-->
				<input type="hidden" name="EP_encrypt_data"     value="">			<!-- 암호화전문   //-->
				<input type="hidden" name="EP_card_code"        value="">			<!-- 인증카드코드   //-->
				<input type="hidden" name="EP_ret_pay_type"     value="">			<!-- 안심클릭인증값 //-->
				<input type="hidden" name="EP_ret_complex_yn"   value="">			<!-- 복합결제여부   //-->
				<!-- [변경불가] 플러그인으로 부터 받는 필드 끝 //-->

				<!----------------------------------------------------------------------------------------------------------------------
					플러그인 옵션 설정
				------------------------------------------------------------------------------------------------------------------------//-->
				<input type="hidden" name="EP_mall_id" value="<%=pgid%>">		<!-- 가맹점아이디 -->
				<input type="hidden" name="EP_mall_pwd" value="1111">				<!-- 가맹점패스워드 (고정) -->
				<input type="hidden" name="EP_mall_nm" value="<%=pAcaNM%>">			<!-- 가맹점명 -->

				<input type="hidden" name="EP_mall_id_Etc" value="<%=pgid%>">							<!-- 일반가맹점아이디 -->
				<input type="hidden" name="EP_mall_id_Citi" value="<%=pgid_cityreward%>">		<!-- 시티가맹점아이디 -->
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
			<!--#include virtual="/payment/lgdacom/lgdacom_inc1.asp"-->
			<div class="tos">
				<p class="tit"><span class="imgCheck"><input type="checkbox" title="선택" id="check_1"></span><label for="check_1">상품이용 및 환불규정 안내<i> (필수)</i></label></p>
				<div class="tos-info">					
					· 환불계좌정보를 오기입력한 경우 환불이 취소될 수 있습니다.<br>
					· 계좌환불 소요일은 약 7일이며, 회사 사정상 다소 지연될 수 있습니다.
				</div>
				<p class="tos-info-bottom">상품이용 및 환불규정에 대한 동의를 거부할 권리가 있으며, 동의 거부 시에는 결제 서비스 이용이 제한됩니다.</p>

				<p class="tit"><span class="imgCheck"><input type="checkbox" title="선택" id="check_2"></span><label for="check_2">개인정보처리 및 이용동의<i> (필수)</i></label></p>
				<div class="tos-info">
					메가스터디교육㈜는 “정보통신망 이용촉진 및 정보보호 등에 관한 법률”에 따라 개인정보 수집/이용 시 이용자의 동의를 구하고 있습니다. 내용을 확인하시고, 정보제공 및 이용에 동의해 주시기 바랍니다. <br>
					-----------------------------------------------------------------------------------------------------------------------------------------------------------------------<br>
					본인은 아래 내용에 대하여 충분히 읽어 보았으며, 이를 이해하여 동의합니다.<br>
					<strong>1. 수집/이용목적</strong><br>
					메가스터디교육㈜가 운영하는 러셀학원 홈페이지(http://myrussel.megastudy.net)에서, 이용자의 “결제 내역, 지난 결제내역, 차감내역, 환불내역 등” 결제 및 조회 서비스를 제공하기 위함.<br>
					<strong>2. 입력 / 수집된 항목</strong><br>
					러셀학원 (http://myrussel.megastudy.net) 사이트에 가입한 수강생의 정보 - 수강생 이름, 생년월일, 성별, 휴대폰번호 ※ 상기 항목의 입력값을 토대로 기 회원정보의 1회성 조회의 목적으로만 사용하며, 별도로 저장하지 않습니다.<br>
					<strong>3. 이용 및 보유기간</strong><br>
					결제할 내역, 지난 결제내역, 취소내역 조회 후 입력된 정보는 소멸함. (입력된 정보는 별도 저장하지 않습니다.) 

				</div>
				<p class="tos-info-bottom">개인정보 수집 및 이용에 대한 동의를 거부할 권리가 있으며, 동의 거부 시에는 결제 서비스 이용이 제한됩니다.</p>

				<p class="tit"><span class="imgCheck"><input type="checkbox" title="선택" id="check_3"></span><label for="check_3">개인정보의  제3자 위탁 제공 동의 <i> (필수)</i></label></p>
				<div class="tos-info">
					· 회사는 서비스 이행을 위해 아래와 같이 개인정보를 위탁하여 운영하고 있습니다.<br>
					(단, 해당하는 경우에만 위탁 대상자에게 개인정보를 제공합니다.)<br>
					· 기본 위탁 대상자 <br>
					· 위탁업무 내용<br>
					<table>
						<colgroup>
							<col width="160px">
							<col width="520px">
						</colgroup>
						<thead>
							<tr>
								<th>위탁 대상자</th>
								<th>위탁업무 내용</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>메가 F&S</td>
								<td>결제 내역, 예약정보확인을 원한 회원정보 위탁</td>
							</tr>
						</tbody>					
					</table>
				</div>
				<p class="tos-info-bottom last">개인정보의 제3자 위탁 제공 동의를 거부할 권리가 있으며, 동의 거부 시에는 결제 서비스 이용이 제한됩니다.</p>
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
			<div class="payment-btn-wrap">
				<a href="./cart.asp" class="cancel">취소</a>
				<a href="javascript:;" onclick="javascript:PlugProcess(document.form1, 'N', 'N', '<%=PL_CODE%>','<%=LecName%>','<%=LecTotalPrice%>');" class="payment">결제하기</a>
			</div>
			
		</div>
	</section>
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

	f_init();

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
