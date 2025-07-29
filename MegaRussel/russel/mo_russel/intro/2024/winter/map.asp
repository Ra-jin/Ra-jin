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
    Case "CD0340": classOn = "on"   '코어광주
                box_gj = " on-campus"
                classIco = "ico-gj"
    Case "CD0341": classOn = "on"   '코어대전
                box_dj = " on-campus"
                classIco = "ico-dj"
    Case "CD0343": classOn = "on"   '코어원주
                box_wj = " on-campus"
                classIco = "ico-wj"
    Case "CD0344": classOn = "on"   '코어전주
                box_jj = " on-campus"
                classIco = "ico-jj"
    Case "CD0345": classOn = "on"   '코어창원
                box_cw = " on-campus"
                classIco = "ico-cw"
    Case "CD0346": classOn = "on"   '코어청주
                box_cj = " on-campus"
                classIco = "ico-cj"
    Case "CD0342":    '대구
                    box_dg = " on-campus"
                    classIco = "ico-dg"
    Case "CD0258":   '기숙최상위권남
                    box_yj = " on-campus"
                    classIco = "ico-yj"
    Case "CD0347":   '기숙서의치관
                    box_yj = " on-campus"
                    classIco = "ico-sm"
    Case "CD0348":   '기숙최상위권여
                    box_yj = " on-campus"
                    classIco = "ico-yj"

End Select
%>
<!-- <link rel="stylesheet" type="text/css" href="/css/2024/map.css" /> -->

<div class="map-wrapper">
	<p class="tac"><img src="<%=Application("img_path_russel")%>/m_russel/intro/info/2022/study_hall/cont05_map02.jpg" alt="" /></p>
	<!-- 지도 시계방향 순 -->
	<!-- 강남 -->
	<div class="campus-info c-gn <%=box_gn%>">
		<p class="tit">러셀 내 
			<br>최상위권 대학 입결 1위<sup>*</sup> <strong>러셀 강남</strong></p>
		<div class="info-inner">
			<p class="tit">러셀 내<br>최상위권 대학 입결 1위<sup>*</sup> <strong>러셀 강남</strong></p>
			<ul class="txt">
				<li><strong>2019학년도 수능 만점자 배출</strong></li>
				<li><strong>서울대 의예과 5년 연속 배출</strong></li>
				<li><strong>2024-2018학년도 의치한약수 619명+최상위권 대학 2,532명 (서울대 113명, 연세대 237명, 고려대 235명 포함)</strong></li>
			</ul>
			<p class="stxt">*러셀 전학원 내 2018~2024학년도 최상위권 대학 합격자 수 기준</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/m_russel/common/btn_layer_close.jpg" /></span>
		</div>
	</div>
	<!-- //강남 -->
	<!-- 대치 -->
	<div class="campus-info c-dc <%=box_dc%>">
		<p class="tit">18-24 7년 연속 <br>최상위권 점유율 1위<sup>*</sup> <strong>러셀 대치</strong></p>
		<div class="info-inner">
			<p class="tit">18-24 7년 연속 <br>최상위권 점유율 1위<sup>*</sup> <strong>러셀 대치</strong></p>
			<ul class="txt">
				<li><strong>2021학년도 수능 전국 수석 배출 / 2020학년도 수능 만점자 배출 / 2018학년도 수능 만점자 배출</strong></li>
				<li><strong>의치한약수+서울대&middot;연세대&middot;고려대 배출 2024학년도 426명(설의7명,연의6명,성의5명,카의11명,고의6명 포함) / 2024-2018학년도 1,737명(설의23명,연의15명,성의6명,카의25명,울의5명,고의22명 포함)</strong></li>
				<li><strong>서울대 배출 2024학년도 73명(의예과 7명 포함) / 2024-2018학년도 229명(의예과 23명 포함)</strong></li>
			</ul>
			<p class="stxt">*러셀 전학원 내 2018~2024학년도 최상위권반(HS반/서의치대반) 재원생 점유율 기준</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/m_russel/common/btn_layer_close.jpg" /></span>
		</div>
	</div>
	<!-- //대치 -->
	<!-- 목동 -->
	<div class="campus-info c-md <%=box_md%>">
		<p class="tit">20-24 5년 연속 목동 지역<br>성적 향상률 1위<sup>*</sup> <strong>러셀 목동</strong></p>
		<div class="info-inner">
			<p class="tit">20-24 5년 연속 목동 지역<br>성적 향상률 1위<sup>*</sup> <strong>러셀 목동</strong></p>
			<ul class="txt">
				<li><strong>서울대 의예과 3년 연속 배출</strong></li>
				<li><strong>의치한약수 배출 2024학년도 51명(연의 포함) / 2024-2020학년도 200명(설의4명,연의3명,카의3명,울의1명,고의5명 포함)</strong></li>
				<li><strong>서울대&middot;연세대&middot;고려대 배출 2024학년도 55명(의예과 1명 포함) / 2024-2020학년도 195명(의예과 12명 포함)</strong></li>
			</ul>
			<p class="stxt">
				*목동 지역 단과학원_2020~2024학년도 성적향상률 비교 기준<br>
				(홈페이지 노출 기준/2024.02.29 기준)<br>
				*러셀 목동 재원생 중 87% 성적 향상 달성 <br>
				(성적제출자 298명 대상)
			</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/m_russel/common/btn_layer_close.jpg" /></span>
		</div>
	</div>
	<!-- //목동 -->
	<!-- 부천 -->
	<div class="campus-info c-bc <%=box_bc%>">
		<p class="tit">20-24 5년 연속 부천&middot;인천 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀 부천</strong></p>
		<div class="info-inner">
			<p class="tit">20-24 5년 연속 부천&middot;인천 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀 부천</strong></p>
			<ul class="txt">
				<li><strong>의치한약수 2024학년도 50명(설의1명 포함) / 2024-2020학년도 199명(설의4명,연의3명,카의1명,울의2명 포함)</strong></li>
				<li><strong>서울대 배출 2024학년도 9명 / 2024-2020학년도 45명(의예과 4명 포함) </strong></li>
				<li><strong>서울대&middot;연세대&middot;고려대 배출 2024학년도 56명 / 2024-2020학년도 200명(의예과 7명 포함)</strong></li>
			</ul>
			<p class="stxt">*부천&middot;인천 지역 학원_2020~2024학년도 의치한약수+서연고 최종 합격자 수 비교 기준<br>
				(홈페이지 대입 실적 기준/2024.02.29 기준)</p>
				<span class="bt-close"><img src="<%=Application("img_path_russel")%>/m_russel/common/btn_layer_close.jpg" /></span>
		</div>
	</div>
	<!-- //부천 -->
	<!-- 분당 -->
	<div class="campus-info c-bd <%=box_bd%>">
		<p class="tit">20-24 5년 연속 분당 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀 분당</strong></p>
		<div class="info-inner">
			<p class="tit">20-24 5년 연속 분당 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀 분당</strong></p>
			<ul class="txt">
				<li><strong>2년 연속 수능만점자 배출 [2021학년도 수능 만점자 1명 배출 / 2020학년도 수능 만점자 2명 배출]</strong></li>
				<li><strong>의치한약수+서울대&middot;연세대&middot;고려대 배출 2024학년도 251명(설의1명,연의3명,성의1명,카의4명,고의4명 포함) / 2024-2020학년도 972명(설의9명,연의6명,성의5명,카의13명,울의1명,고의10명 포함) </strong></li>
				<li><strong>서울대 배출 2024학년도 31명(의예과 1명 포함) / 2024-2020학년도 116명(의예과 9명 포함)</strong></li>
			</ul>
			<p class="stxt">*분당 지역 학원_2020~2024학년도 의치한약수+서연고 최종 합격자 수 비교 기준<br>
				(홈페이지 대입 실적 기준/2024.02.29 기준)</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/m_russel/common/btn_layer_close.jpg" /></span>
		</div>
	</div>
	<!-- //분당 -->
	<!-- 영통 -->
	<div class="campus-info c-yt <%=box_yt%>">
		<p class="tit">20-24 5년 연속 영통&middot;수원 지역<br>최상위권 입결 1위<sup>*</sup ><strong>러셀 영통</strong></p>
		<div class="info-inner">
			<p class="tit">20-24 5년 연속 영통&middot;수원 지역<br>최상위권 입결 1위<sup>*</sup ><strong>러셀 영통</strong></p>
			<ul class="txt">
				<li><strong>의치한약수 배출 2024학년도 55명 / 2024-2020학년도 220명(설의2명,연의1명,카의1명,고의2명 포함)
				</strong></li>
				<li><strong>서울대 배출 2024학년도 11명 / 2024-2020학년도 63명(의예과 2명 포함)
				</strong></li>
				<li><strong>서울대&middot;연세대&middot;고려대 배출 2024학년도 49명 / 2024-2020학년도 253명(의예과 5명 포함)</strong></li>
			</ul>
			<p class="stxt">*영통&middot;수원 지역 학원_2020~2024학년도 의치한약수+서연고 최종 합격자 수 비교 기준<br>
				(홈페이지 대입 실적 기준/2024.02.29 기준)</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/m_russel/common/btn_layer_close.jpg" /></span>
		</div>
	</div>
	<!-- //영통 -->
	<!-- 중계 -->
	<div class="campus-info c-jg <%=box_jg%>">
		<p class="tit">20-24 5년 누적 강북 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀 중계</strong></p>
		<div class="info-inner">
			<p class="tit">20-24 5년 누적 강북 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀 중계</strong></p>
			<ul class="txt">
				<li><strong>의치한약수 배출 2024학년도 27명 / 2024-2020학년도 140명(설의1명,연의1명,성의1명,카의1명,고의3명 포함) </strong></li>
				<li><strong>서울대 배출 2024학년도 14명 / 2024-2020학년도 48명(의예과 1명 포함)</strong></li>
				<li><strong>서울대&middot;연세대&middot;고려대 배출 2024학년도 40명 / 2024-2020학년도 226명(의예과 5명 포함)</strong></li>
			</ul>
			<p class="stxt">*강북 지역 학원_2020~2024학년도 의치한약수+서연고 최종 누적 합격자 수 비교 기준<br>
				(홈페이지 대입 실적 기준/2024.02.29 기준)</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/m_russel/common/btn_layer_close.jpg" /></span>
		</div>
	</div>
	<!-- //중계 -->
	<!-- 평촌 -->
	<div class="campus-info c-pc <%=box_pc%>">
		<p class="tit">20-24 5년 연속 평촌&middot;안양 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀 평촌</strong></p>
		<div class="info-inner">
			<p class="tit">20-24 5년 연속 평촌&middot;안양 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀 평촌</strong></p>
			<ul class="txt">
				<li><strong>의치한약수 배출 2024학년도 64명(설의1명,고의1명 포함) / 2024-2020학년도 277명(설의4명,연의1명,성의1명,카의1명,고의3명 포함)</strong></li>
				<li><strong>서울대 배출 2024학년도 18명(의예과 1명 포함) / 2024-2020학년도 83명(의예과 4명 포함)</strong></li>
				<li><strong>서울대&middot;연세대&middot;고려대  배출 2024학년도 73명(의예과 2명 포함) / 2024-2020학년도 338명(의예과 8명 포함)</strong></li>
			</ul>
			<p class="stxt">*평촌&middot;안양 지역 학원_2020~2024학년도 의치한약수+서연고 최종 합격자 수 비교 기준<br>
				(홈페이지 대입 실적 기준/2024.02.29 기준)</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/m_russel/common/btn_layer_close.jpg" /></span>
		</div>
	</div>
	<!-- //평촌 -->
	<!-- 대구 -->
	<div class="campus-info c-dg <%=box_dg%>">
		<p class="tit">개원 첫 해, 대구&middot;경북 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀 대구</strong></p>
		<div class="info-inner">
			<p class="tit">개원 첫 해, 대구&middot;경북 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀 대구</strong></p>
			<ul class="txt">
				<li><strong>2024학년도 대구/경북 지역 의치한약수 입결 1위</strong></li>
				<li><strong>의치한약수 배출 2024학년도 232명 / 전국 의예 116명(설의4명,연의3명,울의2명,고의1명 포함), 치한약수 116명
				</strong></li>
				<li><strong>서울대&middot;연세대&middot;고려대 배출 2024학년도 73명(의예과 8명 포함)</strong></li>
			</ul>
			<p class="stxt">*대구&middot;경북 지역 학원_2020~2024학년도 의치한약수+서연고 최종 합격자 수 비교 기준<br>
				(홈페이지 대입 실적 기준/2024.02.29 기준)</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/m_russel/common/btn_layer_close.jpg" /></span>
		</div>
	</div>
	<!-- //대구 -->
	<!-- 대전 -->
	<div class="campus-info c-dj <%=box_dj%>">
		<p class="tit">23-24 2년 연속 대전 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀 대전</strong></p>
		<div class="info-inner">
			<p class="tit">23-24 2년 연속 대전 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀 대전</strong></p>
			<ul class="txt">
				<li><strong>2년 연속 서울대 의예과 배출</strong></li>
				<li><strong>의치한약수 배출 2024학년도 74명(설의3명,연의1명,카의3명 포함) / 2024-2023학년도 146명(설의4명,연의2명,카의3명 포함)</strong></li>
				<li><strong>서울대&middot;연세대&middot;고려대 배출 2024학년도 23명(의예과 4명 포함) / 2024-2023학년도 65명(의예과 6명 포함)</strong></li>
			</ul>
			<p class="stxt">*대전 지역 학원_2023~2024학년도 의치한약수+서연고 최종 합격자 수 비교 기준<br>
			
				(홈페이지 대입 실적 기준/2024.02.29 기준)</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/m_russel/common/btn_layer_close.jpg" /></span>
		</div>
	</div>
	<!-- //대전 -->
	<!-- 센텀 -->
	<div class="campus-info c-ct <%=box_ct%>">
		<p class="tit">20-24 5년 연속 부산 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀 센텀</strong></p>
		<div class="info-inner">
			<p class="tit">20-24 5년 연속 부산 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀 센텀</strong></p>
			<ul class="txt">
				<li><strong>의치한약수 배출 2024학년도 81명(연의1명,울의1명 포함) / 2024-2020학년도 383명(설의3명,연의2명,성의3명,카의4명,울의4명,고의1명 포함)</strong></li>
				<li><strong>서울대&middot;연세대&middot;고려대 배출 2024학년도 34명(의예과 1명 포함) / 2024-2020학년도 162명(의예과 6명 포함)
				</strong></li>
				<li><strong>주요 상위권 대학 배출 2024학년도 240명 / 2024-2020학년도 870명</strong></li>
			</ul>
			<p class="stxt">*부산 지역 단과 학원_2020~2024학년도 의치한약수+서연고 최종 합격자 수 비교 기준<br>
				(홈페이지 대입 실적 기준/2024.02.22 기준)</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/m_russel/common/btn_layer_close.jpg" /></span>
		</div>
	</div>
	<!-- //센텀 -->
	<!-- 코어광주 -->
	<div class="campus-info c-gj <%=box_gj%>">
		<p class="tit">23-24 2년 연속 광주&middot;전남 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀CORE 광주</strong></p>
		<div class="info-inner">
			<p class="tit">23-24 2년 연속 광주&middot;전남 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀CORE 광주</strong></p>
			<ul class="txt">
				<li><strong>2024학년도 광주 지역 재학생 수석 배출</strong></li>
				<li><strong>의치한약수 배출 2024학년도 119명(설의2명,연의3명,성의1명,카의1명,울의2명,고의2명 포함) / 2024-2023학년도 213명(설의2명,연의5명,성의1명,카의1명,울의2명,고의5명 포함)
				</strong></li>
				<li><strong>서울대&middot;연세대&middot;고려대 배출 2024학년도 28명(의예과 7명 포함) / 2024-2023학년도 63명(의예과 12명 포함)</strong></li>
			</ul>
			<p class="stxt">*광주&middot;전남 지역 학원_2023~2024학년도 의치한약수+서연고 최종 합격자 수 비교 기준<br>
				(홈페이지 대입 실적 기준/2024.02.29 기준)<br>
				** 2024학년도 대학수학능력시험 응시한 광주 지역 재학생 표준점수 최고점 기준</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/m_russel/common/btn_layer_close.jpg" /></span>
		</div>
	</div>
	<!-- //코어광주 -->
	<!-- 코어원주 -->
	<div class="campus-info c-wj <%=box_wj%>">
		<p class="tit">개원 첫 해, 원주 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀CORE 원주</strong></p>
		<div class="info-inner">
			<p class="tit">개원 첫 해, 원주 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀CORE 원주</strong></p>
			<ul class="txt">
				<li><strong>2024학년도 원주 지역 의치한약수 입결 1위</strong></li>
				<li><strong>의치한약수 배출 2024학년도 46명(카의1명,설치1명 포함) </strong></li>
				<li><strong>서울대&middot;연세대&middot;고려대 배출 2024학년도 17명</strong></li>
			</ul>
			<p class="stxt">*원주 지역 학원_2024학년도 의치한약수+서연고 최종 합격자 수 비교 기준<br>
			
				(홈페이지 대입 실적 기준/2024.02.29 기준)</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/m_russel/common/btn_layer_close.jpg" /></span>
		</div>
	</div>
	<!-- //코어원주 -->
	<!-- 코어전주 -->
	<div class="campus-info c-jj <%=box_jj%>">
		<p class="tit">개원 첫 해, 전주&middot;전북 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀CORE 전주</strong></p>
		<div class="info-inner">
			<p class="tit">개원 첫 해, 전주&middot;전북 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀CORE 전주</strong></p>
			<ul class="txt">
				<li><strong>2024학년도 전주 지역 의치한약수 입결 1위</strong></li>
				<li><strong>의치한약수 배출 2024학년도 83명(연의3명,고의1명 포함) </strong></li>
				<li><strong>서울대&middot;연세대&middot;고려대 배출 2024학년도 18명(의예과 4명 포함)</strong></li>
			</ul>
			<p class="stxt">*전주&middot;전북 지역 학원_2024학년도 의치한약수+서연고 최종 합격자 수 비교 기준<br>
				(홈페이지 대입 실적 기준/2024.02.29 기준)</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/m_russel/common/btn_layer_close.jpg" /></span>
		</div>
	</div>
	<!-- //코어전주 -->
	<!-- 코어창원 -->
	<div class="campus-info c-cw <%=box_cw%>">
		<p class="tit">개원 첫 해, 창원 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀CORE 창원</strong></p>
		<div class="info-inner">
			<p class="tit">개원 첫 해, 창원 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀CORE 창원</strong></p>
			<ul class="txt">
				<li><strong>2024학년도 창원 지역 의치한약수 입결 1위</strong></li>
				<li><strong>의치한약수 배출 2024학년도 42명(울의1명,설치1명 포함) </strong></li>
				<li><strong>서울대&middot;연세대&middot;고려대 배출 2024학년도 10명</strong></li>
			</ul>
			<p class="stxt">*창원 지역 학원_2024학년도 의치한약수+서연고 최종 합격자 수 비교 기준<br>
				(홈페이지 대입 실적 기준/2024.02.29 기준)</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/m_russel/common/btn_layer_close.jpg" /></span>
		</div>
	</div>
	<!-- //코어창원 -->
	<!-- 코어청주 -->
	<div class="campus-info c-cj <%=box_cj%>">
		<p class="tit">개원 첫 해, 청주 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀CORE 청주</strong></p>
		<div class="info-inner">
			<p class="tit">개원 첫 해, 청주 지역<br>최상위권 입결 1위<sup>*</sup> <strong>러셀CORE 청주</strong></p>
			<ul class="txt">
				<li><strong>2024학년도 청주 지역 의치한약수 입결 1위</strong></li>
				<li><strong>의치한약수 배출 2024학년도 17명</strong></li>
				<li><strong>서울대&middot;연세대&middot;고려대 배출 2024학년도 9명</strong></li>
			</ul>
			<p class="stxt">*청주 지역 학원_2024학년도 의치한약수+서연고 최종 합격자 수 비교 기준<br>
			
				(홈페이지 대입 실적 기준/2024.02.29 기준)</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/m_russel/common/btn_layer_close.jpg" /></span>
		</div>
	</div>
	<!-- //코어청주 -->
	<!-- 기숙 -->
	<div class="campus-info c-yj <%=box_yj%>">
		<p class="tit">20-24 5년 누적<br>메가스터디 전체 35개학원 中<br>의치한수약 입결 1위<sup>*</sup> <strong>러셀 기숙</strong></p>
		<div class="info-inner">
			<p class="tit">20-24 5년 누적<br>
			메가스터디 전체 35개학원 中<br>의치한수약 입결 1위<sup>*</sup> <strong>러셀 기숙</strong></p>
			<ul class="txt">
				<li><strong>의치한약수 배출 2024학년도 209명(연의1명,카의1명,고의3명 포함) / 2024-2020학년도 821명(연의5명,성의2명,카의3명,울의3명,고의8명 포함)</strong></li>
				<li><strong>서울대 배출 2024학년도 21명 / 2024-2020학년도 62명</strong></li>
				<li><strong>서울대&middot;연세대&middot;고려대 배출 2024학년도 129명(의예과 4명 포함) / 2024-2020학년도 382명(의예과 13명 포함)</strong></li>
			</ul>
			<p class="stxt">*메가스터디 전체학원 내 2020~2024학년도 의치한약수 합격자 수 기준
				(홈페이지 대입 실적 기준/2024.02.29 기준)</p>
			<span class="bt-close"><img src="<%=Application("img_path_russel")%>/m_russel/common/btn_layer_close.jpg" /></span>
		</div>
	</div>
	<!-- //기숙 -->

    <p class="r-txt">*부천&middot;인천 지역/분당 지역/영통&middot;수원 지역/강북 지역/평촌&middot;안양 지역/<br>
        대구&middot;경북 지역/부산 지역/광주&middot;전남 지역/대전 지역/원주 지역/<br>
        전주&middot;전북 지역/창원 지역/청주 지역 학원_2020~2024학년도 홈페이지 <br>
        의치한수약+서연고 최종 합격자 노출 수 비교 기준 (2024.02.29 기준)</p>
</div>

<script>
	$(function(){
		var url 	= window.location.href;
		var $map_wrap	= $('.map-wrapper');
		var $map_tit	= $('.map-tit')

		if(url.indexOf('perfect') > -1){
			// 대입합격현황
			$map_wrap.addClass('map-perfect')
			$map_tit.addClass('map-perfect');
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