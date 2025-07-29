<%
'인트로
classIco = "intro"
Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "CD0247": '강남
				   box_gn = " on-campus"
				   classIco = "ico-gn"
    Case "CD0001":  '대치
				   box_dc = " on-campus"
				   classIco = "ico-dc"
    Case "CD0245":   '목동
				   box_md = " on-campus"
				   classIco = "ico-md"
    Case "CD0250":   '부천
				   box_bc = " on-campus"
				   classIco = "ico-bc"
	Case "CD0244":   '분당
				   box_bd = " on-campus"
				   classIco = "ico-bd"
	Case "CD0246":   '센텀
				   box_ct = " on-campus"
				   classIco = "ico-ct"
    Case "CD0249":   '영통
				   box_yt = " on-campus"
				   classIco = "ico-yt"
    Case "CD0257":   '중계
				   box_jg = " on-campus"
				   classIco = "ico-jg"
	Case "CD0248":   '평촌
				   box_pc = " on-campus"
				   classIco = "ico-pc"
	Case "CD0258":   '기숙최상위권남
				   box_yj = " on-campus"
				   classIco = "ico-yj"
	Case "CD0347":   '기숙서의치관
				   box_yj = " on-campus"
				   classIco = "ico-sm"
	Case "CD0348":   '기숙최상위권여
				   box_yj = " on-campus"
				   classIco = "ico-yj"
	Case "CD0340": classOn = "on"   '코어광주
				   box_gj = " on-campus"
				   classIco = "ico-gj"
	Case "CD0341": classOn = "on"   '코어대전
				   box_dj = " on-campus"
				   classIco = "ico-dj"

End Select
%>
<link rel="stylesheet" type="text/css" href="/common/css/2022/map.css" />
<% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0258" or Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0347" or Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0348" Then '기숙남/서의치/기숙여 %>
<p class="map-tit">2020-2023 <strong>4년 연속 의치한수약/SKY 각 지역 입결 1위<sup>*</sup></strong></p>
<% Else %>
<p class="map-tit">러셀 <strong>4년 연속 의치한수약/SKY 각 지역 입결 1위<sup>*</sup></strong></p>
<% End If %>
<div class="map-wrapper">
	<p class="tac" style="margin-left:140px;"><img src="<%=Application("img_path_russel")%>/common/inc/result/map.png" alt="" /></p>
	<!-- 지도 시계방향 순 -->
	<!-- 강남 -->
	<div class="campus-info c-gn <%=box_gn%>">
		<p class="tit">18-23 6년 누적 러셀 내<br>최상위권 대학 입결 1위<sup>*</sup> <strong>러셀 강남</strong></p>
		<div class="info-inner">
			<p class="tit">18-23 6년 누적 러셀 내<br>최상위권 대학 입결 1위<sup>*</sup> <strong>러셀 강남</strong></p>
			<ul class="txt">
				<li><strong>2019학년도 수능 만점자 배출</strong></li>
				<li><strong>서울대 의예과 5년 연속 배출</strong></li>
				<li><strong>18-23 6년 누적 러셀 내 최다 배출 의치한수약 548명+최상위권 대학 2,548명</strong>(설의6명,연의5명,성의3명,카의6명,울의3명,고의8명 포함)</li>
			</ul>
			<p class="stxt">*러셀 전학원 내 2018~2023학년도 최상위권 대학 합격자 수 기준</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/common/inc/result/btn_close.png" /></span>
		</div>
	</div>
	<!-- //강남 -->
	<!-- 중계 -->
	<div class="campus-info c-jg <%=box_jg%>">
		<p class="tit">20-23 4년 연속 강북 지역<br>최상위권 입결 성장률 1위<sup>*</sup> <strong>러셀 중계</strong></p>
		<div class="info-inner">
			<p class="tit">20-23 4년 연속 강북 지역<br>최상위권 입결 성장률 1위<sup>*</sup> <strong>러셀 중계</strong></p>
			<ul class="txt">
				<li><strong>2023학년도 강북 지역 유일 서울대 의예과 배출</strong></li>
				<li><strong>의치한수약 배출 2023학년도 36명</strong>(설의1명,연의1명,성의1명,고의2명 포함) /<strong>2023-2020학년도 112명</strong>(설의1명,연의1명,성의1명,카의1명,고의3명 포함)</li>
				<li><strong>서울대·연세대·고려대 배출 2023학년도 59명</strong>(의예과 4명 포함) / <strong>2023-2020학년도 185명</strong>(의예과 5명 포함)</li>
			</ul>
			<p class="stxt">*강북 지역 학원_2020~2023학년도 의치한수약+서연고 최종 합격자 수 증가율 비교 기준<br>(홈페이지 대입 실적 기준/2023.02.28 기준)</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/common/inc/result/btn_close.png" /></span>
		</div>
	</div>
	<!-- //중계 -->
	<!-- 대치 -->
	<div class="campus-info c-dc <%=box_dc%>">
			<p class="tit">18-23 6년 연속<br>최상위권 점유율 1위<sup>*</sup> <strong>러셀 대치</strong></p>
		<div class="info-inner">
			<p class="tit">18-23 6년 연속<br>최상위권 점유율 1위<sup>*</sup> <strong>러셀 대치</strong></p>
			<ul class="txt">
				<li><strong>2021학년도 수능 전국 수석 배출 / 2020학년도 수능 만점자 배출 / 2018학년도 수능 만점자 배출</strong></li>
				<li><strong>의치한수약+서울대·연세대·고려대 배출 2023학년도 274명</strong>(설의4명,연의1명,카의7명,울의1명,고의5명 포함) / <strong>2023-2018학년도 1,317명</strong>(설의17명,연의10명,성의2명,카의14명,울의5명,고의16명 포함)</li>
				<li><strong>서울대 배출 2023학년도 28명</strong>(의예과 4명 포함) / <strong>2023-2018학년도 158명</strong>(의예과 17명 포함) </li>
			</ul>
			<p class="stxt">*러셀 전학원 내 2018~2023학년도 최상위권반(HS반/서의치대반) 재원생 점유율 기준</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/common/inc/result/btn_close.png" /></span>
		</div>
	</div>
	<!-- //대치 -->
	<!-- 분당 -->
	<div class="campus-info c-bd <%=box_bd%>">
		<p class="tit">20-23 4년 연속 분당 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀 분당</strong></p>
		<div class="info-inner">
			<p class="tit">20-23 4년 연속 분당 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀 분당</strong></p>
			<ul class="txt">
				<li><strong>2021학년도 수능 만점자 1명 배출 / 2020학년도 수능 만점자 2명 배출</strong></li>
				<li><strong>의치한수약+서울대·연세대·고려대 배출 2023학년도 191명</strong>(설의1명,연의2명,성의1명,카의5명,울의1명,고의4명 포함) / <strong>2023-2020학년도 721명</strong>(설의8명,연의3명,성의4명,카의9명,울의1명,고의6명 포함) </li>
				<li><strong>서울대 배출 2023학년도 20명</strong>(의예과 1명 포함) / <strong>2023-2020학년도 85명</strong>(의예과 8명 포함) </li>
			</ul>
			<p class="stxt">*분당 지역 학원_2020~2023학년도 의치한수약+서연고 최종 합격자 수 비교 기준
				(홈페이지 대입 실적 기준/2023.02.28 기준)</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/common/inc/result/btn_close.png" /></span>
		</div>
	</div>
	<!-- //분당 -->

	<!-- 대전 -->
	<div class="campus-info c-dj <%=box_dj%>">
		<p class="tit">개원 첫 해, 대전 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀CORE 대전</strong></p>
		<div class="info-inner">
			<p class="tit">개원 첫 해, 대전 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀CORE 대전</strong></p>
			<ul class="txt">
				<li><strong>2023학년도 대전 지역 메이저 의대 입결 1위</strong>(서울대,연세대,가톨릭대 의예과 배출)</li>
				<li><strong>의치한수약 배출 2023학년도 72명</strong>(설의1명,연의1명 포함) </li>
				<li><strong>서울대·연세대·고려대 배출 2023학년도 42명</strong>(의예과 2명 포함)</li>
			</ul>
			<p class="stxt">*대전 지역 학원_2023학년도 의치한수약+서연고 최종 합격자 수 비교 기준
				(홈페이지 대입 실적 기준/2023.02.28 기준)</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/common/inc/result/btn_close.png" /></span>
		</div>
	</div>
	<!-- //대전 -->

	<!-- 센텀 -->
	<div class="campus-info c-ct <%=box_ct%>">
		<p class="tit">20-23 4년 연속 부산 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀 센텀</strong></p>
		<div class="info-inner">
			<p class="tit">20-23 4년 연속 부산 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀 센텀</strong></p>
			<ul class="txt">
				<li><strong>의치한수약 배출 2023학년도 106명</strong>(설의1명,연의1명,성의1명,카의1명,울의3명 포함) / <strong>2023-2020학년도 302명</strong>(설의3명,연의1명,성의3명,카의4명,울의3명,고의1명 포함)</li>
				<li><strong>서울대·연세대·고려대 배출 2023학년도 39명</strong>(의예과 2명 포함) / <strong>2023-2020학년도 128명</strong>(의예과 5명 포함)</li>
				<li><strong>주요 상위권 대학 배출 2023학년도 262명 / 2023-2020학년도 892명</strong></li>
			</ul>
			<p class="stxt">*부산 지역 단일 학원_2020~2023학년도 의치한수약+서연고 최종 합격자 수 비교 기준
				(홈페이지 대입 실적 기준/2023.02.28 기준)</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/common/inc/result/btn_close.png" /></span>
		</div>
	</div>
	<!-- //센텀 -->
	<!-- 기숙 -->
	<div class="campus-info c-yj <%=box_yj%>">
			<p class="tit">20-23 4년 누적 러셀 내<br>의치한수약 입결 1위<sup>*</sup> <strong>러셀 기숙</strong></p>
		<div class="info-inner">
			<p class="tit">20-23 4년 누적 러셀 내<br>의치한수약 입결 1위<sup>*</sup> <strong>러셀 기숙</strong></p>
			<ul class="txt">
				<li><strong>의치한수약 배출 2023학년도 174명</strong>(연의1명,성의2명,울의2명 포함) / <strong>2023-2020학년도 612명</strong>(연의4명,성의2명,카의2명,울의3명,고의5명 포함) </li>
				<li><strong>서울대 배출 2023학년도 13명 / 2023-2020학년도 41명</strong></li>
				<li><strong>연세대·고려대 배출 2023학년도 60명</strong>(의예과 1명 포함) / <strong>2023-2020학년도 211명</strong>(의예과 9명 포함)</li>
			</ul>
			<p class="stxt">*러셀 전학원 내 2020~2023학년도 의치한수약 합격자 수 기준</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/common/inc/result/btn_close.png" /></span>
		</div>
	</div>
	<!-- //기숙 -->

	<!-- 광주 -->
	<div class="campus-info c-gj <%=box_gj%>">
		<p class="tit">개원 첫 해, 광주 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀CORE 광주</strong></p>
		<div class="info-inner">
			<p class="tit">개원 첫 해, 광주 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀CORE 광주</strong></p>
			<ul class="txt">
				<li><strong>2023학년도 광주/전남 지역 의치한수약 입결 1위</strong></li>
				<li><strong>의치한수약 배출 2023학년도 94명</strong>(연의2명,고의3명 포함)</li>
				<li><strong>서울대·연세대·고려대 배출 2023학년도 35명</strong>(의예과 5명 포함)</li>
			</ul>
			<p class="stxt">*광주 지역 학원_2023학년도 의치한수약+서연고 최종 합격자 수 비교 기준<br>(홈페이지 대입 실적 기준/2023.02.28 기준)</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/common/inc/result/btn_close.png" /></span>
		</div>
	</div>
	<!-- //광주 -->

	<!-- 영통 -->
	<div class="campus-info c-yt <%=box_yt%>">
		<p class="tit">20-23 4년 연속 수원 지역<br>최상위권 입결 1위<sup>*</sup ><strong>러셀 영통</strong></p>
		<div class="info-inner">
			<p class="tit">20-23 4년 연속 수원 지역<br>최상위권 입결 1위<sup>*</sup ><strong>러셀 영통</strong></p>
			<ul class="txt">
				<li><strong>의치한수약 배출 2023학년도 42명</strong>(설의1명 포함) / <strong>2023-2020학년도 165명</strong>(설의2명,연의1명,카의1명,고의1명 포함)</li>
				<li><strong>서울대 배출 2023학년도 14명</strong>(설의1명 포함) / <strong>2023-2020학년도 52명</strong>(의예과 2명 포함)</li>
				<li><strong>연세대·고려대 배출 2023학년도 34명 / 2023-2020학년도 152명</strong>(의예과 2명 포함)</li>
			</ul>
			<p class="stxt">*수원 지역 학원_2020~2023학년도 의치한수약+서연고 최종 합격자 수 비교 기준<br>(홈페이지 대입 실적 기준/2023.02.28 기준)</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/common/inc/result/btn_close.png" /></span>
		</div>
	</div>
	<!-- //영통 -->
	<!-- 평촌 -->
	<div class="campus-info c-pc <%=box_pc%>">
		<p class="tit">20-23 4년 연속 평촌 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀 평촌</strong></p>
		<div class="info-inner">
			<p class="tit">20-23 4년 연속 평촌 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀 평촌</strong></p>
			<ul class="txt">
				<li><strong>의치한수약 배출 2023학년도 59명</strong>(설의1명,성의1명,카의1명 포함) / <strong>2023-2020학년도 213명</strong>(설의3명,연의1명,성의1명,카의1명,고의2명 포함) </li>
				<li><strong>서울대 배출 2023학년도 15명</strong>(의예과 1명 포함) / <strong>2023-2020학년도 65명</strong>(의예과 3명 포함)</li>
				<li><strong>연세대·고려대 배출 2023학년도 55명 / 2023-2020학년도 200명</strong>(의예과 3명 포함)</li>
			</ul>
			<p class="stxt">*평촌 지역 학원_2020~2023학년도 의치한수약+서연고 최종 합격자 수 비교 기준<br>(홈페이지 대입 실적 기준/2023.02.28 기준)</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/common/inc/result/btn_close.png" /></span>
		</div>
	</div>
	<!-- //평촌 -->
	<!-- 부천 -->
	<div class="campus-info c-bc <%=box_bc%>">
		<p class="tit">20-23 4년 연속 인천&middot;부천 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀 부천</strong></p>
		<div class="info-inner">
			<p class="tit">20-23 4년 연속 인천&middot;부천 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀 부천</strong></p>
			<ul class="txt">
				<li><strong>의치한수약 2023학년도 43명</strong>(울의1명 포함) / <strong>2023-2020학년도 149명</strong>(설의3명,연의3명,카의1명,울의2명 포함)</li>
				<li><strong>서울대 배출 2023학년도 7명 / 2023-2020학년도 36명</strong>(의예과 3명 포함) </li>
				<li><strong>연세대·고려대 배출 2023학년도 33명 / 2023-2020학년도 108명</strong>(의예과 3명 포함) </li>
			</ul>
			<p class="stxt">*인천&middot;부천 지역 학원_2020~2023학년도 의치한수약+서연고 최종 합격자 수 비교 기준<br>
				(홈페이지 대입 실적 기준/2023.02.28 기준)</p>
				<span class="bt-close"><img src="<%=Application("img_path_russel")%>/common/inc/result/btn_close.png" /></span>
		</div>
	</div>
	<!-- //부천 -->
	<!-- 목동 -->
	<div class="campus-info c-md <%=box_md%>">
		<p class="tit">20-23 4년 연속 목동 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀 목동</strong></p>
		<div class="info-inner">
			<p class="tit">20-23 4년 연속 목동 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀 목동</strong></p>
			<ul class="txt">
				<li><strong>목동 지역 유일 서울대 의예과 3년 연속 배출</strong></li>
				<li><strong>의치한수약+서울대·연세대·고려대 배출 2023학년도 73명 / 2023-2020학년도 289명</strong>(설의4명,연의2명,카의3명,울의1명,고의5명 포함)</li>
				<li><strong>서울대 배출 2023학년도 6명 / 2023-2020학년도 28명</strong>(의예과 4명 포함) </li>
			</ul>
			<p class="stxt">*목동 지역 단과학원_2020~2023학년도 의치한수약+서연고 최종 합격자 수 비교 기준<br>(홈페이지 대입 실적 기준/2023.02.28 기준)</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/common/inc/result/btn_close.png" /></span>
		</div>
	</div>
	<!-- //목동 -->
	<p class="r-stxt">*목동 지역/부천·인천 지역/분당 지역/영통 지역/평촌 지역/광주 지역/대전 지역/부산 지역 학원_2020~2023학년도 의치한수약+서연고 최종 합격자 수 비교 기준 (2023.02.28 기준)<br>※ 타 학원 합격자 노출 상황에 따라, 변경될 수 있습니다.</p>

	<!-- 해당 위치 아이콘 -->
	<% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "INTRO" Then '인트로 %>
	<p class="ico-map ico-gn"><img src="<%=Application("img_path_russel")%>/common/inc/result/map_ico_blue.png" alt="" /></p>
	<p class="ico-map ico-jg"><img src="<%=Application("img_path_russel")%>/common/inc/result/map_ico_blue.png" alt="" /></p>
	<p class="ico-map ico-dc"><img src="<%=Application("img_path_russel")%>/common/inc/result/map_ico_blue.png" alt="" /></p>
	<p class="ico-map ico-bd"><img src="<%=Application("img_path_russel")%>/common/inc/result/map_ico_blue.png" alt="" /></p>
	<p class="ico-map ico-ct"><img src="<%=Application("img_path_russel")%>/common/inc/result/map_ico_blue.png" alt="" /></p>
	<p class="ico-map ico-yj"><img src="<%=Application("img_path_russel")%>/common/inc/result/map_ico_blue.png" alt="" /></p>
	<p class="ico-map ico-yt"><img src="<%=Application("img_path_russel")%>/common/inc/result/map_ico_blue.png" alt="" /></p>
	<p class="ico-map ico-pc"><img src="<%=Application("img_path_russel")%>/common/inc/result/map_ico_blue.png" alt="" /></p>
	<p class="ico-map ico-bc"><img src="<%=Application("img_path_russel")%>/common/inc/result/map_ico_blue.png" alt="" /></p>
	<p class="ico-map ico-md"><img src="<%=Application("img_path_russel")%>/common/inc/result/map_ico_blue.png" alt="" /></p>
	<p class="ico-map ico-dj"><img src="<%=Application("img_path_russel")%>/common/inc/result/map_ico_blue.png" alt="" /></p>
	<p class="ico-map ico-gj"><img src="<%=Application("img_path_russel")%>/common/inc/result/map_ico_blue.png" alt="" /></p>
	<% Else %>
	<p class="ico-map <%=classIco%>"><img src="<%=Application("img_path_russel")%>/common/inc/result/map_ico_blue.png" alt="" /></p>
	<% End If %>
</div>

<script>
	$(function(){
		var url 	= window.location.href;
		var $map_wrap	= $('.map-wrapper');
		var $map_tit	= $('.map-tit')
		var $ico 	= $('.ico-map img');

		if(url.indexOf('study_hall') > -1){
			// 바자관
			$ico.attr('src','<%=Application("img_path_russel")%>/common/inc/result/map_ico_study.png')
			$map_wrap.addClass('map-study');
			$map_tit.addClass('map-study');
		}else if(url.indexOf('hs') > -1){
			// HS반
			$ico.attr('src','<%=Application("img_path_russel")%>/common/inc/result/map_ico_hs.png')
			$map_wrap.addClass('map-hs');
			$map_tit.addClass('map-hs');


		}else if(url.indexOf('perfect') > -1){
			// 대입합격현황
			$ico.attr('src','<%=Application("img_path_russel")%>/common/inc/result/map_ico_perfect.png')
			$map_wrap.addClass('map-perfect')
			$map_tit.addClass('map-perfect');
		}else if(url.indexOf('success') > -1 || url.indexOf('success') > -1){
			// 대입성공story
			$ico.attr('src','<%=Application("img_path_russel")%>/common/inc/result/map_ico_perfect.png')
			$map_wrap.addClass('map-success')
			$map_tit.addClass('map-success');
		}

		$('.campus-info > .tit').on('click',function(){
			$('.info-inner').css('display','none')
			$('.info-inner').add('.campus-info').removeClass('on')
			$(this).parent().addClass('on')
			$(this).next().addClass('on')
		})
		$('.bt-close').on('click',function(){
			$('.info-inner').css('display','none')
			$(this).parent().removeClass('on')
		});
	})

</script>