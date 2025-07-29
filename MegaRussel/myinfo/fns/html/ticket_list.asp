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
</head>
<body>
<div class="wrap">
	<header class="sub">
        <a href="/index.asp" class="btnPrev">식권결제</a>
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
			<li class="campus">러셀 대치 재원중</li>
		</ul>
        <a href="javascript:void(0);" onclick="javascript:location.href='<%=header_addr2%>/russel/member/logout.asp?rtnUrl=<%=header_addr2%>';" class="btnClose btnLogout">로그아웃</a>
	</header>
	<section class="sub">
		<div class="inBox">
			<div class="tabCommon">
				<ul class="tabList">
					<li class="on"><a href="cart.asp">식권 보유 현황</a></li>
					<li><a href="calendar.asp">식수 예약프로그램</a></li>
				</ul>
				<div class="tabCon">
					<!-- tabConList -->
					<div class="tabConList">
						<h2 class="blind">식권현황</h2>
						<div class="title-wrap">
							<h3 class="title">식권현황</h3>							
						</div>
						<div class="tableType">
							<table summary="">
								<caption></caption>
								<colgroup>
									<col width="33.3%">
									<col width="33.3%">
									<col width="*">
								</colgroup>
								<thead>
									<tr>
										<th>식권 잔량</th>
										<th>예약된 식권</th>
										<th>소진된 식권</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><span class="big-num">0</span></td>
										<td><span class="big-num">22</span></td>
										<td><span class="big-num gray">58</span></td>
									</tr>
								</tbody>
							</table>							
						</div>
						<div class="payment-btn-wrap">
							<a href="#" class="cancel">환불신청</a>
							<a href="#" class="payment">식권 추가결제</a>
						</div>
						<!-- 환불신청 팝업 -->
						<div class="popup">
							<div class="dim-bg"></div>
							<div class="popup-wrap">							
								<div class="title-wrap">
									<p class="tit">환불신청</p>
									<a href="#" class="pop-close"><img src="<%=Application("img_path_russel")%>/mypage/fns/popup_close.png" alt="닫기" /></a>
								</div>
								<div class="info">
									<p class="sub-txt">환불신청을 진행할 건수를 입력해주세요.</p>
									<div class="pop-tableWrap">
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
														<select name="" id="">
															<option value="">9월 바자관 식권 : 잔여 1</option>
														</select>	
													</td>
												</tr>
												<tr>
													<th>환불신청</th>
													<td>
													<div class="pop-refund">
														현재보유잔량 <span>38</span>
														<img src="<%=Application("img_path_russel")%>/mypage/fns/pop_refund.png" alt="빼기" />
														환불 신청건수 <label><input type="text" name="" id=""/></label>
													</div></td>
												</tr>
												<tr>
													<th>환불계좌</th>
													<td>
														<div class="input-wrap">
															<select name="" id="">
																<option value="">신한은행</option>
															</select>
															<label><input type="text" name="" id="" class="no-1"></label>
															<label><input type="text" name="" id="" class="no-2"></label>
														</div>
													</td>
												</tr>
												<tr>
													<td colspan="2" class="pop-totalPayment">
														<span>1개 기준단가 = 5,300원</span>
														<p>환불예상금액 <span>10,600</span>원</p>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="pop-btnWrap">
										<a href="#" class="cancel">취소</a>
										<a href="#" class="pay">환불신청</a>
									</div>
									<ul class="txt-list">
										<li>· 환불계좌정보를 오기입력한 경우 환불이 취소될 수 있습니다.</li>
										<li>· 계좌환불 소요일은 약 7일이며, 회사 사정상 다소 지연될 수 있습니다.</li>
									</ul>
								</div>
							</div>
						</div>
						<!-- //환불신청 팝업 -->
						<div class="title-wrap">
							<h3 class="title">결제 현황</h3>
							<a href="" class="pos-r add">더보기</a>
						</div>
						<div class="tableType">
							<table summary="">
								<caption></caption>
								<colgroup>
									<col width="20%">
									<col width="*">
									<col width="20%">
									<col width="15%">
								</colgroup>
								<thead>
									<tr>
										<th>식권 잔량</th>
										<th>상품명</th>
										<th>결제액</th>
										<th>충전</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1919-09-18</td>
										<td><strong>9월 바자관 식권(1회)</strong></td>
										<td class="price"><strong>5,300</strong></td>
										<td>1</td>
									</tr>
									<tr>
										<td>1919-09-18</td>
										<td><strong>9월 바자관 식권(1회)</strong></td>
										<td class="price"><strong>5,300</strong></td>
										<td>1</td>
									</tr>
									<tr>
										<td>1919-09-18</td>
										<td><strong>9월 바자관 식권(1회)</strong></td>
										<td class="price"><strong>5,300</strong></td>
										<td>1</td>
									</tr>
								</tbody>
							</table>							
						</div>
						<div class="title-wrap">
							<h3 class="title">환불 신청 중</h3>
							<a href="" class="pos-r add">더보기</a>
						</div>
						<div class="tableType">
							<table summary="">
								<caption></caption>
								<colgroup>
									<col width="20%">
									<col width="*">
									<col width="13%">
									<col width="15%">
									<col width="13%">
								</colgroup>
								<thead>
									<tr>
										<th>환불신청일</th>
										<th>환불계좌</th>
										<th>신청 수량</th>
										<th>환불 신청 금액</th>
										<th>비고</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1919-09-18</td>
										<td><strong>신한은행(박지선) 110-359-322</strong></td>
										<td class="price"><strong>-2</strong></td>
										<td class="price"><strong>10,300</strong></td>
										<td>신청중</td>
									</tr>
									<tr>
										<td>1919-09-18</td>
										<td><strong>신한은행(박지선) 110-359-322</strong></td>
										<td class="price"><strong>-2</strong></td>
										<td class="price"><strong>10,300</strong></td>
										<td>신청중</td>
									</tr>
									<tr>
										<td>1919-09-18</td>
										<td><strong>신한은행(박지선) 110-359-322</strong></td>
										<td class="price"><strong>-2</strong></td>
										<td class="price"><strong>10,300</strong></td>
										<td>신청중</td>
									</tr>
								</tbody>
							</table>							
						</div>
						<p class="table-bottom-text">※ 환불내역은 최대 6개월까지만 제공됩니다.</p>
					</div>
					<!-- //tabConList -->
					<script>
							$(function(){
								$('.payment-btn-wrap').on('click', function(e){
									e.preventDefault();
									$('.popup').show();
								});
								$('.popup .pop-close').on('click', function(e){
									e.preventDefault();
									$('.popup').hide();
								});
								
							});
						</script>
					
				</div>
			</div>
		</div>
	</section>
</div>
</body>
</html>
