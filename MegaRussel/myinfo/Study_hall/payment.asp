<%
If Request.ServerVariables("HTTPS") = "on" then
	sProtocol = "https://"
Else
	sProtocol = "http://"
End If

sCompUrl = "/Study_hall/complete.asp"
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
	<title>바자관 재등록 - 바자관 구매내역</title>
	<!-- #include virtual = "/include/head.asp" -->
	<script language="javascript" src="https://<%=g_js_url%>/plugin/EasyPayPlugin.js"></script>
	<script>
		/* 플러그인 설치(확인) */
    	//StartSmartInstall();

		function PlugProcess(FormObj){
			if ($("#agreePay").is(":checked") == false) {
				alert("상품이용 및 환불규정에 동의해야 합니다.");
				return;
			}

			FormObj.PgResource.value = '11';

			var pay_type = '<%=VARS("payType")%>';

			if (pay_type != "21" && pay_type != "SC0010" && pay_type != "SC0030") {
				alert("결제방법 선택에 문제가 있습니다.");
				history.back();
				return;
			}

			if (LGD_PAYINFO.LGD_AMOUNT.value == "0") {
				LGD_PAYINFO.action = "<%=sProtocol%><%=Request.ServerVariables("HTTP_HOST")%>/russel/mypage/student/account_order_process_zero.asp";
				LGD_PAYINFO.submit();
				return;
			}


			if (pay_type == "21") {
				<% if fncChkMobile() = "N" then %>
					FormObj.EP_mall_id_Etc.value = FormObj.EP_mall_id.value;
					FormObj.EP_usedcard_code.value = FormObj.EP_usedcard_code_Etc.value;
					FormObj.EP_return_url.value = "<%=sProtocol%><%=Request.ServerVariables("HTTP_HOST")%>/payment/easypay80/popup_res.asp";

					window.open("", "kicc_webpay", "width=816, height=546, innerWidth=823, innerHeight=500, location=no, menubar=no, resizable=no, scrollbars=no, status=no, toolbar=no");

					FormObj.target = "kicc_webpay";
					FormObj.action = "/payment/easypay80/popup_req.asp";
					FormObj.submit();
				<% else %>
					FormObj.sp_mall_id_Etc.value = FormObj.sp_mall_id.value;
					FormObj.sp_usedcard_code.value = FormObj.sp_usedcard_code_Etc.value;

					document.charset="euc-kr"	// UTF-8 사용 가맹점은 주석 제거하고 사용
					FormObj.submit();
				<% end if %>
			} else {
				document.querySelector('input[name="LGD_CUSTOM_USABLEPAY"]').value = pay_type;

				launchCrossPlatform();
				return;
			}
		}

		function f_submit() {
			var frm_pay = document.form1;

			frm_pay.target = "_self";
			frm_pay.action = "<%=sProtocol%><%=Request.ServerVariables("HTTP_HOST")%>/russel/mypage/student/account_order_process.asp";
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
<body>
<div class="wrap">
	<header class="sub">
		<a href="./enroll.asp" class="btnPrev">바자관 재등록</a>
		<!-- #include virtual = "/include/header.asp" -->
	</header>
	<section class="sub">
		<div class="inBox">
			<ul class="paymentStep">
				<li class="on"><span>주문결제</span></li>
				<li><span>결제완료</span></li>
			</ul>
			<div class="tb-type2 bdColor-gy">
				<table summary="이 표는 수바자관 재등록 결제를 제공하며 학원, 학반/강좌, 수강료, 할인금액, 최종금액으로 구성되어있습니다.">
					<caption>바자관 재등록 결제</caption>
					<thead>
						<tr>
							<th class="mo-no">학원</th>
							<th>학반/강좌</th>
							<th class="mo-no">수강료</th>
                            <th class="mo-no">할인금액</th>
                            <th>최종금액</th>
						</tr>
					</thead>
					<tbody>
					<%
					strSQL = ""
					strSQL = strSQL & " SELECT		A.PL_CODE, B.PD_ACA_CODE, E.AM_ACA_ABBR "
					strSQL = strSQL & " 			, CASE  "
					strSQL = strSQL & " 				WHEN D.LM_DTL_CD = 14 AND D.LM_CLS_CD = 14 THEN F.CM_COURSE_NM + '/' + D.LM_LEC_NM "
					strSQL = strSQL & " 				ELSE D.LM_LEC_NM "
					strSQL = strSQL & " 			END LEC_NM "
					strSQL = strSQL & " 			, ISNULL (( "
					strSQL = strSQL & " 				SELECT SUM(RI_RECE_AMT) "
					strSQL = strSQL & " 			    FROM AMS_RECE_ITEM with(nolock) "
					strSQL = strSQL & " 			    WHERE RI_ACA_CD = C.CL_ACA_CD AND RI_COLE_CD = C.CL_COLE_CD "
					strSQL = strSQL & " 			) , C.CL_LEC_AMT) AS SALE_AMT "
					strSQL = strSQL & " 			, B.PD_LEC_PRICE "
					strSQL = strSQL & " FROM		MegaRussel..MG_Payment_List A WITH(NOLOCK) "
					strSQL = strSQL & " INNER JOIN	MegaRussel..MG_Payment_DTL B WITH(NOLOCK) ON A.PL_CODE = B.PD_PL_CD "
					strSQL = strSQL & " INNER JOIN	AMS_COU_LEC	C WITH(NOLOCK) ON B.PD_COLE_CD = C.CL_COLE_CD "
					strSQL = strSQL & " INNER JOIN	AMS_LEC_MAS D WITH(NOLOCK) ON C.CL_LEC_CD = D.LM_LEC_CD AND C.CL_ACA_CD = D.LM_ACA_CD "
					strSQL = strSQL & " INNER JOIN	AMS_ACA_MAS E WITH(NOLOCK) ON C.CL_ACA_CD = E.AM_ACA_CD "
					strSQL = strSQL & " INNER JOIN	AMS_COURSE_MAS F WITH(NOLOCK) ON C.CL_COU_CD = F.CM_COURSE_CD "
					strSQL = strSQL & " WHERE PL_MEM_CODE = " & Trim(gLoginMemCode) & " AND PL_DEL_OK = 'N' AND PL_PAY_STAT = 'N'  "
					set RS = amsobjdb.sqlQuery(strSql,2)
						If not (RS.eof or RS.bof) then
							LecTotalPrice = 0 ' 최종결제 금액
							if RS.RecordCount > 1 then
								LecName = Replace(RS("LEC_NM"), """", "") & " 외" & (RS.RecordCount-1) &"건"
							else
								LecName = Replace(RS("LEC_NM"), """", "")
							end if
							PL_CODE		= RS("PL_CODE")
							pgid		= arr_pay_pgid(CStr(RS("PD_ACA_CODE")))
							pgid_cityreward	= arr_pay_pgid_citi(CStr(RS("PD_ACA_CODE")))
							pAcaNM = AmsDName(RS("PD_ACA_CODE"))&"메가스터디"
							pAcaCD = RS("PD_ACA_CODE")

							Do While NOT RS.EOF
								LecTotalPrice = LecTotalPrice + CLNG(RS("PD_LEC_PRICE"))
								if pAcaCD <> RS("PD_ACA_CODE") then
									js_back("학원이 다른 결제내역이 있을 경우 동시결제가 불가능 합니다.")
									Response.End
								end if
								%>
								<tr>
									<td class="mo-no"><%=RS("AM_ACA_ABBR")%></td>
									<td><%=RS("LEC_NM")%></td>
									<td class="mo-no"><strong><%=FormatNumber(RS("SALE_AMT"), 0)%>원</strong></td>
									<td class="mo-no fc-p"><strong><%=FormatNumber(RS("PD_LEC_PRICE") - RS("SALE_AMT"), 0)%>원</strong></td>
									<td><strong><%=FormatNumber(RS("PD_LEC_PRICE"), 0)%></strong>원</td>
								</tr>
								<% RS.MoveNext()
							Loop
						End If
						RS.close
						set RS = nothing %>
                        <tr>
                            <td colspan="6" class="totalPayment type2">
                                <span class="tit">최종결제 금액</span>
                                <ul>
                                    <li><strong><%=FormatNumber(LecTotalPrice, 0)%></strong>원</li>
                                </ul>
                            </td>
                        </tr>
					</tbody>
				</table>
			</div>
			<% if fncChkMobile() = "N" then %>
				<form name="form1" id="form1" method="post" action="/russel/mypage/student/account_order_process.asp" onsubmit="return checkfrm(this)" target="hidefrm">
					<input type="hidden" name="payType" value="<%=VARS("payType")%>">
					<input type="hidden" name="PgResource">
					<input type="hidden" name="V_PARTIAL_PAY"> <!-- 부분결제 여부 //-->
					<input type="hidden" name="V_TAX_SUPPORT"> <!-- 소득공제 여부 //-->
					<input type="hidden" name="V_COMP_URL" value="<%=sCompUrl%>"> <!-- 결제완료 후 뷰 페이지 //-->
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
					If IsDevSvr() Then
						sHttp = "http://"
						return_url = "https://devmrussel.megastudy.net/mypage/student/account_order_process.asp"
					Else
						sHttp = "https://"
						return_url = "https://mrussel.megastudy.net/mypage/student/account_order_process.asp"
					End If
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
					<input type="hidden" name="sp_mobilereserved1"      value="<%=sCompUrl%>">
					<!-- [선택] 모바일 가맹점 예약필드 2  -->
					<input type="hidden" name="sp_mobilereserved2"      value="">
					<!-- [선택] 가맹점 예약필드 1  -->
					<input type="hidden" name="sp_reserved1"         	value="">
					<!-- [선택] 가맹점 예약필드 2  -->
					<input type="hidden" name="sp_reserved2"         	value="">
					<!-- [선택] 가맹점 예약필드 3  -->
					<input type="hidden" name="sp_reserved3"         	value="<%=PL_CODE%>">
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
			memId = Trim(gLoginMemId)
			%>
			<!--#include virtual="/payment/lgdacom/lgdacom_inc.asp"-->
			<div class="important pl0">
				<p>※ 상품이용 및 환불규정 안내</p>
				<ul>
					<li>· 실시간 계좌이체 시, 결제취소는 현장에서만 가능하오니 참고하시기 바랍니다.</li>
					<li>· 바른공부 자습전용관 환불은 수강시작일 1일 전까지만 가능합니다.</li>
					<li>· 개강 이후 환불은 학원으로 문의 주시기 바랍니다.</li>
				</ul>

				<span class="imgCheck" id="agree"><input type="checkbox" id="agreePay" /><label for="agreePay">상품이용 및  환불규정에 동의합니다.</label></span>
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

            <div id="InputBar" class="paymentBtn">
                <a href="./enroll.asp" class="cancle">취소</a>
                <a href="javascript:;" class="payment" onclick="javascript:PlugProcess(document.form1);">결제하기</a>
            </div>
		</div>
	</section>
</div>
<script>
	f_init();
</script>
<iframe name="hidefrm" width="0" height="0"></iframe>
</body>
</html>