<!DOCTYPE html>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/Member/login_check.asp" -->
<!-- 공통 인클루드 페이지 종료 -->

<%
	sIsTec 			 = GetLoginCookie("isTec")

	Dim sYear, sMonth
	sYear = year(now)
	sMonth = month(now)
%>


<html lang="ko">
<head>
	<meta charset="euc-kr" />
	<title>식권결제 - 식권결제시스템</title>
	<!-- #include virtual = "/include/head.asp" -->
	<script>
		var iYear, iMonth;
		iYear = <%=sYear%>;
		iMonth = <%=sMonth%>;

		$( document ).ready(function() {
			$.ajaxSetup({ cache: false });
			getDate(iYear, iMonth);
			$('input[name=V_YEAR]').val(iYear);
			$('input[name=V_MONTH]').val(iMonth);
		});

		function preMonth() {
			initSelDate();

			if (iMonth == 1) {
				iMonth = 12;
				iYear = iYear -1;
			} else {
				iMonth = iMonth - 1;
			}
			
			getDate(iYear, iMonth);
			$('input[name=V_YEAR]').val(iYear);
			$('input[name=V_MONTH]').val(iMonth);
		}

		function nextMonth() {
			initSelDate();

			if (iMonth == 12) {
				iMonth = 1;
				iYear = iYear +1;
			} else {
				iMonth = iMonth + 1;
			}
			
			getDate(iYear, iMonth);
			$('input[name=V_YEAR]').val(iYear);
			$('input[name=V_MONTH]').val(iMonth);
		}

		function getDate(year, month) {
			$('#calendar').load(
				'./calendar_ax.asp'
				,{
					'V_ACA_CD' : document.all.sel_aca_cd.value
					,'V_YEAR' : year
					,'V_MONTH' : month
					,'V_MEM_CD' : '<%=nRmsMemCd%>'
					,'V_IS_TEC' : '<%=sIsTec%>'
				}
				, function (html) {    
					$("#cnt_reservation").html($("#V_CNT_RESERVATION").val());
					$("#calender_title").html(month + "월");
					$("#span_cnt_available_lun").html($("#V_CNT_AVAILABLE_LUN").val());
					$("#span_cnt_available_din").html($("#V_CNT_AVAILABLE_DIN").val());

					$('.fns table td > div:nth-child(1)').on('click', function(){
						if($('.reserve-wrap').is(':visible') == true ){  
							$(this).parent('TD').addClass('on');

							var doLun, doDin;
							doLun = $('.food .no-1').hasClass('on') == true ? 'Y':'N';
							doDin = $('.food .no-2').hasClass('on') == true ? 'Y':'N';

							if (doLun != 'Y' && doDin != 'Y') {
								alert("중식, 석식을 선택하세요.");
								$(this).parent('TD').removeClass('on');
								return;
							}
							
							var day = '00' + $(this).children('p').html();
							day = day.substring(day.length, day.length-2)
							
							var newNode = $('<li>' 
										+ (String(month).length == 1 ? '0'+month : month) + '-' + day 
										+ (doLun == 'Y' || doDin == 'Y' ? '(' : '')
										+ (doLun == 'Y' ? '중' : '')
										+ (doLun == 'Y' && doDin == 'Y' ? ',' : '')
										+ (doDin == 'Y' ? '석' : '')
										+ (doLun == 'Y' || doDin == 'Y' ? ')' : '')
										+ ' <button><img src="<%=Application("img_path_russel")%>/mypage/fns/btn_cal_del.gif" alt="삭제" /></button>'
										+ '</li>');
							$(newNode).append('<input type="hidden" name="V_RESERVATION_DAY" value="' + year + '-' + (String(month).length == 1 ? '0'+month : month) + '-' + day + '" />');
							$(newNode).append('<input type="hidden" name="V_MEAL_LUN" value="' + doLun + '" />');
							$(newNode).append('<input type="hidden" name="V_MEAL_DIN" value="' + doDin + '" />');

							if ($('input[name=V_MOD]').val() == "R") {
								// 예약하기
								if ($(this).parent('TD').hasClass('day-prev')) { alert("예약 가능한 날짜가 아닙니다."); $(this).parent('TD').removeClass('on'); return; }
								if ($(this).children('span').length == 0) { alert("예약 가능한 날짜가 아닙니다."); $(this).parent('TD').removeClass('on'); return; }
								if ($(this).children('span').length == 1 && $(this).children('span').hasClass('holiday')) { alert("예약 가능한 날짜가 아닙니다."); $(this).parent('TD').removeClass('on'); return; }

								if ($(document.all.V_RESERVATION_DAY).length > 1) {
									for(var i=0; i<$(document.all.V_RESERVATION_DAY).length; i++) {
										if ($(document.all.V_RESERVATION_DAY[i]).val() == $(newNode).children('input[name=V_RESERVATION_DAY]').val()) {
											alert("중복되는 예약일자가 존재합니다.");
											return;
										}
									}
								}
								else {
									if ($(document.all.V_RESERVATION_DAY).val() == $(newNode).children('input[name=V_RESERVATION_DAY]').val()) {
										alert("중복되는 예약일자가 존재합니다.");
										return;
									}
								}
							} else if ($('input[name=V_MOD]').val() == "C") {
								// 취소하기
								if ($(this).parent('TD').hasClass('day-prev')) { alert("취소 가능한 날짜가 아닙니다."); return; }
								if ($(this).children('span').length == 0) { alert("취소 가능한 날짜가 아닙니다."); return; }
								if ($(this).children('span').length == 1 && $(this).children('span').hasClass('holiday')) { alert("취소 가능한 날짜가 아닙니다."); $(this).parent('TD').removeClass('on'); return; }

								if ($(document.all.V_RESERVATION_DAY).length > 1) {
									for(var i=0; i<$(document.all.V_RESERVATION_DAY).length; i++) {
										if ($(document.all.V_RESERVATION_DAY[i]).val() == $(newNode).children('input[name=V_RESERVATION_DAY]').val()) {
											alert("중복되는 취소일자가 존재합니다.");
											return;
										}
									}
								}
								else {
									if ($(document.all.V_RESERVATION_DAY).val() == $(newNode).children('input[name=V_RESERVATION_DAY]').val()) {
										alert("중복되는 취소일자가 존재합니다.");
										return;
									}
								}
							}

							if (doLun == "Y") { $(this).children('span').eq(0).addClass('on'); }
							if (doDin == "Y") { $(this).children('span').eq(1).addClass('on'); }

							$('.reserve-wrap .right ul').append(newNode);

							// 선택 된 식사 카운트
							$('#selected_cnt').html($('input[name=V_MEAL_LUN][value=Y]').length + $('input[name=V_MEAL_DIN][value=Y]').length)

							//예약, 취소 - 날짜 삭제
							$('.reserve-wrap .right li button').on('click', function(){
								$("#"+$(this).siblings().val()).removeClass('on');
								$("#"+$(this).siblings().val()).find('span').removeClass('on')
								$(this).parent('li').remove();

								// 선택 된 식사 카운트
								$('#selected_cnt').html($('input[name=V_MEAL_LUN][value=Y]').length + $('input[name=V_MEAL_DIN][value=Y]').length)
							});
						} else {
							if ($(this).next('.tool').length > 0) {
								//툴팁
								$('.tool').hide();
								$(this).next('.tool').show().parents('table').addClass('on');
							} else {
								if ($(this).parent('TD').hasClass('day-prev') == false) {
									$('.calendar-tool').show();
									$('.fns table').addClass('on');
								}
							}
						}
					});
					 
					$('.tool .close, .calendar-tool .close').on('click', function(){									
						$(this).parent('div').hide();
						$('.fns table').removeClass('on');
					});


					getTicket(year, month);
					return true;
				}
			);
		}

		function getTicket(year, month) {
			$('#span_ticket').load(
				'./get_ticket_ax.asp'
				,{
					'V_ACA_CD' : document.all.sel_aca_cd.value
					,'V_YEAR' : year
					,'V_MONTH' : month
					,'V_MEM_CD' : '<%=nRmsMemCd%>'
				}
				, function (html) {
					$('select[name=V_TICKET_SET_CD]').on('change', function() {
						var arrTICKET_SET_CD = $('select[name=V_TICKET_SET_CD]').val().split('||');

						if (arrTICKET_SET_CD.length != 2) {
							$('input[name=V_SET_CD]').val(0);
							$('input[name=V_TICKET_CNT]').val(0);
							$('#ticket_cnt').html(0);
						}
						else {
							$('input[name=V_SET_CD]').val(arrTICKET_SET_CD[0]);
							$('input[name=V_TICKET_CNT]').val(arrTICKET_SET_CD[1]);
							$('#ticket_cnt').html(arrTICKET_SET_CD[1]);
						}

						initSelDate();
					});

					$('select[name=V_TICKET_SET_CD]').change();

					getLocation();
					return true;
				}
			);
		}

		function getLocation() {
			$('#span_location').load(
				'./get_location_ax.asp'
				,{
					'V_ACA_CD' : document.all.sel_aca_cd.value
				}
				, function (html) {
				}
			);
		}

		function doReservation() {
			var sModeText = "";

			if ($('input[name=V_MOD]').val() == "R") { sModeText = "예약"; }
			else if ($('input[name=V_MOD]').val() == "C") { sModeText = "취소"; }

			if ($('input[name=V_MOD]').val() == "R" && $('select[name=V_LOC_CD]').val() == "") {
				alert("층수를 선택 하세요.");
				return;
			}

			if ($('input[name=V_MEAL_LUN]').val() == "" && $('input[name=V_MEAL_DIN]').val() == "") {
				alert("중식, 석식 중 " + sModeText + " 시간을 선택해주세요.");
				return;
			}

			if ($('input[name=V_RESERVATION_DAY]').length == 0) {
				alert(sModeText + "일을 선택해주세요.");
				return;
			}

			if ($('input[name=V_MOD]').val() == "R") {
				var cntEatOneDay = ($('input[name=V_MEAL_LUN]').val() == "Y" ? 1 : 0) + ($('input[name=V_MEAL_DIN]').val() == "Y" ? 1 : 0) // 하루에 소진 식권 수
				if ($('input[name=V_TICKET_CNT]').val() < ($('input[name=V_RESERVATION_DAY]').length * cntEatOneDay)) {
					alert(sModeText + "일보다 식권수량이 적습니다.");
					return;
				}
			}

			form.submit();
		}
		//tool body 클릭시 닫기
		$(document).mouseup(function (e){
			var tool = $('.tool');
			if( tool.has(e.target).length === 0 && $('.calendar-tool').has(e.target).length === 0){
			  tool.hide().parents('table').removeClass('on');
			  $('.calendar-tool').hide();
			  $('.fns table').removeClass('on');
			}
		});

		$(function(){
			$('select[name=V_TICKET_INFO]').change();

			$('input[name=V_REFUND_CNT]').on("propertychange change keyup paste input", function() {
				setV_REFUND_AMT();
			});

			$('input[name=V_REFUND_CNT]').on("focus", function() {
				$('input[name=V_REFUND_CNT]').select();
			});
		});

		function initSelDate() {
			$('.reserve-wrap .right ul').empty();
			$('.fns table td').removeClass('on');
			$('.fns table td span').removeClass('on');
		}


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

		var bDoRefund = false;
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

			if (bDoRefund == false) {
				bDoRefund = true;
				form1.submit();
			} else {
				alert("환불 진행 중 입니다.");
			}
		}
	</script>
</head>
<%
strSQL = ""
strSQL = strSQL & " SELECT		TOP 1 GH_ACA_CD "
strSQL = strSQL & " FROM		AMS_GRP_HIS A WITH(NOLOCK) "
strSQL = strSQL & " INNER JOIN	AMS_COU_LEC B WITH(NOLOCK) ON A.GH_COLE_CD = B.CL_COLE_CD "
strSQL = strSQL & " INNER JOIN	AMS_LEC_MAS C WITH(NOLOCK) ON B.CL_LEC_CD = C.LM_LEC_CD "
strSQL = strSQL & " LEFT JOIN	( "
strSQL = strSQL & " 				SELECT		LB_COLE_CD "
strSQL = strSQL & " 				FROM		AMS_LEC_BOOK WITH(NOLOCK) "
strSQL = strSQL & " 				INNER JOIN	AMS_BOOK_MAS WITH(NOLOCK) ON LB_BOOK_CD = BM_BOOK_CD "
strSQL = strSQL & " 				WHERE		BM_PRO_TYPE = 'F' "
strSQL = strSQL & " 				GROUP BY	LB_COLE_CD "
strSQL = strSQL & " 			) D ON B.CL_COLE_CD = D.LB_COLE_CD "
strSQL = strSQL & " WHERE		1=1 "
strSQL = strSQL & " AND			A.GH_BE_CD = 11 AND A.GH_REFUND_CD IS NULL "
strSQL = strSQL & " AND			C.LM_CLS_CD = 14 "
strSQL = strSQL & " AND			(D.LB_COLE_CD IS NOT NULL) "
strSQL = strSQL & " AND			A.GH_MEM_CD = '" & nRmsMemCd & "' "
strSQL = strSQL & " ORDER BY	A.GH_REG_DT DESC "
pAcaCd = amsobjdb.sqlResult(strSql)
%>
<body>
<form name="form" method="post" action="./reservation_sql.asp">
<div class="wrap">
	<header class="sub">
        <a href="/index.asp" class="btnPrev">식권결제</a>
		<ul class="info">
			<li class="sel">
				<select name="sel_aca_cd" onchange="javascript:getDate(iYear, iMonth);"><%
					strSQL = "EXEC MSP_ACA_NAME_ORD 6"
					set RS = amsobjdb.sqlQuery(strSql,3)
					DO WHILE NOT RS.EOF%>
						<option value="<%=RS(0)%>" <%IF Cstr(RS(0)) = Cstr(pAcaCd) THEN response.write "selected" END IF%>><%=RS(1)%></option><%
						RS.MoveNext
					LOOP
					RS.close
					Set RS = Nothing%>
				</select>
			</li>
            <li class="student"><%=gLoginMemName%>(<%=nRmsMemCd%>)</li>
		</ul>
        <a href="javascript:void(0);" onclick="javascript:location.href='<%=header_addr2%>/russel/member/logout.asp?rtnUrl=<%=header_addr2%>';" class="btnClose btnLogout">로그아웃</a>
	</header>
	<section class="sub">
		<div class="inBox">
			<div class="tabCommon">
				<ul class="tabList">
					<li class="on"><a href="calendar.asp">예약관리</a></li>
					<li><a href="cart.asp">식권결제</a></li>					
				</ul>
				<div class="tabCon">
					<div class="tabConList on">
						<div class="title-wrap">
							<h3 class="title">
								식권현황
							</h3>
							<a href="#" class="btn res-cancel">환불신청</a>
						</div>
						
						<div class="tableType calendar-tableType">
							<table summary="">
								<caption></caption>
								<colgroup>
									<col width="25%">
									<col width="25%">
									<col width="25%">
									<col width="*">
								</colgroup>
								<thead>
									<tr>
										<th class="b-r">총 식권</th>
										<th class="b-r">이용예정</th>
										<th class="b-r">이용완료</th>
										<th>환불현황</th>
									</tr>
								</thead>
								<tbody>
									<tr><%
										' 식권 COUNT
										strSQL = ""
										strSQL = strSQL & " SELECT		ISNULL(SUM(CASE WHEN A.SB_SALE_ST = 11 AND A.SB_REF_DT IS NULL AND C.MR_SB_CD IS NULL THEN 1 ELSE 0 END),0) AS CNT_HAVING "
										strSQL = strSQL & " 			, ISNULL(SUM(CASE WHEN A.SB_SALE_ST = 11 AND A.SB_REF_DT IS NULL AND C.MR_SB_CD IS NOT NULL AND C.MR_MEAL_DT > DATEADD(D, -1, GETDATE()) THEN 1 ELSE 0 END), 0) AS CNT_RESERVATION "
										strSQL = strSQL & " 			, ISNULL(SUM(CASE WHEN A.SB_SALE_ST = 11 AND A.SB_REF_DT IS NULL AND C.MR_SB_CD IS NOT NULL AND CONVERT(VARCHAR(8), C.MR_MEAL_DT, 112) < CONVERT(VARCHAR(8), GETDATE(), 112) THEN 1 ELSE 0 END), 0) AS CNT_USED "
										strSQL = strSQL & " 			, ISNULL(SUM(CASE WHEN A.SB_SALE_ST = 13 AND A.SB_REF_DT IS NOT NULL AND E.AH_REF_DT IS NOT NULL AND E.AH_END_DT IS NULL THEN 1 ELSE 0 END), 0) AS CNT_REFUND "
										strSQL = strSQL & " FROM		AMS_SALE_BOOK	A (NOLOCK) "
										strSQL = strSQL & " INNER JOIN	AMS_BOOK_MAS	B (NOLOCK) ON SB_BOOK_CD = BM_BOOK_CD "
										strSQL = strSQL & " LEFT JOIN	AMS_MEAL_RESERVATION C (NOLOCK) ON SB_SB_CD = MR_SB_CD "
										strSQL = strSQL & " LEFT JOIN	AMS_REFUND_MAS	D (NOLOCK) ON SB_SB_CD = RM_SB_CD "
										strSQL = strSQL & " LEFT JOIN	AMS_ACCREF_HIS	E (NOLOCK) ON RM_BACK_CD = AH_BACK_CD "
										strSQL = strSQL & " WHERE		1=1 "
										strSQL = strSQL & " AND			A.SB_MEM_CD = '" & nRmsMemCd & "' "
										strSQL = strSQL & " AND			B.BM_PRO_TYPE = 'F' "

										set RS = amsobjdb.sqlQuery(strSql,2)

										iCntHaving = 0
										iCntReservation = 0
										iCntUsed = 0
										iCntRef = 0
										If not (RS.eof or RS.bof) then
											iCntHaving = RS("CNT_HAVING")
											iCntReservation = RS("CNT_RESERVATION")
											iCntUsed = RS("CNT_USED")
											iCntRef = RS("CNT_REFUND")
										End If
										RS.close
										set RS = nothing %>
										<td class="b-r"><a href="./pay_list.asp"><span class="big-num"><%=iCntHaving%></span></a></td>
										<td class="b-r"><a href="./calendar.asp"><span class="big-num"><%=iCntReservation%></span></a></td>
										<td class="b-r"><a href="./runOut.asp"><span class="big-num gray"><%=iCntUsed%></span></a></td>
										<td><a href="./refund_list.asp"><span class="big-num gray"><%=iCntRef%></span></a></td>
									</tr>
								</tbody>
							</table>							
						</div>
						<div class="cal-btn-wrap">							
							<a href="#" class="btn btn-cancel">식사 취소하기</a>
							<a href="#" class="btn btn-reserve">식사 예약하기</a>
						</div>
						
						<!-- fns -->
						<div class="fns">							
							<div class="fns-cal">
								<div class="title-wrap reserve-title">							
									<p class="info">온라인 식권은 구매한 달에만 예약 및 소진이 가능하며, <span>예약은 영업일 기준 <strong>3일후</strong>의 식사부터 예약/취소</span>가 가능합니다.</p>
								</div>
								<div class="reserve-wrap">
									<div class="tit no-1 reserve-step"><strong>STEP1</strong> <span>|&nbsp;&nbsp;</span>식사 날짜 선택 <span>예약하고자 하는 식사 시간을 선택해주세요. </span></div>
									<div class="tit no-3 reserve-cancel"><strong>STEP1</strong> <span>|&nbsp;&nbsp;</span>취소 날짜 선택 <span>아래의 캘린더에서 취소 하고자 하는 날짜를 클릭하여 추가해주세요.</span></div>
									<div class="info">
										<div class="right">
											<a href="" class="day_btn">날짜 한번에 추가하기</a>
											<ul class="day">
											</ul>
											<p>선택 된 식사 : <span id="selected_cnt">0</span> / 예약 가능식권 : <span id="ticket_cnt">0</span></p>	 
											
										</div>
									</div>
									<div class="tit no-2 reserve-step"><strong>STEP2</strong> <span>|&nbsp;&nbsp;</span>시간 및 층수 선택 <span>예약 상세 설정을 선택해주세요.</span></div>
									<div class="tit no-4 reserve-cancel"><strong>STEP2</strong> <span>|&nbsp;&nbsp;</span>취소 시간 선택 <span>취소하고자 하는 식사 시간을 선택해주세요.</span></div>
									<div class="info no-1">
										<ul class="food">
											<li>· 식사 선택<span>(중식,석식 별도예약)</span></li>											
											<li><a href="#" class="no-1">중식</a></li>
											<li><a href="#" class="no-2">석식</a></li>											
										</ul>
										<ul class="floor">
											<li>· 층수 선택</li>
											<li>
												<span id="span_location">
													<select name="V_LOC_CD" id="reserve_floor">
														<option value="">예약 층수 선택</option>
													</select>
												</span>
											</li>
										</ul>

									</div>
									<a href="javascript:;" onclick="javascript:doReservation();" class="finish">선택완료</a>

									<a href="" class="close"><img src="<%=Application("img_path_russel")%>/mypage/fns/cal_btn_close.png" alt="닫기" /></a>
									
								</div>
								<ul class="cal-top">
									<li class="left">
										<span id="span_ticket"></span>										
									</li>
									<li class="mid">
										<button type="button" class="prev" onclick="javascript:preMonth();">전달</button>
										<p id="calender_title"><%=sMonth%>월</p>
										<button type="button" class="next" onclick="javascript:nextMonth();">다음달</button>
										<div>제공일 : 중식 <span id="span_cnt_available_lun">0</span>개, 석식 <span id="span_cnt_available_din">0</span>개</div>
									</li>
									<li class="right">
										<span class="no-1">소진완료</span>
										<span class="no-2">취소불가</span>
										<span class="no-3">예약완료(취소가능)</span>
									</li>									
								</ul>
								<!-- 예약없음 팝업 -->
								<div class="calendar-tool">
									<p class="close"><img src="<%=Application("img_path_russel")%>/mypage/fns/cal_tool_close.png" alt="닫기" /></p>
									<p>해당 일에 예약이 없습니다. <br>상단의 <span>예약하기</span>를 통해 예약을 진행해주세요.</p>
									<a href="" class="btn-calendar-tool">예약하기</a>
								</div>
								<!-- //예약없음 팝업 -->
								<div id="calendar">
									
								</div>
							</div>
						</div>
						<script>
							
							$(function(){
								$('.title-wrap .res-cancel').on('click', function(e){
									e.preventDefault();
									$('select[name=V_TICKET_INFO]').change();
									$('.refund_pop').show();
								});
								$('.reserve-wrap .day_btn').on('click', function(e){
									e.preventDefault();
									$('.day_pop').show();
								});
								$('.popup .pop-close').on('click', function(e){
									e.preventDefault();
									$('.popup').hide();
								});
								
								//예약하기 - 중식,석식 선택
								$('.reserve-wrap .info.no-1 ul li a').on('click', function(e){
									e.preventDefault();
									if ($(this).hasClass('on')) {
										$(this).removeClass('on');
									}
									else {
										$(this).addClass('on');
									}
								});

								// 예약하기 버튼
								$('.btn-reserve, .btn-calendar-tool').on('click', function(e){
									e.preventDefault();

									if ($('input[name=V_TICKET_CNT]').val() <= 0 ) {
										if (confirm("잔여 식권이 없습니다.\n구매 페이지로 이동 하시겠습니까?")) {
											document.location.href = "cart.asp";
										}
										return;
									}

									$('.reserve-wrap, .reserve-title').show().addClass('on');
									$('.reserve-wrap .info .right a').removeClass('on');
									$('.reserve-wrap .info ul.floor').show();
									$('.reserve-wrap .reserve-cancel').hide().prev('.reserve-step').show();
									$('.cal-btn-wrap').hide();
									$('#calendar').addClass('active').addClass('no-1');
									$('.calendar-tool').hide().next().children('table').removeClass('on');
									//$("#reserve_floor").attr('disabled', false); // or false

									// 취소불가 레이어 삭제, 예약불가 레이어 추가
									$('.no-update').removeClass('cal-day').addClass('res-day');

									if ($('input[name=V_MOD]').val() != "R") {
										// 취소하기 상태에서 예약하기 상태로 변경 될 때, 기존 선택한 날짜 모두 삭제
										initSelDate();
									}
									$('input[name=V_MOD]').val("R");
								});

								// 닫기 버튼
								$('.reserve-wrap .close').on('click', function(e){
									e.preventDefault();
									$(this).parents('.reserve-wrap').hide();
									$('.reserve-wrap').removeClass('color');
									$('.cal-btn-wrap').show();
									$('.info ul.day').removeClass('on');
									$('#calendar').removeClass('active').removeClass('no-1').removeClass('no-2');
									$('.reserve-title').hide();

									// 취소불가 레이어 삭제, 예약불가 레이어 삭제
									$('.no-update').removeClass('cal-day').removeClass('res-day');
								});

								// 취소하기 버튼
								$('.btn-cancel').on('click', function(e){
									e.preventDefault();
									$('.reserve-wrap, .reserve-title').show(); //예약창 열기
									$('#calendar').addClass('active').addClass('no-2');
									$('.info ul.day').addClass('on');
									$('.reserve-wrap').addClass('color');
									$('.reserve-wrap .reserve-step').hide().next('.reserve-cancel').show(); //예약step 없애고 취소 step보여지기
									$(this).parents('.cal-btn-wrap').hide();//버튼들 가리기
									$('.reserve-wrap .info .right a').addClass('on'); //선택완료버튼 컬러 바꾸기 클래스
									$('.reserve-wrap .info ul.floor').hide(); //층수선택 셀렉창 가리기
									//$("#reserve_floor").attr('disabled', true); // or false

									// 예약불가 레이어 삭제, 취소불가 레이어 추가
									$('.no-update').removeClass('res-day').addClass('cal-day');

									if ($('input[name=V_MOD]').val() != "C") {
										// 예약하기 상태에서 취소하기 상태로 변경 될 때, 기존 선택한 날짜 모두 삭제
										initSelDate();
									}
									$('input[name=V_MOD]').val("C");
								});

								
							});
							
						</script>
						<!-- //fns -->											
					</div>
					
				</div>
			</div>
		</div>
	</section>
</div>
<input type="hidden" name="V_MEM_CD" value="<%=nRmsMemCd%>" />
<input type="hidden" name="V_SET_CD" value="0" />
<input type="hidden" name="V_TICKET_CNT" value="0" />
<input type="hidden" name="V_MOD" value="" />
<input type="hidden" name="V_YEAR" value="" />
<input type="hidden" name="V_MONTH" value="" />

</form>

<!-- 한번에 예약하기 팝업-->
<div class="popup day_pop">
	<div class="dim-bg"></div>
	<div class="popup-wrap">
		<div class="title-wrap">
			<p class="tit">날짜 한번에 추가하기</p>
			<a href="#" class="pop-close"><img src="<%=Application("img_path_russel")%>/mypage/fns/popup_close.png" alt="닫기" /></a>
		</div>
		<div class="info">
			<div class="info-title">
				<h3 class="title">예약 리스트</h3>
				<p class="pos-r">선택 된 식사 : <span>16</span> / 예약 가능식권 : <span>10</span></p>
			</div>
			<div class="calendar-scroll">
				<table>
					<colgroup>
						<col width="35%">
						<col width="*">
						<col width="*">
						<col width="40%">
					</colgroup>
					<thead>
						<tr>
							<th>날짜</th>
							<th>중식 <span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></th>
							<th>석식 <span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></th>
							<th>비고</th>
						</tr>
					</thead>
				</table>
				<table>
					<colgroup>
						<col width="35%">
						<col width="*">
						<col width="*">
						<col width="40%">
					</colgroup>
					<tbody>
						<tr class="disabled">
							<td>1월 1일(월)</td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td>식권소진</td>
						</tr>
						<tr class="disabled">
							<td>1월 2일(화)</td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td>식권소진</td>
						</tr>
						<tr class="disabled">
							<td>1월 3일(수)</td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td>식권소진</td>
						</tr>
						<tr class="disabled">
							<td class="today">1월 4일(목)</td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td>영업일 3일기준 변경불가</td>
						</tr>
						<tr class="disabled">
							<td>1월 5일(금)</td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td>영업일 3일기준 변경불가</td>
						</tr>
						<tr class="disabled">
							<td>1월 6일(토)</td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td>영업일 3일기준 변경불가</td>
						</tr>
						<tr class="disabled">
							<td class="sunday">1월 7일(일)</td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td>휴무</td>
						</tr>
						<tr>
							<td>1월 8일(월)</td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td>식권소진</td>
						</tr>
						<tr>
							<td>1월 9일(화)</td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td>식권소진</td>
						</tr>
						<tr>
							<td>1월 10일(수)</td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td>식권소진</td>
						</tr>
						<tr>
							<td>1월 11일(목)</td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td>식권소진</td>
						</tr>
						<tr>
							<td>1월 12일(금)</td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td>식권소진</td>
						</tr>
						<tr>
							<td>1월 13일(토)</td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td>식권소진</td>
						</tr>
						<tr>
							<td class="sunday">1월 14일(일)</td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td><span class="imgCheck"><input type="checkbox" title="선택" id="" name="" value=""  ></span></td>
							<td>휴무</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="pop-btnWrap">
				<a href="#" class="cancel pop-close">취소하기</a>
				<a href="#" class="pay">추가하기</a>
			</div>

			
		</div>	
	</div>
</div> 

<!--  // 한번에 예약하기 팝업-->

<!-- 환불신청 팝업 -->
<div class="popup refund_pop">
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
									<%
										sBankCD = ""
										sAccNM  = ""
										sAccNUM = ""

										strSQL = ""
										strSQL = strSQL & " SELECT RA_BANK_CD, RA_RCV_NM, RA_ACCT_NUM FROM AMS_REF_ACCT (NOLOCK) WHERE RA_MEM_CD = '" & nRmsMemCd & "' AND RA_USE_YN = 'Y' ORDER BY RA_REG_DT DESC "
										set RS = amsobjdb.sqlQuery(strSql,3)
										If RS.BOF <> True AND RS.EOF <> True Then
											sBankCD = RS("RA_BANK_CD")
											sAccNM  = RS("RA_RCV_NM")
											sAccNUM = RS("RA_ACCT_NUM")
										END IF
										RS.close
										Set RS = Nothing
									%>
									<select name="V_BANK_CD"><%
										strSQL = ""
										strSQL = strSQL & " SELECT	CD_DTL_CD, CD_COM_CLS "
										strSQL = strSQL & " FROM    AMS_COM_DTL with(nolock) "
										strSQL = strSQL & " WHERE   CD_COM_CD = 149 "
										set RS = amsobjdb.sqlQuery(strSql,3)
										If RS.EOF <> True Then%>
											<%DO WHILE NOT RS.EOF%>
												<option value="<%=RS(0)%>" <%if cstr(sBankCD) = cstr(RS(0)) then %> selected <% end if %>><%=RS(1)%></option>
												<%RS.MoveNext
											LOOP%>
										<%ELSE%>
											<option value="11">기타</option>
										<%END IF
										RS.close
										Set RS = Nothing
										%>
									</select>
									<label><input type="text" name="V_ACCT_NM" class="no-1" value="<%=sAccNM%>" placeholder="예금주명"></label>
									<label><input type="text" name="V_ACCT_NO" class="no-2" value="<%=sAccNUM%>" placeholder="계좌번호를 입력해주세요."></label>
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
				<a href="#" class="cancel pop-close">취소</a>
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
</body>
</html>
