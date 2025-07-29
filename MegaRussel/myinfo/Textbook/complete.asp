<!DOCTYPE html>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/Member/login_check.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<html lang="ko">
<head>
	<meta charset="euc-kr" />
	<title>결제완료 - 교재구매시스템</title>
	<!-- #include virtual = "/include/head.asp" -->
	<!-- #include virtual = "/include/barcode.asp" -->
</head>
<body>
<div class="wrap">
	<header class="sub">
		<a href="./shop.asp" class="btnPrev">주문결제</a>
			
		<!-- #include virtual = "/include/header.asp" -->
	</header>
	<section class="sub">
		<div class="inBox">
			<ul class="paymentStep">
				<li><span>주문결제</span></li>
				<li class="on"><span>결제완료</span></li>
			</ul>
			<div class="complete">
				<h2>주문 결제가 <span>완료</span>되었습니다.</h2>
				<div class="barcodeWrap">
					<div class="imgBarcode">
						<img src="<%=Application("img_path_russel")%>/myinfo/common/bg_barcode_complete.jpg" />
						<%=getBarcode(nRmsMemCd)%>
					</div>
					<div class="barcodeInfo">
						<p class="title">바코드 제출</p>
						<p>구매확인을 위해 바코드를<br />안내데스크에 제출해주세요.</p>
						<!-- <a href="#" class="btnPrint">발급하기</a> -->
					</div>
				</div>
			</div>
			<div class="completeBtn">
				<a href="./cart.asp">확인</a>
			</div>
		</div>
	</section>
</div>
<div class="popupWrap popupBarcode" style="display:none;">
	<div class="in">
		<p class="title">바코드 출력</p>
		<p class="info">학원 안내데스크에 제출하여 주시면<br />교재수령이 가능합니다.</p>
		<div class="imgBarcode">
			<img src="<%=Application("img_path_russel")%>/myinfo/common/bg_barcode.jpg" />
			<%=getBarcode(nRmsMemCd)%>
		</div>
		<a href="#" class="btnPrint">인쇄하기</a>
	</div>
	<a href="#" class="btnClose"><img src="<%=Application("img_path_russel")%>/myinfo/btn/close_popup.png" /></a>
</div>
<script>
	$(document).ready(function(){
		$('.inBox .btnPrint').popUp('.popupBarcode');
	});
</script>
</body>
</html>
