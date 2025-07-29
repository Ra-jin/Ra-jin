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
			<a href="#" class="on">소진현황</a>
			<a href="#">환불현황</a>
		</div>
		<!-- //tab-box -->

		<!-- list-box -->
		<div class="list-box">
			<p class="stxt">소진현황</p>
			
			<table>
				<colgroup>
					<col style="width:20%;" />
					<col style="width:*;" />
					<col style="width:25%" />
					<col style="width:25%;" />
				</colgroup>
				<thead>
					<tr>
						<th>결제일</th>
						<th>소진내역</th>
						<th>증감내역</th>
						<th>잔여수량</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>09-08</td>
						<td>중식소진</td>
						<td><strong class="price">-1</strong></td>
						<td>1</td>
					</tr>
					<tr>
						<td>09-08</td>
						<td>중식소진</td>
						<td><strong class="price">-1</strong></td>
						<td>1</td>
					</tr>
					<tr>
						<td>09-08</td>
						<td>중식소진</td>
						<td><strong class="price">-1</strong></td>
						<td>1</td>
					</tr>
					<tr>
						<td>09-08</td>
						<td>중식소진</td>
						<td><strong class="price">-1</strong></td>
						<td>1</td>
					</tr>
					<tr>
						<td>09-08</td>
						<td>중식소진</td>
						<td><strong class="price">-1</strong></td>
						<td>1</td>
					</tr>
					<tr>
						<td>09-08</td>
						<td>중식소진</td>
						<td><strong class="price">-1</strong></td>
						<td>1</td>
					</tr>
					<tr>
						<td>09-08</td>
						<td>중식소진</td>
						<td><strong class="price">-1</strong></td>
						<td>1</td>
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