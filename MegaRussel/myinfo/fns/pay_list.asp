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
	<script>
		$( document ).ready(function() {
			$.ajaxSetup({ cache: false });
			loadList();
		});

		function showMore() {
			if (parseInt($('input[name=V_MAX_LIST]').val()) > parseInt($('input[name=V_CNT_LIST]').val())) {
				$('input[name=V_CNT_LIST]').val(parseInt($('input[name=V_CNT_LIST]').val()) + 10);
				loadList();
			}
			else {
				alert("더 이상 데이터가 없습니다.");
			}
		}

		function loadList() {
			$('#ListArea').load(
				'./list_ax.asp'
				,{
					'V_MODE' : 'pay'
					,'V_MEM_CD' : '<%=nRmsMemCd%>'
					,'V_COUNT' : $('input[name=V_CNT_LIST]').val()
				}
			);
		}
	</script>
</head>
<body>
<div class="wrap">
	<header class="sub">
        <a href="/index.asp" class="btnPrev">결제현황</a>
		<!-- #include virtual = "/include/header.asp" -->		
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
						<div class="tb-type2">
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
								<tbody id="ListArea">
									<input type="hidden" name="V_MAX_LIST" value="0" />
								</tbody>
							</table>							
						</div>
						<div class="center">
							<a href="javascript:;" onclick="javascript:showMore();" class="add-bottom">더보기</a>
						</div>
					</div>
					<input type="hidden" name="V_CNT_LIST" value="10" />
					<!-- //tabConList -->
				</div>
			</div>
		</div>
	</section>
</div>
</body>
</html>
