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
				<ul class="tabList no-2">
					<li class="on"><a href="pay_list.asp">결제현황</a></li>
					<li><a href="runOut.asp">소진현황</a></li>
					<li class="last"><a href="refund_list.asp">환불현황</a></li>
				</ul>
				<div class="tabCon">
					<div class="tabConList">
						<h2 class="blind">결제 현황</h2>
						<div class="title-wrap">
							<h3 class="title">결제 현황</h3>
							<p class="pos-r table-bottom-text">※ 결제내역은 최대 6개월까지만 제공됩니다.</p>
						</div>
						<div class="tableType">
							<table summary="">
								<caption></caption>
								<colgroup>
									<col width="20%">
									<col width="*">
									<col width="15%">
									<col width="15%">
								</colgroup>
								<thead>
									<tr>
										<th>결제일</th>
										<th>상품명</th>
										<th>결제액</th>
										<th>충전수량</th>
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
						<div class="center">
							<a href="" class="add-bottom">더보기</a>
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
