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
					<li><a href="pay_list.asp">결제현황</a></li>
					<li class="last"><a href="runOut.asp">소진현황</a></li>
					<li class="on"><a href="refund_list.asp">환불현황</a></li>
				</ul>
				<div class="tabCon">
					<div class="tabConList on">
						<h2 class="blind">환불 신청 중</h2>
						<div class="title-wrap">
							<h3 class="title">환불 신청 중</h3>							
						</div>
						<div class="tableType">
							<table summary="">
								<caption></caption>
								<colgroup>
									<col width="15%">
									<col width="12%">
									<col width="13%">
									<col width="*">
									<col width="15%">
									<col width="10%">
								</colgroup>
								<thead>
									<tr>
										<th>환불신청일</th>
										<th>신청 수량</th>
										<th>환불 금액</th>
										<th>환불계좌</th>
										<th>환불완료일</th>
										<th>비고</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>2019-08-18</td>
										<td class="price"><strong>-2</strong></td>
										<td class="price"><strong>10,300</strong></td>
										<td><strong>신한은행(박지선) 110-359-322</strong></td>
										<td>-</td>
										<td>진행중</td>
									</tr>
									<tr>
										<td>2019-08-18</td>
										<td class="price"><strong>-2</strong></td>
										<td class="price"><strong>10,300</strong></td>
										<td><strong>신한은행(박지선) 110-359-322</strong></td>
										<td>-</td>
										<td>진행중</td>
									</tr>
									<tr>
										<td>2019-08-18</td>
										<td class="price"><strong>-2</strong></td>
										<td class="price"><strong>10,300</strong></td>
										<td><strong>신한은행(박지선) 110-359-322</strong></td>
										<td>-</td>
										<td>진행중</td>
									</tr>
								</tbody>
							</table>							
						</div>						
						<div class="title-wrap">
							<h3 class="title">환불현황</h3>
							<p class="pos-r table-bottom-text">※ 환불내역은 최대 6개월까지만 제공됩니다.</p>
						</div>
						<div class="tableType">
							<table summary="">
								<caption></caption>
								<colgroup>
									<col width="15%">
									<col width="12%">
									<col width="13%">
									<col width="*">
									<col width="15%">
									<col width="10%">
								</colgroup>
								<thead>
									<tr>
										<th>환불신청일</th>
										<th>신청 수량</th>
										<th>환불 금액</th>
										<th>환불계좌</th>
										<th>환불완료일</th>
										<th>비고</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>2019-08-18</td>
										<td class="price"><strong>-2</strong></td>
										<td class="price"><strong>10,300</strong></td>
										<td><strong>신한은행(박지선) 110-359-322</strong></td>
										<td>-</td>
										<td>진행중</td>
									</tr>
									<tr>
										<td>2019-08-18</td>
										<td class="price"><strong>-2</strong></td>
										<td class="price"><strong>10,300</strong></td>
										<td><strong>신한은행(박지선) 110-359-322</strong></td>
										<td>-</td>
										<td>진행중</td>
									</tr>	
									<tr>
										<td>2019-08-18</td>
										<td class="price"><strong>-2</strong></td>
										<td class="price"><strong>10,300</strong></td>
										<td><strong>신한은행(박지선) 110-359-322</strong></td>
										<td>-</td>
										<td>진행중</td>
									</tr>	
									<tr>
										<td>2019-08-18</td>
										<td class="price"><strong>-2</strong></td>
										<td class="price"><strong>10,300</strong></td>
										<td><strong>신한은행(박지선) 110-359-322</strong></td>
										<td>-</td>
										<td>진행중</td>
									</tr>	
									<tr>
										<td>2019-08-18</td>
										<td class="price"><strong>-2</strong></td>
										<td class="price"><strong>10,300</strong></td>
										<td><strong>신한은행(박지선) 110-359-322</strong></td>
										<td>-</td>
										<td>진행중</td>
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
