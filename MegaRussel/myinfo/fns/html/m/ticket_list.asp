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
			<p class="stxt">식권 현황</p>
			<table>
				<colgroup>
					<col style="width:33.3%;" />
					<col style="width:33.3%;" />
					<col style="*;" />
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
						<td><p class="txt-big txt-blue">24</p></td>
						<td><p class="txt-big txt-blue">35</p></td>
						<td><p class="txt-big txt-gray">54</p></td>
					</tr>
				</tbody>
			</table>
			<div class="btn-type02">
				<a href="#" class="gray">환불 취소</a>
				<a href="#" class="blue">환불 신청</a>
			</div>
			<div class="title-wrap">
				<p class="stxt">결제현황</p>
				<a href="" class="pos-r add-btn">더보기</a>
			</div>
			<table>
				<colgroup>
					<col style="width:20%;" />
					<col style="width:*;" />
					<col style="width:20%" />
					<col style="width:10%;" />
				</colgroup>
				<thead>
					<tr>
						<th>결제일</th>
						<th>상품명</th>
						<th>결제액</th>
						<th>충전</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>09-08</td>
						<td class="pro"><p>9월 바자관 식권(1회)</p></td>
						<td><strong class="price">2,300</strong></td>
						<td>1</td>
					</tr>
					<tr>
						<td>09-08</td>
						<td class="pro"><p>9월 바자관 식권(1회)</p></td>
						<td><strong class="price">2,300</strong></td>
						<td>1</td>
					</tr>
				</tbody>
			</table>
			<div class="title-wrap">
				<p class="stxt">환불내역</p>
				<a href="" class="pos-r add-btn">더보기</a>
			</div>
			<table>
				<colgroup>
					<col style="width:20%;" />
					<col style="width:*;" />
					<col style="width:15%" />
					<col style="width:20%;" />
				</colgroup>
				<thead>
					<tr>
						<th>신청일</th>
						<th>환불계좌</th>
						<th>수량</th>
						<th>신청금액</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>09-08 <span class="ing-btn gray">신청중</span></td>
						<td class="pro"><p>신한은행(박지선) 110-359-322</p></td>
						<td><strong class="price">-2</strong></td>
						<td><strong class="price">2,300</strong></td>
					</tr>
					<tr>
						<td>09-08 <span class="ing-btn gray">신청중</span></td>
						<td class="pro"><p>신한은행(박지선) 110-359-322</p></td>
						<td><strong class="price">-2</strong></td>
						<td><strong class="price">2,300</strong></td>
					</tr>
				</tbody>
			</table>
			<p class="table-bottom">※ 환불내역은 최대 6개월까지만 제공됩니다.</p>
		</div>
		<!-- //list-box -->
	</div>
	<!-- //content-wrap -->
</div>
</body>
</html>