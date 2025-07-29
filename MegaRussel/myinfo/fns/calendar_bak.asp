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

					$('.fns table td > div:nth-child(1)').on('click', function(){
						if($('.reserve-wrap').is(':visible') == true ){  
							var day = '00' + $(this).children('p').html();
							day = day.substring(day.length, day.length-2)
							
							var newNode = $('<li>' + month + '-' + day + ' <button><img src="<%=Application("img_path_russel")%>/mypage/fns/btn_cal_del.gif" alt="삭제" /></button></li>');
							$(newNode).append('<input type="hidden" name="V_RESERVATION_DAY" value="' + year + '-' + month + '-' + day + '" />');

							if ($('input[name=V_MOD]').val() == "R") {
								// 예약하기
								if ($(this).parent('TD').hasClass('day-prev')) { alert("예약 가능한 날짜가 아닙니다."); return; }
								if ($(this).children('span').length == 0) { alert("예약 가능한 날짜가 아닙니다."); return; }
								if ($(this).children('span').length == 1 && $(this).children('span').hasClass('holiday')) { alert("예약 가능한 날짜가 아닙니다."); return; }

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
								if ($(this).children('span').length == 1 && $(this).children('span').hasClass('holiday')) { alert("취소 가능한 날짜가 아닙니다."); return; }

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

							$('.reserve-wrap .right ul').append(newNode);

							//예약, 취소 - 날짜 삭제
							$('.reserve-wrap .right li button').on('click', function(){
								$(this).parent('li').remove();
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
						$(this).parents('table').removeClass('on');
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
						}
						else {
							$('input[name=V_SET_CD]').val(arrTICKET_SET_CD[0]);
							$('input[name=V_TICKET_CNT]').val(arrTICKET_SET_CD[1]);
						}

						$('.reserve-wrap .right ul').empty();
					});

					$('select[name=V_TICKET_SET_CD]').change();
					return true;
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
strSQL = strSQL & " AND			(CONVERT(CHAR(6), B.CL_LEC_SDT, 112) <= '" & sYear & sMonth & "' AND CONVERT(CHAR(6), B.CL_LEC_EDT, 112) >= '" & sYear & sMonth & "') "
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
					<li><a href="ticket_list.asp">식권 현황</a></li>
					<li class="on"><a href="calendar.asp">급식예약</a></li>
				</ul>
				<div class="tabCon">
					<div class="tabConList on">
						<h2 class="blind">식권결제</h2>
						<div class="title-wrap">
							<h3 class="title">예약현황 (<strong id="cnt_reservation" class="blue">4</strong>건 예약중) | 잔여식권 
								<span id="span_ticket">
								</span>
							</h3>
							<p class="info">온라인 식권은 구매한 달에만 예약 및 소진이 가능하며, <span>예약은 오늘 기준 <strong>3일후</strong>의 식사부터 예약/취소</span>가 가능합니다.</p>
						</div>
						<!-- fns -->
						<div class="fns">							
							<div class="fns-cal">
								<ul class="cal-top">
									<li class="left">
										<span class="no-1">소진완료</span>
										<span class="no-2">취소불가</span>
										<span class="no-3">예약완료(취소가능)</span>
									</li>
									<li class="mid">
										<button type="button" class="prev" onclick="javascript:preMonth();">전달</button>
										<p id="calender_title"><%=sMonth%>월</p>
										<button type="button" class="next" onclick="javascript:nextMonth();">다음달</button>
									</li>
									<li class="right">
										<a href="" class="no-1 btn-reserve">예약하기</a>
										<a href="" class="no-2 btn-cancel">취소하기</a>
									</li>									
								</ul>
								<div class="reserve-wrap">
									<p class="no-1">층수와 식사를 선택 후 캘린더에서 <span>예약하고자 하는 날짜</span>를 선택해주세요.</p>
									<p class="no-2">식사를 선택 후 캘린더에서 <span>취소하고자 하는 날짜</span>를 선택해주세요.</p>
									<a href="" class="close"><img src="<%=Application("img_path_russel")%>/mypage/fns/btn_close.png" alt="닫기" /></a>
									<div class="info">
										<div class="left">
											<select name="V_LOC_CD" id="reserve_floor">
												<option value="">예약 층수 선택</option>
												<% for i=1 to 10 %>
													<option value="<%=i%>"><%=i%></option>
												<% next %>
											</select>
											<a href="#" class="no-1">중식</a>
											<a href="#" class="no-2">석식</a>
										</div>
										<div class="right">
											<ul>
											</ul>
											<a href="javascript:;" onclick="javascript:doReservation();">선택완료</a>
										</div>
									</div>
								</div>
								<!-- 예약없음 팝업 -->
								<div class="calendar-tool">
									<p class="close"><img src="<%=Application("img_path_russel")%>/mypage/fns/cal_tool_close.png" alt="닫기" /></p>
									<p>해당 일에 예약이 없습니다. <br>상단의 예약하기를 통해 예약을 진행해주세요.</p>
								</div>
								<!-- //예약없음 팝업 -->
								<div id="calendar">
									
								</div>
							</div>
						</div>
						<script>
							$(function(){
								//예약하기 - 중식,석식 선택
								$('.reserve-wrap .left a').on('click', function(e){
									e.preventDefault();
									if ($(this).hasClass('on')) {
										$(this).removeClass('on');
										if ($(this).hasClass('no-1')) { $('input[name=V_MEAL_LUN]').val(''); }
										if ($(this).hasClass('no-2')) { $('input[name=V_MEAL_DIN]').val(''); }
									}
									else {
										$(this).addClass('on');
										if ($(this).hasClass('no-1')) { $('input[name=V_MEAL_LUN]').val('Y'); }
										if ($(this).hasClass('no-2')) { $('input[name=V_MEAL_DIN]').val('Y'); }
									}
								});

								$('.btn-reserve').on('click', function(e){
									e.preventDefault();

									if ($('input[name=V_TICKET_CNT]').val() <= 0 ) {
										if (confirm("잔여 식권이 없습니다.\n구매 페이지로 이동 하시겠습니까?")) {
											document.location.href = "cart.asp";
										}
										return;
									}

									$('.reserve-wrap').show().addClass('on');
									$('.title-wrap .info').hide();
									$('.reserve-wrap p.no-2').hide().prev('p.no-1').show();
									$(this).parents('.cal-top').hide();
									$("#reserve_floor").attr('disabled', false); // or false

									if ($('input[name=V_MOD]').val() != "R") {
										// 취소하기 상태에서 예약하기 상태로 변경 될 때, 기존 선택한 날짜 모두 삭제
										$('.reserve-wrap .right ul').empty()
									}
									$('input[name=V_MOD]').val("R");
								});
								$('.reserve-wrap .close').on('click', function(e){
									e.preventDefault();
									$('.title-wrap .info').show();
									$(this).parents('.reserve-wrap').hide().removeClass('on').prev('.cal-top').show();
								});
								$('.btn-cancel').on('click', function(e){
									e.preventDefault();
									$('.reserve-wrap').show();
									$('.title-wrap .info').hide();
									$('.reserve-wrap p.no-1').hide().next('p.no-2').show();
									$(this).parents('.cal-top').hide();
									$("#reserve_floor").attr('disabled', true); // or false

									if ($('input[name=V_MOD]').val() != "C") {
										// 예약하기 상태에서 취소하기 상태로 변경 될 때, 기존 선택한 날짜 모두 삭제
										$('.reserve-wrap .right ul').empty()
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
<input type="hidden" name="V_MEAL_LUN" value="" />
<input type="hidden" name="V_MEAL_DIN" value="" />
<input type="hidden" name="V_YEAR" value="" />
<input type="hidden" name="V_MONTH" value="" />

</form>
</body>
</html>
