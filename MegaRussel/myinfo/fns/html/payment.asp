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
			<ul class="paymentStep">
				<li class="on"><span>주문결제</span></li>
				<li><span>결제완료</span></li>
			</ul>
			<div class="tableType tableType3">
				<table summary="이 표는 수강중인 강좌교재를 제공하며 선택, 교재정보, 금액으로 구성되어있습니다.">
					<caption>수강중인 강좌교재</caption>
					<thead>
						<tr>
							<th>주문내역</th>
							<th>수령</th>
							<th>금액</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="con"><span class="subject">기하와벡터 (+부록)</span></td>
							<td>1</td>
							<td class="price"><strong>20,000</strong>원</td>
							<td><a href="#"><img src="http://next.megastudy.net:8080/russel/mypage/textbook/tablet/btn/delete.gif" /></a></td>
						</tr>
						<tr>
							<td class="con"><span class="subject">[2018년](3월)(정규) 최장희T 한방에 끝 - 미적분2</span></td>
							<td>1</td>
							<td class="price"><strong>13,000</strong>원</td>
							<td><a href="#"><img src="http://next.megastudy.net:8080/russel/mypage/textbook/tablet/btn/delete.gif" /></a></td>
						</tr>
						<tr>
							<td colspan="4" class="totalPayment">
								<span>최종결제 금액</span>
								<ul>
									<li>총 구매수량 <strong>2</strong>건</li>
									<li>구매금액 <strong>33,000</strong>원</li>
								</ul>
							</td>
						</tr>
					</tbody>
				</table>				
			</div>
			<div class="tos">
				<p class="tit"><span class="imgCheck"><input type="checkbox" title="선택" id="check_1"></span><label for="check_1">상품이용 및 환불규정 안내<i> (필수)</i></label></p>
				<div class="tos-info">
					· 구매한 식권 수량은 2달 이내에 소진해야 불이익이 없습니다. <br>
					· 환불계좌정보를 오기입력한 경우 환불이 취소될 수 있습니다.<br>
					· 계좌환불 소요일은 약 7일이며, 회사 사정상 다소 지연될 수 있습니다.
				</div>
				<p class="tos-info-bottom">상품이용 및 환불규정에 대한 동의를 거부할 권리가 있으며, 동의 거부 시에는 결제 서비스 이용이 제한됩니다.</p>

				<p class="tit"><span class="imgCheck"><input type="checkbox" title="선택" id="check_2"></span><label for="check_2">개인정보처리 및 이용동의<i> (필수)</i></label></p>
				<div class="tos-info">
					메가스터디교육㈜는 “정보통신망 이용촉진 및 정보보호 등에 관한 법률”에 따라 개인정보 수집/이용 시 이용자의 동의를 구하고 있습니다. 내용을 확인하시고, 정보제공 및 이용에 동의해 주시기 바랍니다. <br>
					-----------------------------------------------------------------------------------------------------------------------------------------------------------------------<br>
					본인은 아래 내용에 대하여 충분히 읽어 보았으며, 이를 이해하여 동의합니다.<br>
					<strong>1. 수집/이용목적</strong><br>
					메가스터디교육㈜가 운영하는 러셀학원 홈페이지(http://myrussel.megastudy.net)에서, 이용자의 “결제 내역, 지난 결제내역, 차감내역, 환불내역 등” 결제 및 조회 서비스를 제공하기 위함.<br>
					<strong>2. 입력 / 수집된 항목</strong><br>
					러셀학원 (http://myrussel.megastudy.net) 사이트에 가입한 수강생의 정보 - 수강생 이름, 생년월일, 성별, 휴대폰번호 ※ 상기 항목의 입력값을 토대로 기 회원정보의 1회성 조회의 목적으로만 사용하며, 별도로 저장하지 않습니다.<br>
					<strong>3. 이용 및 보유기간</strong><br>
					결제할 내역, 지난 결제내역, 취소내역 조회 후 입력된 정보는 소멸함. (입력된 정보는 별도 저장하지 않습니다.) 

				</div>
				<p class="tos-info-bottom">개인정보 수집 및 이용에 대한 동의를 거부할 권리가 있으며, 동의 거부 시에는 결제 서비스 이용이 제한됩니다.</p>

				<p class="tit"><span class="imgCheck"><input type="checkbox" title="선택" id="check_3"></span><label for="check_3">개인정보의  제3자 위탁 제공 동의 <i> (필수)</i></label></p>
				<div class="tos-info">
					· 회사는 서비스 이행을 위해 아래와 같이 개인정보를 위탁하여 운영하고 있습니다.<br>
					(단, 해당하는 경우에만 위탁 대상자에게 개인정보를 제공합니다.)<br>
					· 기본 위탁 대상자 <br>
					· 위탁업무 내용<br>
					<table>
						<colgroup>
							<col width="160px">
							<col width="520px">
						</colgroup>
						<thead>
							<tr>
								<th>위탁 대상자</th>
								<th>위탁업무 내용</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>메가 F&S</td>
								<td>결제 내역, 예약정보확인을 원한 회원정보 위탁</td>
							</tr>
						</tbody>					
					</table>
				</div>
				<p class="tos-info-bottom last">개인정보의 제3자 위탁 제공 동의를 거부할 권리가 있으며, 동의 거부 시에는 결제 서비스 이용이 제한됩니다.</p>
			</div>
			<div class="payment-btn-wrap">
				<a href="/main.asp" class="cancel">취소</a>
				<a href="javascript:;" onclick="" class="payment">결제하기</a>
			</div>
			
		</div>
	</section>
</div>
</body>
</html>
