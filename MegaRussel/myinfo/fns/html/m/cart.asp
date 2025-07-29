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
			<a href="shop.asp" class="on">식권 결제 현황</a>
			<a href="cart.asp">식수 예약프로그램</a>
		</div>
		<!-- //tab-box -->

		<!-- list-box -->
		<div class="list-box">
			<p class="stxt">구매가능 식권(<strong>5</strong>건 구매가능)</p>
			<table>
				<colgroup>
					<col style="width:*;" />
					<col style="width:35%;" />
					<col style="width:20%;" />
				</colgroup>
				<thead>
					<tr>
						<th>상품명</th>
						<th>수량</th>
						<th>금액</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="pro">
							<p>9월 바자관 식권 (1회)</p>
						</td>
						<td>
							<div class="count-box">
								<label for=""><input type="text" name="" id=""></label>
								<button><img src="<%=Application("img_path_russel")%>/mypage/fns/m/count_up.png" /></button>
								<button><img src="<%=Application("img_path_russel")%>/mypage/fns/m/count_down.png" /></button>
							</div>
						</td>
						<td><strong class="price">20,000</strong>원</td>
					</tr>
					<tr>
						<td class="pro">
							<p>길이테스트 길이테스트 길이테스트 </p>
						</td>
						<td>
							<div class="count-box">
								<label for=""><input type="text" name="" id=""></label>
								<button><img src="<%=Application("img_path_russel")%>/mypage/fns/m/count_up.png" /></button>
								<button><img src="<%=Application("img_path_russel")%>/mypage/fns/m/count_down.png" /></button>
							</div>
						</td>
						<td><strong class="price">20,000</strong>원</td>
					</tr>
				</tbody>
			</table>
			<div class="notice-box notice-box2 bdt-none">
				<p>※ 구매전 주의사항</p>
				<ul>
					<li>구매한 달의 식권을 반드시 소진 하셔야 합니다. <br> ex) 9월 식권 10월 예약불가 </li>
				</ul>
   
			</div>
			<!-- total-box -->
			<div class="total-box">
				<p>총 구매수량 <strong>2</strong>건</p>
				<p>구매금액 <strong>33,000</strong>원</p>
			</div>
			<!-- //total-box -->
			<div class="payment_L">
				<input type="radio" id="payment_a" /><label for="payment_a">신용 카드</label>
				<input type="radio" id="payment_b" /><label for="payment_b">실시간 계좌 이체</label>
			</div>
			<div class="btn-type02">
				<a href="#" class="gray">취소하기</a>
				<a href="#" class="blue">결제하기</a>
			</div>
		</div>
		<!-- //list-box -->
	</div>
	<!-- //content-wrap -->
</div>
</body>
</html>