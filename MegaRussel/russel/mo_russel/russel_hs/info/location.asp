<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual = "/inc/head.asp" -->
	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=nha18jrjd4"></script>
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">오시는 길</strong>
</h2>

<section class="sub-wrap">
	<div class="location-wrap">
		<div class="img-map"><img src="<%=Application("img_path_russel")%>/m_russel/russel_hs/info/map.jpg" alt="" /></div>		
		<div class="cont-box-left">
			<h3>최상위권 전문관 러셀 기숙학원</h3>
			<p>경기도 용인시 처인구 원삼면 모래실로 16</p>
			<p class="tel">031-326-5000</p>
			<p class="time">오전 10시 ~ 오후 8시</p>
		</div>
		<div class="cont-box-left">
			<h3 class="info-bus mt0">버스 이용시</h3>
			<p class="mb10" style="word-break:keep-all">
				<strong class="color-blue">[버스/철도&middot;서울에서 오실 경우]</strong><br> 
				1. 강남역에서 ‘용인터미널’행 5001번 버스이용 → 용인터미널 도착(약 1시간 10분 소요) 
                → 용인터미널에서 11번 버스 이용, ‘사암아카데미’에서 하차(약 40분소요) 이 후 도보로 약 400m 이동 후 → 학원도착<br><br>
                2. 서울역에서 ‘용인터미널’행 5005번 버스이용 → 용인터미널 도착(약 1시간 20분 소요) 
                → 용인터미널에서 11번 버스 이용, ‘사암아카데미’에서 하차(약 40분소요) 이 후 도보로 약 400m 이동 후 → 학원도착
			</p>
			<p class="mb10" style="word-break:keep-all">
				<strong class="color-red">[수원에서 오실 경우]</strong><br>
				수원역 노보텔수원앞에서 10번 버스 이용 → 용인터미널 도착(약 1시간 10분 소요) → 용인터미널에서 11번 버스이용, ‘사암아카데미’에서 하차(약 40분 소요) 이 후 도보로 약 400m 이동 후 → 학원도착
			</p>
			<p>
				<strong class="color-olive">[용인에서 오실 경우]</strong><br>
				용인터미널에서 11번 버스이용, ‘사암아카데미’에서 하차 (약 30분 소요) 이 후 도보로 약 400m 이동 후 → 학원도착
			</p>
			<h3 class="info-car">자차 이용시</h3>
			<p class="mb10" style="word-break:keep-all">
				<strong class="color-blue">[양지IC에서 나온 경우(약 10분 소요 / 7.3km)]</strong><br>
				17번국도(죽양대로) ‘죽산, 진천’방면으로 5.7km직진 → 원삼사거리에서 ‘사암리’방향으로 우회전 
				→ 1.4km 직진 후 → ‘라미르커피’ 삼거리에서 ‘SK아카데미’방향으로 우회전 → 50m 진행 후 
				→ ‘레이크랜드부동산’ 에서 ‘SK아카데미 방향’으로 우회전 → 약100m 전진 → 학원 도착
			</p>
			<p class="mb10" style="word-break:keep-all">
				<strong class="color-red">[일죽IC에서 나온 경우(약 22분 소요 / 21km)]</strong><br>
				‘안성’방면으로 우회전 → 2.6km 직진하여 죽산교차로에서 ‘용인, 양지’방면 17번 국도로 우회전 
                → 18km직진 후 원삼사거리에서 ‘사암리’ 방향으로 좌회전 → 1.4km직진 후 → ‘라미르커피’ 삼거리에서 ‘SK아카데미’ 방향으로 우회전 → 50m 진행 후 → ‘레이크랜드 부동산’에서 ‘SK아카데미’ 방향으로 우회전 → 약100m 전진 → 학원 도착
			</p>
			<p style="word-break:keep-all">
				<strong class="color-olive">[남이천 IC에서 나온 경우(약 30분 소요 / 22km)]</strong><br>
				남이천사거리에서 ‘일죽,호법’ 방면으로 우회전 → 두미교차로에서 ‘안성＇방면으로 좌회전 
                → 6km 직진 → 은석사거리에서 ‘용인, 백암’ 방면으로 우회전 → 5km 직진하여 백봉교차로 ‘죽양대로” 방변으로 우회전 →8.5km 직진 →원삼사거리에서 ‘사암리’ 방향으로 좌회전 → 1.4km직진 후 → ‘라미르커피’ 삼거리에서 ‘SK아카데미’ 방향으로 우회전 → 50m 진행 후 → ‘레이크랜드 부동산’에서 ‘SK아카데미’ 방향으로 우회전 → 약100m 전진 → 학원 도착
			</p>
		</div>
	</div>
</section>
<!-- #include virtual = "/inc/footer.asp" -->
</body>
</html>