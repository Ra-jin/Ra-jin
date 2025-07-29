<!DOCTYPE html>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<html lang="ko">
<head>	
	<!-- #include virtual = "/Textbook/include/m_head.asp" -->
</head>
<body>
<div class="sub-wrap">
	<!-- header -->	
	<!-- #include virtual = "/Textbook/include/m_header.asp" -->
	<!-- //header -->

	<!-- content-wrap -->
	<div class="content-wrap">
		<!-- tab-box -->
		<div class="tab-box">
			<a href="#">식권 결제 현황</a>
			<a href="#" class="on">식수 예약프로그램</a>
		</div>
		<!-- //tab-box -->

		<!-- list-box -->
		<div class="list-box">
			<div class="title-wrap">
				<p class="stxt">예약현황 (<strong>4</strong>건 예약중)</p>
				<div class="select-box cal-select">
					<select name="" id="">
						<option value="">10월 바자관 식권 : 잔여 1</option>
					</select>
				</div>
				<p class="info">온라인 식권은 구매한 달에만 예약 및 소진이 가능하며, <span>예약은 오늘 기준 <strong>3일후</strong>의 식사부터 예약/취소</span>가 가능합니다.</p>
			</div>
			<!-- fns -->
			<div class="fns">							
				<div class="fns-cal">
					<div class="btn-type02">
						<a href="" class="blue btn-reserve">예약하기</a>
						<a href="" class="black btn-cancel">취소하기</a>
					</div>
					<div class="reserve-wrap">
						<p class="no-1">층수와 식사를 선택 후 캘린더에서 <span>예약하고자 하는 날짜</span>를 선택해주세요.</p>
						<p class="no-2">식사를 선택 후 캘린더에서 <span>취소하고자 하는 날짜</span>를 선택해주세요.</p>
						<a href="" class="close"><img src="<%=Application("img_path_russel")%>/mypage/fns/btn_close.png" alt="닫기" /></a>
						<div class="select-box">
							<select name="" id="reserve_floor">
								<option value="">예약 층수 선택</option>
							</select>								
						</div>
						<div class="btn-wrap">
							<a href="#" class="lunch on"><span></span>중식</a>
							<a href="#" class="dinner"><span></span>석식</a>
						</div>								
						<div class="rice-list">
							<ul>
								<li>10-25 <button><img src="<%=Application("img_path_russel")%>/mypage/fns/btn_cal_del.gif" alt="삭제" /></button></li>
								<li>10-26 <button><img src="<%=Application("img_path_russel")%>/mypage/fns/btn_cal_del.gif" alt="삭제" /></button></li>
								<li>10-27 <button><img src="<%=Application("img_path_russel")%>/mypage/fns/btn_cal_del.gif" alt="삭제" /></button></li>
								<li>10-28 <button><img src="<%=Application("img_path_russel")%>/mypage/fns/btn_cal_del.gif" alt="삭제" /></button></li>
								<li>10-29 <button><img src="<%=Application("img_path_russel")%>/mypage/fns/btn_cal_del.gif" alt="삭제" /></button></li>
							</ul>							
						</div>						
						<a href="" class="btn-type01">선택완료</a>
						
						
					</div>
					<div class="cal-top">
						<span class="no-1">소진완료</span>
						<span class="no-2">취소불가</span>
						<span class="no-3">예약완료(취소가능)</span>
					</div>
					<div class="cal-month">
						<button class="prev">전달</button>
						<p>10월</p>
						<button class="next">다음달</button>
					</div>
					<table>
						<colgroup>
							<col width="*">
							<col width="14.28%">
							<col width="14.28%">
							<col width="14.28%">
							<col width="14.28%">
							<col width="14.28%">
							<col width="14.28%">
						</colgroup>
						<thead>
							<tr>
								<th class="sunday">일</th>
								<th>월</th>
								<th>화</th>
								<th>수</th>
								<th>목</th>
								<th>금</th>
								<th>토</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="sunday day-prev">
									<div>
										<p>9/30</p>
										<span>휴무</span>
									</div>
								</td>
								<td class="day-prev">
									<div>
										<p>1</p>
										<span>중식</span><br>
										<span>석식</span>
									</div>												
								</td>
								<td class="day-prev">
									<div>
										<p>2</p>
										<span>중식</span><br>
										<span>석식</span>
									</div>												
								</td>											
								<td class="sunday day-prev">
									<div>
										<p>3</p>
										<span>휴무</span><br>
										<span>(개천절)</span>
									</div>												
								</td>											
								<td class="day-prev">
									<div>
										<p>4</p>
										<span>중식</span><br>
										<span>석식</span>
									</div>												
								</td>
								<td class="day-prev">
									<div>
										<p>5</p>
										<span>중식</span><br>
										<span>석식</span>
									</div>												
								</td>
								<td class="day-prev">
									<div>
										<p>6</p>
										<span>중식<img src="<%=Application("img_path_russel")%>/mypage/fns/icon_gray_circle.png" /></span><br>
										<span>석식<img src="<%=Application("img_path_russel")%>/mypage/fns/icon_gray_circle.png" /></span>
									</div>												
								</td>
							</tr>
							<tr>
								<td class="sunday day-prev">
									<div>
										<p>7</p>
										<span>휴무</span>
									</div>												
								</td>
								<td class="day-prev">
									<div>
										<p>8</p>
										<span>중식<img src="<%=Application("img_path_russel")%>/mypage/fns/icon_gray_circle.png" /></span><br>
										<span>석식</span>
									</div>												
								</td>
								<td class="sunday day-prev">
									<div>
										<p>9</p>
										<span>휴무</span><br>
										<span>(한글날)</span>
									</div>												
								</td>
								<td class="day-prev">
									<div>
										<p>10</p>
										<span>중식<img src="<%=Application("img_path_russel")%>/mypage/fns/icon_gray_circle.png" /></span><br>
										<span>석식</span>
									</div>												
								</td>
								<td class="day-prev">
									<div>
										<p>11</p>
										<span>중식</span><br>
										<span>석식</span>
									</div>												
								</td>
								<td class="day-prev">
									<div>
										<p>12</p>
										<span>중식</span><br>
										<span>석식</span>
									</div>												
								</td>
								<td class="day-prev">
									<div>
										<p>13</p>
										<span>중식</span><br>
										<span>석식</span>
									</div>												
								</td>
							</tr>
							<tr>
								<td class="sunday day-prev">
									<div>
										<p>14</p>
										<span>휴무</span>
									</div>												
								</td>		
								<td class="day-prev">
									<div>
										<p>15</p>
										<span>중식</span><br>
										<span>석식</span>
									</div>												
								</td>		
								<td class="day-prev">
									<div>
										<p>16</p>
										<span>중식</span><br>
										<span>석식</span>
									</div>												
								</td>
								<td>
									<div class="today cancel">
										<p>17</p>
										<span>중식<img src="<%=Application("img_path_russel")%>/mypage/fns/icon_red_circle.png" /></span><br>
										<span>석식</span>
									</div>												
								</td>
								<td>
									<div class="cancel">
										<p>18</p>
										<span>중식<img src="<%=Application("img_path_russel")%>/mypage/fns/icon_red_circle.png" /></span><br>
										<span>석식<img src="<%=Application("img_path_russel")%>/mypage/fns/icon_red_circle.png" /></span>
									</div>												
								</td>	
								<td>
									<div class="cancel">
										<p>19</p>
										<span>중식<img src="<%=Application("img_path_russel")%>/mypage/fns/icon_red_circle.png" /></span><br>
										<span>석식</span>
									</div>												
								</td>
								<td>
									<div>
										<p>20</p>
										<span>중식</span><br>
										<span>석식</span>
									</div>												
								</td>
							</tr>
							<tr>
								<td class="sunday">
									<div>
										<p>21</p>
										<span>휴무</span>
									</div>												
								</td>
								<td>
									<div>
										<p>22</p>
										<span>중식<img src="<%=Application("img_path_russel")%>/mypage/fns/icon_blue_circle.png" /></span><br>
										<span>석식</span>
									</div>
									<div class="tool">													
										<p>22</p>
										<p class="close"><img src="<%=Application("img_path_russel")%>/mypage/fns/cal_tool_close.png" /></p>
										<span>중식(3층)</span><br>
										<span>석식(3층)</span>
									</div>
								</td>
								<td>
									<div>
										<p>23</p>
										<span>중식<img src="<%=Application("img_path_russel")%>/mypage/fns/icon_blue_circle.png" /></span><br>
										<span>석식<img src="<%=Application("img_path_russel")%>/mypage/fns/icon_blue_circle.png" /></span>
									</div>
									<div class="tool">													
										<p>23</p>
										<p class="close"><img src="<%=Application("img_path_russel")%>/mypage/fns/cal_tool_close.png" /></p>
										<span>중식(3층)</span><br>
										<span>석식(3층)</span>
									</div>
								</td>
								<td>
									<div>
										<p>24</p>
										<span>중식</span><br>
										<span>석식</span>
									</div>
									
								</td>
								<td>
									<div>
										<p>25</p>
										<span>중식</span><br>
										<span>석식</span>
									</div>
								</td>
								<td>
									<div>
										<p>26</p>
										<span>중식<img src="<%=Application("img_path_russel")%>/mypage/fns/icon_blue_circle.png" /></span><br>
										<span>석식</span>
									</div>
									<div class="tool">													
										<p>24</p>
										<p class="close"><img src="<%=Application("img_path_russel")%>/mypage/fns/cal_tool_close.png" /></p>
										<span>중식(3층)</span><br>
										<span>석식(3층)</span>
									</div>
								</td>
								<td>
									<div>
										<p>27</p>
										<span>중식</span><br>
										<span>석식</span>
									</div>												
								</td>	
							</tr>
							<tr>
								<td class="sunday">
									<div>
										<p>28</p>
										<span>휴무</span>
									</div>												
								</td>
								<td>
									<div>
										<p>29</p>
										<span>중식</span><br>
										<span>석식</span>
									</div>												
								</td>
								<td>
									<div>
										<p>30</p>
										<span>중식</span><br>
										<span>석식</span>
									</div>												
								</td>
								<td>
									<div>
										<p>31</p>
										<span>중식</span><br>
										<span>석식</span>
									</div>												
								</td>
								<td class="day-next">
									<div>
										<p>1</p>												
									</div>												
								</td>
								<td class="day-next">
									<div>
										<p>2</p>													
									</div>												
								</td>
								<td class="day-next">
									<div>
										<p>3</p>													
									</div>												
								</td>	
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<script>
				$(function(){
					//툴팁
					$('.fns table td > div:nth-child(1)').on('click', function(){
						$('.tool').hide();
						$(this).next('.tool').show().parents('table').addClass('on');
					});
					$('.tool .close').on('click', function(){									
						$('.tool').hide();
						$(this).parents('table').removeClass('on');
					});

					//예약하기 - 중식,석식 선택
					$('.reserve-wrap .btn-wrap a').on('click', function(e){
						e.preventDefault();
						$(this).addClass('on');
						$(this).siblings().removeClass('on');
					});
					//예약하기 - 날짜 삭제
					$('.reserve-wrap .rice-list li button').on('click', function(){
						$(this).parent('li').remove();
					});
					$('.btn-reserve').on('click', function(e){
						e.preventDefault();
						$('.reserve-wrap').show();
						$('.reserve-wrap p.no-2').hide().prev('p.no-1').show();
						$(this).parents('.btn-type02').hide();
						$("#reserve_floor").attr('disabled', false); // or false
					});
					$('.reserve-wrap .close').on('click', function(e){
						e.preventDefault();
						$(this).parents('.reserve-wrap').hide().prev('.btn-type02').show();
					});
					$('.btn-cancel').on('click', function(e){
						e.preventDefault();
						$('.reserve-wrap').show();
						$('.reserve-wrap p.no-1').hide().next('p.no-2').show();
						$(this).parents('.btn-type02').hide();
						$("#reserve_floor").attr('disabled', true); // or false
					});
				});
			</script>
			<!-- //fns -->
			
				
			
		</div>
		<!-- //list-box -->
	</div>
	<!-- //content-wrap -->
</div>
</body>
</html>