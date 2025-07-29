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
					<li class="on"><a href="cart.asp">식권 결제 현황</a></li>
					<li><a href="calendar.asp">식수 예약프로그램</a></li>
				</ul>
				<div class="tabCon">
					<div class="tabConList on">
						<h2 class="blind">식권결제</h2>
						<div class="title-wrap">
							<h3 class="title">구매가능 식권(<strong>2</strong>건 구매가능)</h3>							
						</div>
						<div class="tableType bdColor-gy">
							<table summary="">
								<caption></caption>
								<colgroup>
									<col width="8%">
									<col width="%">
									<col width="15%">
									<col width="20%">
								</colgroup>
								<thead>
									<tr>
										<th>선택</th>
										<th>상품명</th>
										<th>수량</th>
										<th>금액</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><span class="imgCheck"><input type="checkbox" title="선택" id="check_1"></span></td>
										<td class="con"><label for="check_1">9월 바자관 식권</label></td>
										<td>
											<div class="count">
												<input type="text" name="" id="" value="0">
												<button class="up"></button>
												<button class="down disabled"></button>
											</div>
										</td>
										<td class="price"><strong>5,300</strong>원</td>
									</tr>
									<tr>
										<td><span class="imgCheck"><input type="checkbox" title="선택" id="check_1"></span></td>
										<td class="con"><label for="check_1">9월 바자관 식권</label></td>
										<td>
											<div class="count">
												<input type="text" name="" id="" value="1">
												<button class="up"></button>
												<button class="down"></button>
											</div>
										</td>
										<td class="price"><strong>5,300</strong>원</td>
									</tr>
								</tbody>
							</table>							
						</div>
						<div class="important important2">
							<p>※ 구매전 주의사항</p>
							<ul>
								<li>· 구매한 달의 식권을 반드시 소진 하셔야 합니다.  ex) 9월 식권 10월 예약불가 </li>
							</ul>
						</div>
						<div class="totalInfo">
							<span>총 구매수량 <strong>2</strong>건</span><span>구매금액 <strong>33,000</strong>원</span>
						</div>
						<div class="paymentBox">
							<div class="payment_L">
								<input type="radio" id="payment_a"><label for="payment_a">신용 카드</label>
								<input type="radio" id="payment_b"><label for="payment_b">실시간 계좌 이체</label>
							</div>
							<div class="payment_R">
								<a href="#" class="cancel">취소</a>
								<a href="#" class="payment">결제하기</a>
							</div>
						</div>
					</div>
					<!-- //tabConList -->
				</div>
			</div>
		</div>
	</section>
</div>
</body>
</html>
