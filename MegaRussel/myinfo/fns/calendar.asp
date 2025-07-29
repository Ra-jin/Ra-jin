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

			initSwiper();
		});

		function initSwiper(){
			var menu = ['<i>step1</i><br>예약가능일 확인', '<i>step2</i><br>식권결제', '<i>step3</i><br>보유식권 확인', '<i>step4</i><br>식사 예약하기', '<i>step5</i><br>예약확인', '<i>step6</i><br>식사 취소하기', '<i>step7</i><br>식권 환불신청']
			var swiper = new Swiper('.swiper-container', {
			pagination: {
				el: '.swiper-pagination',
				clickable: true,
				renderBullet: function (index, className) {
					return '<span class="' + className + '">' + (menu[index]) + '</span>';
				}
			},
			navigation: {
					nextEl: '.button-next',
					prevEl: '.button-prev',
				},
			loop: true,

			});
		}

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

					// 예약 or 취소 중 이면 예약불가 or 취소불가 레이어 표시
					if($('.reserve-wrap').is(':visible') == true ){
						if ($('input[name=V_MOD]').val() == "R") {
							$('.no-update').removeClass('cal-day').addClass('res-day');
						} else if ($('input[name=V_MOD]').val() == "C") {
							$('.no-update').removeClass('res-day').addClass('cal-day');
						}
					}

					$('.fns table td > div:nth-child(1)').on('click', function(){
						if($('.reserve-wrap').is(':visible') == true ){
							var doLun, doDin;
							doLun = $('.food .no-1').hasClass('on') == true ? 'Y':'N';
							doDin = $('.food .no-2').hasClass('on') == true ? 'Y':'N';

							if (doLun != 'Y' && doDin != 'Y') {
								if ($(this).parent('TD').hasClass('on')) {
									$(this).parent('TD').removeClass('on');
								} else {
									alert("중식, 석식을 선택하세요.");
									$(this).parent('TD').removeClass('on');
									return;
								}
							}

							$(this).parent('TD').addClass('on');

							var day = '00' + $(this).children('p').html();
							day = day.substring(day.length, day.length-2)

							var newNode = $('<li>'
										+ (String(month).length == 1 ? '0'+month : month) + '-' + day
										+ (doLun == 'Y' || doDin == 'Y' ? '(' : '')
										+ (doLun == 'Y' ? '중' : '')
										+ (doLun == 'Y' && doDin == 'Y' ? ',' : '')
										+ (doDin == 'Y' ? '석' : '')
										+ (doLun == 'Y' || doDin == 'Y' ? ')' : '')
										+ ' <button type="button"><img src="<%=Application("img_path_russel")%>/myinfo/fns/btn_cal_del.gif" alt="삭제" /></button>'
										+ '</li>');
							$(newNode).append('<input type="hidden" name="V_RESERVATION_DAY" value="' + year + '-' + (String(month).length == 1 ? '0'+month : month) + '-' + day + '" />');
							$(newNode).append('<input type="hidden" name="V_MEAL_LUN" value="' + doLun + '" />');
							$(newNode).append('<input type="hidden" name="V_MEAL_DIN" value="' + doDin + '" />');

							if ($('input[name=V_MOD]').val() == "R") {
								// 예약하기
								if ($(this).parent('TD').hasClass('day-prev')) { alert("예약 가능한 날짜가 아닙니다."); $(this).parent('TD').removeClass('on'); return; }
								if ($(this).children('span').length == 0) { alert("예약 가능한 날짜가 아닙니다."); $(this).parent('TD').removeClass('on'); return; }
								if ($(this).children('span').length == 1) {
									if ($(this).children('span').hasClass('holiday')) { alert("예약 가능한 날짜가 아닙니다."); $(this).parent('TD').removeClass('on'); return; }
									if (doLun == 'Y' && $(this).children('span').text().indexOf('중식') == -1) { alert("예약 가능한 날짜가 아닙니다."); $(this).parent('TD').removeClass('on'); return; }
									if (doDin == 'Y' && $(this).children('span').text().indexOf('석식') == -1) { alert("예약 가능한 날짜가 아닙니다."); $(this).parent('TD').removeClass('on'); return; }
								}

								if ($(document.all.V_RESERVATION_DAY).length > 1) {
									for(var i=0; i<$(document.all.V_RESERVATION_DAY).length; i++) {
										if ($(document.all.V_RESERVATION_DAY[i]).val() == $(newNode).children('input[name=V_RESERVATION_DAY]').val()) {
											//alert("중복되는 예약일자가 존재합니다.");
											removeSelectedDay($(newNode).children('input[name=V_RESERVATION_DAY]').val());
											return;
										}
									}
								}
								else {
									if ($(document.all.V_RESERVATION_DAY).val() == $(newNode).children('input[name=V_RESERVATION_DAY]').val()) {
										//alert("중복되는 예약일자가 존재합니다.");
										removeSelectedDay($(newNode).children('input[name=V_RESERVATION_DAY]').val());
										return;
									}
								}
							} else if ($('input[name=V_MOD]').val() == "C") {
								// 취소하기
								if ($(this).parent('TD').hasClass('day-prev')) { alert("취소 가능한 날짜가 아닙니다."); return; }
								if ($(this).children('span').length == 0) { alert("취소 가능한 날짜가 아닙니다."); return; }
								if ($(this).children('span').length == 1) {
									if ($(this).children('span').hasClass('holiday')) { alert("취소 가능한 날짜가 아닙니다."); $(this).parent('TD').removeClass('on'); return; }
									if (doLun == 'Y' && $(this).children('span').text().indexOf('중식') == -1) { alert("취소 가능한 날짜가 아닙니다."); $(this).parent('TD').removeClass('on'); return; }
									if (doDin == 'Y' && $(this).children('span').text().indexOf('석식') == -1) { alert("취소 가능한 날짜가 아닙니다."); $(this).parent('TD').removeClass('on'); return; }
								}

								if ($(document.all.V_RESERVATION_DAY).length > 1) {
									for(var i=0; i<$(document.all.V_RESERVATION_DAY).length; i++) {
										if ($(document.all.V_RESERVATION_DAY[i]).val() == $(newNode).children('input[name=V_RESERVATION_DAY]').val()) {
											//alert("중복되는 취소일자가 존재합니다.");
											removeSelectedDay($(newNode).children('input[name=V_RESERVATION_DAY]').val());
											return;
										}
									}
								}
								else {
									if ($(document.all.V_RESERVATION_DAY).val() == $(newNode).children('input[name=V_RESERVATION_DAY]').val()) {
										//alert("중복되는 취소일자가 존재합니다.");
										removeSelectedDay($(newNode).children('input[name=V_RESERVATION_DAY]').val());
										return;
									}
								}
							}

							if (doLun == "Y") { $(this).children('span:contains("중식")').addClass('on'); }
							if (doDin == "Y") { $(this).children('span:contains("석식")').addClass('on'); }

							$('.reserve-wrap .right ul').append(newNode);

							// 선택 된 식사 카운트
							$('.selected_cnt').html($('input[name=V_MEAL_LUN][value=Y]').length + $('input[name=V_MEAL_DIN][value=Y]').length)

							//예약, 취소 - 날짜 삭제
							$('.reserve-wrap .right li button').on('click', function(){
								removeSelectedDay($(this).siblings('input[name=V_RESERVATION_DAY]').val());
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
							$('.ticket_cnt').html(0);
						}
						else {
							$('input[name=V_SET_CD]').val(arrTICKET_SET_CD[0]);
							$('input[name=V_TICKET_CNT]').val(arrTICKET_SET_CD[1]);
							$('.ticket_cnt').html(arrTICKET_SET_CD[1]);
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

		function getDate_list(year, month) {
			$('.calendar-scroll').load(
				'./calendar_list_ax.asp'
				,{
					'V_ACA_CD' : document.all.sel_aca_cd.value
					,'V_YEAR' : year
					,'V_MONTH' : month
					,'V_MEM_CD' : '<%=nRmsMemCd%>'
					,'V_IS_TEC' : '<%=sIsTec%>'
				}
				, function (html) {
					// 선택한 날짜 항목들 체크 하기
					$('input[name=V_RESERVATION_DAY]').each(function() {
						if ($(this).siblings('input[name=V_MEAL_LUN]').val() == 'Y') {
							$("#LIST_" + $(this).val()).find('input[name=V_LIST_LUN]').prop('checked', true);
						}

						if ($(this).siblings('input[name=V_MEAL_DIN]').val() == 'Y') {
							$("#LIST_" + $(this).val()).find('input[name=V_LIST_DIN]').prop('checked', true);
						}
					});

					if ($('input[name=V_LIST_LUN]').not($('.calendar-scroll tr[class*=disabled]').find('input[name=V_LIST_LUN]')).not(':disabled').length ==
						$('input[name=V_LIST_LUN]:checked').length) {
						$('input[name=V_LIST_LUN_ALL').prop('checked', true);
					} else {
						$('input[name=V_LIST_LUN_ALL').prop('checked', false);
					}

					if ($('input[name=V_LIST_DIN]').not($('.calendar-scroll tr[class*=disabled]').find('input[name=V_LIST_DIN]')).not(':disabled').length ==
						$('input[name=V_LIST_DIN]:checked').length) {
						$('input[name=V_LIST_DIN_ALL').prop('checked', true);
					} else {
						$('input[name=V_LIST_DIN_ALL').prop('checked', false);
					}

					$('input[name=V_LIST_LUN]').on('change', function() {
						$('.selected_cnt').html($('input[name=V_LIST_LUN]:checked').length + $('input[name=V_LIST_DIN]:checked').length)
					});

					$('input[name=V_LIST_DIN]').on('change', function() {
						$('.selected_cnt').html($('input[name=V_LIST_LUN]:checked').length + $('input[name=V_LIST_DIN]:checked').length)
					});

					$('.imgCheck').imgCheck();
					$('.day_pop').addClass('fix').show();
					return true;
				}
			);
		}

		function addDateList() {
			// 기존 선택한 날짜 모두 삭제
			initSelDate();

			$('.calendar-scroll tr').not('.calendar-scroll tr[class*=disabled]').each(function(){
				var doLun, doDin, day;

				doLun = $(this).find('input[name=V_LIST_LUN]').is(":checked") == true ? 'Y':'N';
				doDin = $(this).find('input[name=V_LIST_DIN]').is(":checked") == true ? 'Y':'N';

				if (doLun == 'Y' || doDin == 'Y') {
					day = $(this).find('input[name=V_LIST_DATE]').val();

					var newNode = $('<li>'
								+ (String(iMonth).length == 1 ? '0'+iMonth : iMonth) + '-' + day
								+ (doLun == 'Y' || doDin == 'Y' ? '(' : '')
								+ (doLun == 'Y' ? '중' : '')
								+ (doLun == 'Y' && doDin == 'Y' ? ',' : '')
								+ (doDin == 'Y' ? '석' : '')
								+ (doLun == 'Y' || doDin == 'Y' ? ')' : '')
								+ ' <button type="button"><img src="<%=Application("img_path_russel")%>/myinfo/fns/btn_cal_del.gif" alt="삭제" /></button>'
								+ '</li>');
					$(newNode).append('<input type="hidden" name="V_RESERVATION_DAY" value="' + iYear + '-' + (String(iMonth).length == 1 ? '0'+iMonth : iMonth) + '-' + day + '" />');
					$(newNode).append('<input type="hidden" name="V_MEAL_LUN" value="' + doLun + '" />');
					$(newNode).append('<input type="hidden" name="V_MEAL_DIN" value="' + doDin + '" />');


					$('#' + iYear + '-' + (String(iMonth).length == 1 ? '0'+iMonth : iMonth) + '-' + day).addClass('on');
					if (doLun == "Y") { $('#' + iYear + '-' + (String(iMonth).length == 1 ? '0'+iMonth : iMonth) + '-' + day).find('span:contains("중식")').addClass('on'); }
					if (doDin == "Y") { $('#' + iYear + '-' + (String(iMonth).length == 1 ? '0'+iMonth : iMonth) + '-' + day).find('span:contains("석식")').addClass('on'); }

					$('.reserve-wrap .right ul').append(newNode);

					// 선택 된 식사 카운트
					$('.selected_cnt').html($('input[name=V_MEAL_LUN][value=Y]').length + $('input[name=V_MEAL_DIN][value=Y]').length)

					//예약, 취소 - 날짜 삭제
					$('.reserve-wrap .right li button').on('click', function(){
						removeSelectedDay($(this).siblings('input[name=V_RESERVATION_DAY]').val());
					});
				}
			});

			$('.day_pop').removeClass('fix').hide();
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
				var cntEat = $('input[name=V_MEAL_LUN][value=Y]').length + $('input[name=V_MEAL_DIN][value=Y]').length
				if ($('input[name=V_TICKET_CNT]').val() < cntEat) {
					if(confirm(sModeText + "일보다 식권수량이 적습니다.\n부족한 식권을 " + (cntEat - $('input[name=V_TICKET_CNT]').val()) + "개를 추가 결제 후 하시겠습니까?")) {
						document.location.href = "cart.asp";
					}
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

			// 선택 된 식사 카운트
			$('.selected_cnt').html(0);
		}

		function removeSelectedDay(dayVal) {
			$("#"+dayVal).removeClass('on');
			$("#"+dayVal).find('span').removeClass('on')
			$('input[name=V_RESERVATION_DAY][value=' + dayVal + ']').parent('li').remove();

			// 선택 된 식사 카운트
			$('.selected_cnt').html($('input[name=V_MEAL_LUN][value=Y]').length + $('input[name=V_MEAL_DIN][value=Y]').length)
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

			//  숫자 아닌 경우
			if (!$.isNumeric($('input[name=V_REFUND_CNT]').val())) {
				alert("신청건수는 숫자만 입력해주세요.");
				return;
			}

			if ($('input[name=V_REFUND_CNT]').val() == "") {
				alert("신청건수를 입력해주세요.");
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

		function setNoShowGaide() {
			var d = new Date();
			var exdays = 365;
  			d.setTime(d.getTime() + (exdays*24*60*60*1000));

			document.cookie="NoShowGaide=Y; expires="+ d.toUTCString();
			$('.guide').removeClass('on');
		}
	</script>


</head>
<body>
<form name="form" method="post" action="./reservation_sql.asp">
<div class="wrap">
	<header class="sub">
        <a href="/index.asp" class="btnPrev">식권예약</a>
		<!-- #include virtual = "/include/header.asp" -->
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
						<a href="#" class="guide-btn"><img src="<%=Application("img_path_russel")%>/myinfo/fns/guide_btn.png" alt="예약가이드" /></a>
						<!-- popup.guide-->
						<div class="popup guide <% if Request.Cookies("NoShowGaide") <> "Y" then %> on <% end if %>">
							<div class="dim-bg"></div>
							<!-- popup-wrap -->
							<div class="popup-wrap">
								<div class="guide-title">
									<p class="close"><img src="<%=Application("img_path_russel")%>/myinfo/fns/btn_close.png" alt="닫기" /></p>
									<p class="tit"><img src="<%=Application("img_path_russel")%>/myinfo/fns/guide_title.jpg" alt="온라인식권 이용가이드" /></p>
									<div class="guide-tab">
										<a href="" class="tab_btn on">이용 가이드 매뉴얼</a>
										<!-- <a href="" class="tab_btn">식권 가이드 영상</a> -->
									</div>
								</div>
								<!-- guide-con -->
								<div class="guide-con-wrap">
									<div class="guide-con on">
										<!-- Swiper -->
										<div class="swiper-container">
											<!-- Add Pagination -->
											<div class="swiper-pagination">

											</div>
											<div class="swiper-wrapper">
												<div class="swiper-slide">
													<p class="tit"><span>step1</span> 예약가능일 확인</p>
													<ul>
														<li>① <span class="txt-red">붉은색 영역</span>의 회색 글자(<span class="txt-gray">중식, 석식</span>) 은 예약 불가 합니다. </li>
														<li>② <span class="txt-blue">파란색 영역</span>은 검정 글자(중식, 석식)은 예약이 가능한 식사입니다. (예약된 정보는 날짜에 <img src="<%=Application("img_path_russel")%>/myinfo/fns/icon_blue_circle.png" alt="">아이콘으로 표시됩니다.)</li>
														<li>③ 오늘로 표기된 일부터 영업일 기준 3일은 예약 및 취소가 불가합니다. (예약된 정보의 취소불가일 경우 <img src="<%=Application("img_path_russel")%>/myinfo/fns/icon_red_circle.png" alt="">아이콘으로 변경됩니다.) </li>
													</ul>
													<img src="<%=Application("img_path_russel")%>/myinfo/fns/1.jpg" alt="" />
												</div>
												<div class="swiper-slide">
													<p class="tit"><span>step2</span> 식권결제</p>
													<ul>
														<li>① 구매하고자 하는 ㅇ월 식권을 구매할 수량만큼 마우스로 클릭합니다. <span class="txt-gray">(숫자 입력도 가능합니다.)</span></li>
														<li>② 제공일은 해당 월에 예약할 수 있는 수량을 의미합니다. 한달 전체를 예약 하시려면 제공 일의 총 개수를 더하여 구매 합니다.</li>
														<li>③ 선택한 수량과 총 금액을 확인하고 “결제하기” 버튼을 클릭합니다.</li>
													</ul>
													<img src="<%=Application("img_path_russel")%>/myinfo/fns/2.jpg" alt="" />
												</div>
												<div class="swiper-slide">
													<p class="tit"><span>step3</span> 보유식권 확인</p>
													<ul>
														<li>① 총 식권은 모든 월에 보유한 식권의 총 합을 나타냅니다. <span class="txt-gray">(클릭 시 결제 이력 페이지로 이동)</span></li>
														<li>② 캘린더상의 선택된 월에 예약 가능한 식권 개수를 나타냅니다. </li>
														<li>③ 현재 월의 식권이 있다면 “식사 예약하기”를 클릭합니다.</li>
													</ul>
													<img src="<%=Application("img_path_russel")%>/myinfo/fns/3.jpg" alt="" />
												</div>
												<div class="swiper-slide">
													<p class="tit"><span>step4</span> 식사예약하기</p>
													<ul>
														<li>① 중식, 석식 중(다중 선택가능) 예약하고자 하는 식사를 선택합니다.</li>
														<li>② 캘린더 상에 신청 하고 자하는 날짜를 클릭합니다.</li>
														<li>③ 층수를 최종으로 선택한 후 “선택완료” 버튼을 클릭합니다.</li>
													</ul>
													<img src="<%=Application("img_path_russel")%>/myinfo/fns/4.jpg" alt="" />
												</div>
												<div class="swiper-slide">
													<p class="tit"><span>step5</span> 예약확인</p>
													<ul>
														<li>① 정상적으로 예약이 완료되면 식사 우측에 파란색 아이콘이 생성됩니다. 예약된 일자 클릭 시 층수 정보를 확인할 수 있습니다.(중식 <img src="<%=Application("img_path_russel")%>/myinfo/fns/icon_blue_circle.png" alt="">)</li>
														<li>② 예약 일자별로 아이콘이 색으로 상태 값을 표기합니다. </li>
														<li>③ 예약된 정보를 취소하려면 “식사 취소하기” 버튼을 클릭합니다.</li>
													</ul>
													<img src="<%=Application("img_path_russel")%>/myinfo/fns/5.jpg" alt="" />
												</div>
												<div class="swiper-slide">
													<p class="tit"><span>step6</span> 식사 취소하기</p>
													<ul>
														<li>① 취소할 식사 시간을 선택합니다. (다중 선택가능)</li>
														<li>② 캘린더 상에 취소하고자 하는 날짜를 클릭합니다.</li>
														<li>③ 선택된 정보를 확인 후 “선택완료” 버튼을 클릭합니다.</li>
													</ul>
													<img src="<%=Application("img_path_russel")%>/myinfo/fns/6.jpg" alt="" />
												</div>
												<div class="swiper-slide">
													<p class="tit"><span>step7</span> 식권 환불신청</p>
													<ul>
														<li>① 환불 받을 식권을 선택합니다.</li>
														<li>② 환불을 신청할 권수 및 환불 계좌를 입력합니다.</li>
														<li>③ 환불 신청 버튼을 클릭합니다. ( 환불 소요일은 7일이며, 사정에 따라 지연될 수 있습니다. )</li>
													</ul>
													<img src="<%=Application("img_path_russel")%>/myinfo/fns/7.jpg" alt="" />
												</div>
											</div>
											<div class="button-next"></div>
											<div class="button-prev"></div>

										</div>
										</div>
									<!-- //guide-con -->
									<!-- <div class="guide-con">
										<div class="guide-video">
											<div class="iframe-wrap">
												<iframe src='https://tv.naver.com/embed/12551092?autoPlay=true' frameborder='no' scrolling='no' marginwidth='0' marginheight='0'  allow='autoplay' allowfullscreen></iframe>
											</div>

										</div>
									</div> -->
								</div>
								<label for="guideInput" class="guide-input"><input type="checkbox" name="" id="guideInput" onclick="javascript:setNoShowGaide()"> 이 창을 다시는 보지않음</label>
							</div>
							<!-- //popup-wrap -->

						</div>
						<!-- //popup.guide-->

						<div class="title-wrap">
							<h3 class="title">
								식권현황
							</h3>
							<a href="#" class="btn res-cancel">환불신청</a>
						</div>

						<div class="tb-type2">
							<table summary="">
								<caption></caption>
								<colgroup>
									<col width="25%">
									<col width="25%">
									<col width="25%">
									<col width="25%">
								</colgroup>
								<thead>
									<tr>
										<th class="b-r">총 보유식권</th>
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
						<p class="txt-red">※ 이용예정 식권은 환불이 불가합니다. 식사를 취소하여 보유식권으로 전환 후 환불 신청이 가능합니다.</p>
						<div class="cal-btn-wrap">
							<a href="#" class="btn btn-cancel">식사 취소하기</a>
							<a href="#" class="btn btn-reserve">식사 예약하기</a>
						</div>


						<!-- fns -->
						<div class="fns">
							<div class="fns-cal">

								<ul class="cal-top">
									<li class="left">
										<span id="span_ticket"></span>
									</li>
									<li class="right">
										<span class="no-1">소진완료</span>
										<span class="no-2">취소불가</span>
										<span class="no-3">예약완료(취소가능)</span>
									</li>
									<li class="mid">
										<button type="button" class="prev" onclick="javascript:preMonth();">전달</button>
										<p id="calender_title"><%=sMonth%>월</p>
										<button type="button" class="next" onclick="javascript:nextMonth();">다음달</button>
										<div>제공일 : 중식 <span id="span_cnt_available_lun">0</span>개, 석식 <span id="span_cnt_available_din">0</span>개</div>
									</li>
								</ul>
								<!-- 예약없음 팝업 -->
								<div class="calendar-tool">
									<p class="close"><img src="<%=Application("img_path_russel")%>/myinfo/fns/cal_tool_close.png" alt="닫기" /></p>
									<p>해당 일에 예약이 없습니다. <br>상단의 <span>예약하기</span>를 통해 예약을 진행해주세요.</p>
									<a href="" class="btn-calendar-tool">예약하기</a>
								</div>
								<!-- //예약없음 팝업 -->
								<div id="calendar">

								</div>
								<div class="reserve-wrap">
									<div class="tit no-1 reserve-step"><strong>STEP1</strong> <span>|&nbsp;&nbsp;</span>식사 날짜 선택 <span>예약하고자 하는 식사 시간을 선택해주세요. </span></div>
									<div class="tit no-3 reserve-cancel"><strong>STEP1</strong> <span>|&nbsp;&nbsp;</span>취소 날짜 선택 <span>아래의 캘린더에서 취소 하고자 하는 날짜를 클릭하여 추가해주세요.</span></div>
									<div class="info">
										<div class="right">
											<a href="" class="day_btn">날짜/시간 한번에 추가하기<span><img src="https://russeldata.megastudy.net/campus/images/russel/mypage/fns/day_btn.jpg" alt="추가" /></span></a>
											<ul class="day">
											</ul>
											<p>선택 된 식사 : <span class="selected_cnt">0</span> / 예약 가능식권 : <span class="ticket_cnt">0</span></p>

										</div>
									</div>
									<div class="tit no-2 reserve-step"><strong>STEP2</strong> <span>|&nbsp;&nbsp;</span>시간 및 층수 선택 <span>예약 상세 설정을 선택해주세요.</span></div>
									<div class="tit no-4 reserve-cancel"><strong>STEP2</strong> <span>|&nbsp;&nbsp;</span>취소 시간 선택 <span>취소하고자 하는 식사 시간을 선택해주세요.</span></div>
									<div class="info no-1">
										<ul class="food">
											<li>· 식사 선택</li>
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

									<a href="" class="close"><img src="<%=Application("img_path_russel")%>/myinfo/fns/cal_btn_close.png" alt="닫기" /></a>

								</div>
							</div>
							<div class="title-wrap reserve-title">
									<p class="info">온라인 식권은 구매한 달에만 예약 및 소진이 가능하며, <span>예약은 영업일 기준 <strong>3일후</strong>의 식사부터 예약/취소</span>가 가능합니다.</p>
								</div>
						</div>
						<script>

							$(function(){
								$('.guide-btn').on('click', function(e){
									e.preventDefault();
									$('.guide').addClass('on').show();

									initSwiper();
								});
								$('.guide .close').on('click', function(){
									$('.guide').removeClass('on').hide();
								});

								$('.guide-tab .tab_btn').on('click', function(e){
									e.preventDefault();
									var idx = $(this).index();
									var con = $('.guide-con-wrap').children('.guide-con');

									$(this).addClass('on').siblings().removeClass('on');
									con.removeClass('on')
									con.eq(idx).addClass('on');
								});
								$('.title-wrap .res-cancel').on('click', function(e){
									e.preventDefault();
									$('select[name=V_TICKET_INFO]').change();
									$('.refund_pop').addClass('fix').show();
								});
								$('.reserve-wrap .day_btn').on('click', function(e){
									e.preventDefault();
									getDate_list(iYear, iMonth);
								});
								$('.popup .pop-close').on('click', function(e){
									e.preventDefault();
									$('.popup').removeClass('fix').hide();

									$('.selected_cnt').html($('input[name=V_MEAL_LUN][value=Y]').length + $('input[name=V_MEAL_DIN][value=Y]').length)
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

									// 기존 선택한 날짜 모두 삭제
									initSelDate();
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

									$('input[name=V_MOD]').val("C");
								});

								// 날짜 한번에 추가하기 - 전체선택
								$('input[name=V_LIST_LUN_ALL').on('change', function(){
									if ($('input[name=V_LIST_LUN_ALL]').is(':checked')) {
										$('input[name=V_LIST_LUN]').not($('.calendar-scroll tr[class*=disabled]').find('input[name=V_LIST_LUN]')).not(':disabled').prop('checked', true);
									} else {
										$('input[name=V_LIST_LUN]').not($('.calendar-scroll tr[class*=disabled]').find('input[name=V_LIST_LUN]')).not(':disabled').prop('checked', false);
									}

									$('.selected_cnt').html($('input[name=V_LIST_LUN]:checked').length + $('input[name=V_LIST_DIN]:checked').length)
									$('.imgCheck').imgCheck();
								});

								$('input[name=V_LIST_DIN_ALL').on('change', function(){
									if ($('input[name=V_LIST_DIN_ALL]').is(':checked')) {
										$('input[name=V_LIST_DIN]').not($('.calendar-scroll tr[class*=disabled]').find('input[name=V_LIST_DIN]')).not(':disabled').prop('checked', true);
									} else {
										$('input[name=V_LIST_DIN]').not($('.calendar-scroll tr[class*=disabled]').find('input[name=V_LIST_DIN]')).not(':disabled').prop('checked', false);
									}

									$('.selected_cnt').html($('input[name=V_LIST_LUN]:checked').length + $('input[name=V_LIST_DIN]:checked').length)
									$('.imgCheck').imgCheck();
								});
							});
						</script>
						<!-- //fns -->
					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- #include virtual = "/include/footer.asp" -->
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
			<a href="#" class="pop-close"><img src="<%=Application("img_path_russel")%>/myinfo/fns/popup_close.png" alt="닫기" /></a>
		</div>
		<div class="info">
			<div class="info-title">
				<h3 class="title">예약 리스트</h3>
				<p class="pos-r">선택 된 식사 : <span class="selected_cnt">0</span> / 예약 가능식권 : <span class="ticket_cnt">0</span></p>
			</div>

			<table>
				<colgroup>
					<col width="30%">
					<col width="20%">
					<col width="20%">
					<col width="30%">
				</colgroup>
				<thead>
					<tr>
						<th>날짜</th>
						<th>중식 <span class="imgCheck"><input type="checkbox" title="선택" name="V_LIST_LUN_ALL" ></span></th>
						<th>석식 <span class="imgCheck"><input type="checkbox" title="선택" name="V_LIST_DIN_ALL" ></span></th>
						<th>비고</th>
					</tr>
				</thead>
			</table>
			<div class="calendar-scroll">

			</div>
			<div class="pop-btnWrap">
				<a href="#" class="cancel pop-close">취소하기</a>
				<a href="javascript:;" class="pay" onclick="javascript:addDateList()">추가하기</a>
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
			<a href="#" class="pop-close"><img src="<%=Application("img_path_russel")%>/myinfo/fns/popup_close.png" alt="닫기" /></a>
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
								<select name="V_TICKET_INFO" onchange="javascript:setV_SET_CD(this);" class="w100"><%
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
								<img src="<%=Application("img_path_russel")%>/myinfo/fns/pop_refund.png" alt="빼기" />
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
										strSQL = strSQL & " SELECT RA_BANK_CD, RA_RCV_NM, dbo.UF_GET_Decode(RA_ACCT_NUM) as RA_ACCT_NUM FROM AMS_REF_ACCT (NOLOCK) WHERE RA_MEM_CD = '" & nRmsMemCd & "' AND RA_USE_YN = 'Y' ORDER BY RA_REG_DT DESC "
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
