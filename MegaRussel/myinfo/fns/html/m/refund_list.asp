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
			<a href="#">결제현황</a>
			<a href="#">소진현황</a>
			<a href="#" class="on">환불현황</a>
		</div>
		<!-- //tab-box -->

		<!-- list-box -->
		<div class="list-box">
			<p class="stxt">환불 신청 중</p>			
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
			<p class="stxt">환불현황</p>			
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
						<td>09-08 <span class="ing-btn blue">완료</span></td>
						<td class="pro"><p>신한은행(박지선) 110-359-322</p></td>
						<td><strong class="price">-2</strong></td>
						<td><strong class="price">2,300</strong></td>
					</tr>
					<tr>
						<td>09-08 <span class="ing-btn blue">완료</span></td>
						<td class="pro"><p>신한은행(박지선) 110-359-322</p></td>
						<td><strong class="price">-2</strong></td>
						<td><strong class="price">2,300</strong></td>
					</tr>
					<tr>
						<td>09-08 <span class="ing-btn blue">완료</span></td>
						<td class="pro"><p>신한은행(박지선) 110-359-322</p></td>
						<td><strong class="price">-2</strong></td>
						<td><strong class="price">2,300</strong></td>
					</tr>
					<tr>
						<td>09-08 <span class="ing-btn blue">완료</span></td>
						<td class="pro"><p>신한은행(박지선) 110-359-322</p></td>
						<td><strong class="price">-2</strong></td>
						<td><strong class="price">2,300</strong></td>
					</tr>
				</tbody>
			</table>
			<div class="addBtn-wrap"><a href="" class="tableBottom-addBtn"><span>더보기</span></a></div>	
		</div>
		<!-- //list-box -->
	</div>
	<!-- //content-wrap -->
</div>
</body>
</html>