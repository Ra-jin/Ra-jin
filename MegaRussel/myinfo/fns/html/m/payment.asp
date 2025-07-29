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
		<p class="step"><img src="<%=Application("img_path_russel")%>/mypage/textbook/m/pay_step01.png" alt="주문결제"></p>	

		<!-- list-box -->
		<div class="list-box">
			<table>
				<colgroup>
					<col style="width:*;" />
					<col style="width:20%;" />
					<col style="width:20%;" />
					<col style="width:40px;" />
				</colgroup>
				<thead>
					<tr>
						<th>주문내역</th>
						<th>수량</th>
						<th>금액</th>
						<th></th>	
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="pro">
							<p>9월 바자관 식권 (1회)</p>
						</td>
						<td>
							1
						</td>
						<td><strong class="price">20,000</strong>원</td>
						<td><a href="" class="btn-del"><img src="<%=Application("img_path_russel")%>/mypage/fns/m/btn_del.png" /></a></td>
					</tr>
					<tr>
						<td class="pro">
							<p>9월 바자관 식권 (1회)</p>
						</td>
						<td>
							1
						</td>
						<td><strong class="price">20,000</strong>원</td>
						<td><a href="" class="btn-del"><img src="<%=Application("img_path_russel")%>/mypage/fns/m/btn_del.png" /></a></td>
					</tr>
				</tbody>
			</table>			
			<!-- total-box -->
			<div class="total-box03">
				<p>총 구매수량 <strong>2</strong>건</p>
				<p>구매금액 <strong>33,000</strong>원</p>
			</div>
			<!-- //total-box -->
			<div class="agree-wrap">				
				<ul>
					<li class="agree-tit"><label><input type="checkbox" name="" id="">상품이용 및 환불규정 안내 <span>(필수)</span></label>
						<ul class="agree-pre">
							<li class="agree-info">
								<ul>
									<li>· 구매한 식권 수량은 2달 이내에 소진해야 불이익이 없습니다.</li>
									<li>· 환불계좌정보를 오기입력한 경우 환불이 취소될 수 있습니다.</li>
									<li>· 계좌환불 소요일은 약 7일이며, 회사 사정상 다소 지연될 수 있습니다.</li>							
								</ul>
								<p>상품이용 및 환불규정에 대한 동의를 거부할 권리가 있으며, 동의 거부 시에는 결제 서비스 이용이 제한됩니다.</p>
							</li>
						</ul>
					</li>					
					<li class="agree-tit"><label><input type="checkbox" name="" id="">개인정보처리 및 이용동의 <span>(필수)</span></label>
						<ul class="agree-pre">
							<li class="agree-info">
								<ul>
									<li>메가스터디교육㈜는 “정보통신망 이용촉진 및 정보보호 등에 관한 법률”에 따라 개인정보 수집/이용 시 이용자의 동의를 구하고 있습니다. 내용을 확인하시고, 정보제공 및 이용에 동의해 주시기 바랍니다.</li>						
									<li>본인은 아래 내용에 대하여 충분히 읽어 보았으며, 이를 이해하여 동의합니다.</li>
									<li><strong>1. 수집/이용목적</strong></li>
									<li>메가스터디교육㈜가 운영하는 러셀학원 홈페이지(http://myrussel.megastudy.net)에서, 이용자의 “결제 내역, 지난 결제내역, 차감내역, 환불내역 등” 결제 및 조회 서비스를 제공하기 위함.</li>
									<li><strong>2. 입력 / 수집된 항목</strong></li>
									<li>러셀학원 (http://myrussel.megastudy.net) 사이트에 가입한 수강생의 정보 - 수강생 이름, 생년월일, 성별, 휴대폰번호 ※ 상기 항목의 입력값을 토대로 기 회원정보의 1회성 조회의 목적으로만 사용하며, 별도로 저장하지 않습니다.</li>
									<li><strong>3. 이용 및 보유기간</strong></li>
									<li>결제할 내역, 지난 결제내역, 취소내역 조회 후 입력된 정보는 소멸함. (입력된 정보는 별도 저장하지 않습니다.) </li>							
								</ul>
								<p>개인정보 수집 및 이용에 대한 동의를 거부할 권리가 있으며, 동의 거부 시에는 결제 서비스 이용이 제한됩니다.</p>
							</li>
						</ul>
					</li>					
					<li class="agree-tit"><label><input type="checkbox" name="" id="">개인정보의  제3자 위탁 제공 동의 <span>(필수)</span></label>	
						<ul class="agree-pre">
							<li class="agree-info">
								<ul>
									<li>· 회사는 서비스 이행을 위해 아래와 같이 개인정보를 위탁하여 운영하고 있습니다. <br>
										<span>  (단, 해당하는 경우에만 위탁 대상자에게 개인정보를 제공합니다.)</span>
									</li>						
									<li>· 기본 위탁 대상자 </li>
									<li>· 위탁업무 내용</li>
									<li>
										<table>
											<colgroup>
												<col width="40%">
												<col width="60%">
											</colgroup>
											<tbody>
												<tr>
													<th>위탁대상자</th>	
													<th>위탁업무 내용</th>
												</tr>
												<tr>
													<td>메가 F&S</td>
													<td>결제 내역, 예약정보확인을 위한 회원정보 위탁</td>
												</tr>	
											</tbody>																	
										</table>
									</li>
								</ul>
								<p>개인정보 수집 및 이용에 대한 동의를 거부할 권리가 있으며, 동의 거부 시에는 결제 서비스 이용이 제한됩니다.</p>
							</li>
						</ul>
					</li>
					
				</ul>
			</div>			
			<div class="btn-type02">
				<a href="#" class="gray">취소하기</a>
				<a href="#" class="blue">결제하기</a>
			</div>
			<script>
				$(function(){
					$('.agree-wrap .agree-tit').on('click', function(){
						var root = $(this);
						root.addClass('on').children('.agree-pre').addClass('on');					
						if(root.hasClass('on')){
							root.siblings().children('.agree-pre').removeClass('on');
						};						
					});						
					
					
				});
			</script>
		</div>
		<!-- //list-box -->
	</div>
	<!-- //content-wrap -->
</div>
</body>
</html>