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
		
		<!-- list-box -->
		<div class="list-box">
			<p class="table-top txt-blue">환불신청을 진행할 건수를 입력해주세요.</p>
			<table class="refund-table">
				<colgroup>
					<col style="width:20%;" />
					<col style="*;" />
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
							<div class="select-box ">
								<select name="" id="">
									<option value="">9월 바자관 식권 (1회) : 잔여 1</option>
								</select>
							</div>						
						</td>
					</tr>
					<tr>
						<th>환불신청</th>
						<td>
							<dl class="refund-count">
								<dd><p>현재 보유잔량</p><p class="count">38</p></dd>
								<dd><img src="<%=Application("img_path_russel")%>/mypage/fns/m/refund_count.png" alt="빼기"></dd>
								<dd><p>환불 신청건수</p><p><label for=""><input type="text" name="" id=""></label></p></dd>
							</dl>
						</td>
					</tr>
					<tr>
						<th>환불계좌</th>
						<td class="refund-inputList">
							<div class="select-box ">
								<select name="" id="">
									<option value="">신한은행</option>
								</select>
							</div>
							<div class="w60"><label for=""><input type="text" name="" id="" placeholder="예금주명"></label></div>
							<div class="w100"><label for=""><input type="text" name="" id="" placeholder="계좌번호"></label></div>
						</td>
					</tr>
				</tbody>
			</table>			
			<!-- total-box -->
			<div class="total-box03">
				<p>환불예상금액 <strong>10,600</strong>원</p>
				<em>(1개 기준단가 = 5,300원)</em>
			</div>
			<!-- //total-box -->
				
			<div class="btn-type02">
				<a href="#" class="gray">환불 취소</a>
				<a href="#" class="blue">환불 신청</a>
			</div>
			<div class="bottom-list">
				<ul>
					<li>환불계좌정보를 오기 입력한 경우 환불이 취소될 수 있습니다.</li>
					<li>계좌환불 소요일은 약 7일이며, 회사 사정상 다소 지연될 수 있습니다.</li>
				</ul>
			</div>
		</div>
		<!-- //list-box -->
	</div>
	<!-- //content-wrap -->
</div>
</body>
</html>