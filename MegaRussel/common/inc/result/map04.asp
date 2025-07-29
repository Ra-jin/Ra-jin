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
<link rel="stylesheet" type="text/css" href="/common/css/2024/map03.css" />
<div class="map-wrap">
	<p><img src="<%=Application("img_path_russel")%>/perfect/2025/susi/cont05_img.jpg" alt="지도" /></p>

	<!--지도 내에 학원별 핑-->
	<div class="pin ico-jg">
		<img src="<%=Application("img_path_russel")%>/perfect/2025/susi/ico_jg.png" alt="중계" />
		<div class="h-cont jg">
			<p>
				<strong class="main-tit">서울 지역 러셀학원 내 주요 대학 입결 상승률 1위!* [러셀 중계]</strong>
				<ul class="list-04">
					<li>의예과 배출 2025학년도 26명 / 전년대비 117% 증가(성의 2명, 고의 1명 배출)</li>
					<li>의치한약수 배출 2025학년도 52명 / 전년대비 93% 증가 </li>
					<li>서연고 배출 2025학년도 57명 / 전년대비 43% 증가</li>
					<li>서성한이 배출 2025학년도 53명 / 전년대비 56% 증가</li>
				</ul>
				<span class="sub-txt">
					* 2025학년도 러셀 중계 바른공부 자습전용관 재원생 기준 <br>
					* 2024학년도 합격자 대비 2025학년도 합격자 증가율 <br>
					* 중복 대학 합격자 수 포함(2025.3.18 기준)
				</span>
			</p>
		</div>
	</div>
	<div class="pin ico-bc">
		<img src="<%=Application("img_path_russel")%>/perfect/2025/susi/ico_bc.png" alt="부천" />
		<div class="h-cont bc">
			<p>
				<strong class="main-tit">2020~2025학년도 6년 연속 메가스터디 내 부천·인천 지역 <br> 최상위권 입결 1위* [러셀 부천]</strong>
				<ul class="list-04">
					<li>의치한약수 2025학년도 48명</li>
					<li>서울대 배출 2025학년도 14명</li>
					<li>서연고 배출 2025학년도 64명</li>
				</ul>
				<span class="sub-txt">
					* 부천&middot;인천 지역 메가스터디 학원_2020~2025학년도 의치한약수+서연고 최종 합격자 수 비교 기준 <br>
					(홈페이지 대입 실적 기준/2025.02.21 기준)
				</span>
			</p>
		</div>
	</div>
	<div class="pin ico-md">
		<img src="<%=Application("img_path_russel")%>/perfect/2025/susi/ico_md.png" alt="목동" />
		<div class="h-cont md">
			<p>
				<strong class="main-tit">2021~2025학년도 5년 연속 목동 지역 단과학원<br>성적 향상률 1위* [러셀 목동]</strong>
				<ul class="list-04">
					<li>서울대 의예과 3년 연속 배출</li>
					<li>의치한약수 배출 2025학년도 70명, 2021~2025학년도 237명</li>
					<li>서연고 배출 2025학년도 90명, 2021~2025학년도 253명 </li>
					<li>러셀 목동 극상위권 의치한약수+서연고 160명 - 전년대비 56.86% 성장 </li>
					<li>러셀 목동 재원생 86% 성적 향상(2024~2025학년도 수능 성적표 제출 332명 대상 산출)</li>
				</ul>
				<span class="sub-txt">
					* 목동 지역 단과학원_2021~2025학년도 성적 향상률 비교 기준 (홈페이지 노출 기준/2025.02.26 기준) <br>
					* 러셀 목동 재원생 중 86% 성적 향상 달성 (2024~2025학년도 수능 성적표 제출자 332명 대상)
				</span>
			</p>
		</div>
	</div>
	<div class="pin ico-gn">
		<img src="<%=Application("img_path_russel")%>/perfect/2025/susi/ico_gn.png" alt="강남" />
		<div class="h-cont gn">
			<p>
				<strong class="main-tit">러셀 내 최상위권 대학 입결 1위* [러셀 강남]</strong>
				<ul class="list-04">
					<li>2019학년도 수능 만점자 배출 </li>
					<li>서울대 의예과 5년 연속 배출</li>
					<li>2018~2025학년도 의치한약수 711명, 최상위권 대학 2,819명(서울대 132명, 연세대 271명, 고려대 291명 포함)</li>
					<li>2025학년도 전국 의예과 입결 전년대비 126% 증가(61명)</li>
				</ul>
				<span class="sub-txt">
					* 러셀 전 학원 내 2018~2025학년도 최상위권 대학 합격자 수 기준
				</span>
			</p>
		</div>
	</div>
	<div class="pin ico-dc">
		<img src="<%=Application("img_path_russel")%>/perfect/2025/susi/ico_dc.png" alt="대치" />
		<div class="h-cont dc">
			<p>
				<strong class="main-tit">2018~2025학년도 8년 연속 최상위권 점유율 1위* [러셀 대치]</strong>
				<ul class="list-04">
					<li>2018학년도 수능 만점자 배출 / 2020학년도 수능 만점자 배출 / 2021학년도 수능 전국 수석 배출 / 2025학년도 수능 만점자 배출</li>
					<li>의치한약수+서연고 배출 2025학년도 424명(설의 5명, 연의 5명, 성의 3명, 카의 2명, 울의 2명, 고의 4명 포함) / 2018~2025학년도 2,161명(설의 28명, 연의 20명, 성의 9명, 카의 27명, 울의 7명, 고의 26명 포함)</li>
					<li>서울대 배출 2025학년도 53명(의예과 5명 포함) / 2018~2025학년도 282명(의예과 28명 포함)</li>
				</ul>
				<span class="sub-txt">
					* 러셀 전 학원 내 2018~2025학년도 최상위권반(HS반/서의치대반) 재원생 점유율 기준
				</span>
			</p>
		</div>
	</div>
	<div class="pin ico-pc">
		<img src="<%=Application("img_path_russel")%>/perfect/2025/susi/ico_pc.png" alt="평촌" />
		<div class="h-cont pc">
			<p>
				<strong class="main-tit">2020~2025학년도 6년 연속 평촌&middot;안양 지역 <br> 최상위권 입결 1위* [러셀 평촌]</strong>
				<ul class="list-04">
					<li>의치한약수 배출 2025학년도 58명(연의 1명, 고의 1명 포함) / 2018~2025학년도 372명 (설의 4명, 연의 2명, 성의 1명, 카의 1명, 고의 6명 포함)</li>
					<li>서울대 배출 2025학년도 16명 / 2018~2025학년도 116명(의예과 4명 포함) </li>
					<li>서연고 배출 2025학년도 78명(의예과 2명 포함) / 2018~2025학년도 472명(의예과 12명 포함)</li>
					<li>주요 대학 배출 2025학년도 498명 / 2018~2025학년도 5,173명</li>
				</ul>
				<span class="sub-txt">
					* 평촌&middot;안양 지역 학원_2020~2025학년도 의치한약수+서연고 최종 합격자 수 비교 기준 <br> (홈페이지 대입 실적 기준/2025.03.20 기준)
				</span>
			</p>
		</div>
	</div>
	<div class="pin ico-bd">
		<img src="<%=Application("img_path_russel")%>/perfect/2025/susi/ico_bd.png" alt="분당" />
		<div class="h-cont bd">
			<p>
				<strong class="main-tit">2020~2025학년도 6년 연속 분당 지역 <br>최상위권 입결 1위* [러셀 분당]</strong>
				<ul class="list-04">
					<li>역대 수능 만점자 총 4명 배출[2020학년도 2명, 2021학년도 1명, 2025학년도 1명](재원 이력이 있는 학생 중 수능 실채점 만점자) </li>
					<li>6년 연속 서울대 의예과 배출[2020학년도 3명, 2021학년도 2명, 2022학년도 2명, 2023학년도 1명, 2024학년도 1명, 2025학년도 1명] </li>
					<li>의치한약수+서연고 배출 2025학년도 306명(설의 1명, 연의 1명, 성의 6명, 카의 1명, 고의 3명 포함) / 2020~2025학년도 1,277명(설의 10명, 연의 7명, 성의 11명, 카의 14명, 울의 1명, 고의 13명 포함) </li>
					<li>서울대 배출 2025학년도 35명(의예과 1명 포함) / 2020~2025학년도 151명(의예과 10명 포함)</li>
				</ul>
				<span class="sub-txt">
					* 대입 결과를 공개한 분당 지역 학원_2020~2025학년도 의치한약수+서연고 합격생 수 비교 기준 <br> (홈페이지 대입 실적 기준/2025.03.01 기준)
				</span>
			</p>
		</div>
	</div>
	<div class="pin ico-yt">
		<img src="<%=Application("img_path_russel")%>/perfect/2025/susi/ico_yt.png" alt="영통" />
		<div class="h-cont yt">
			<p>
				<strong class="main-tit">2025학년도 영통&middot;수원 지역 <br> 최상위권 대학 입결 1위* [러셀 영통]</strong>
				<ul class="list-04">
					<li>의치한약수 배출 2025학년도 80명 / 2020~2025학년도 299명(설의 2명, 연의 2명, 카의 3명, 고의 3명 포함)</li>
					<li>서울대 배출 2025학년도 13명 / 2020~2025학년도 76명(의예과 2명 포함) </li>
					<li>서연고 배출 2025학년도 77명 / 2020~2025학년도 327명(의예과 7명 포함)</li>
				</ul>
				<span class="sub-txt">
					* 영통&middot;수원 지역 학원_2025학년도 의치한약수+서연고 최종 합격자 수 비교 기준 <br> (홈페이지 대입 실적 기준/2025.03.12 기준)
				</span>
			</p>
		</div>
	</div>
	<div class="pin ico-wj">
		<img src="<%=Application("img_path_russel")%>/perfect/2025/susi/ico_wj.png" alt="코어원주" />
		<div class="h-cont wj">
			<p>
				<strong class="main-tit">2024~2025학년도 원주 지역 <br> 최상위권 입결 1위* [러셀CORE 원주]</strong>
				<ul class="list-04">
					<li>2024~2025학년도 원주 지역 의치한약수 입결 1위</li>
					<li>2024~2025학년도 2년 연속 의대 25명 이상 배출(2024학년도 25명, 2025학년도 29명 합격)</li>
					<li>의치한약수 배출 2024학년도 46명(카의 1명, 설치 1명 포함) / 2025학년도 50명</li>
					<li>서연고 배출 2024학년도 17명 / 2025학년도 9명</li>
				</ul>
				<span class="sub-txt">
					* 원주 지역 학원_2024~2025학년도 의치한약수+서연고 최종 합격자 수 비교 기준 <br> (홈페이지 대입 실적 기준/2025.02.22 기준)
				</span>
			</p>
		</div>
	</div>
	<div class="pin ico-cj">
		<img src="<%=Application("img_path_russel")%>/perfect/2025/susi/ico_cj.png" alt="코어청주" />
		<div class="h-cont cj">
			<p>
				<strong class="main-tit">2025학년도 청주 지역 <br> 최상위권 입결 1위* [러셀CORE 청주]</strong>
				<ul class="list-04">
					<li>2025학년도 청주 지역 의치한약수 입결 1위</li>
					<li>의치한약수 28명 합격, 전국 의예과 14명 합격</li>
					<li>서연고 2025학년도 15명 합격</li>
				</ul>
				<span class="sub-txt">
					* 대입 결과를 공개한 청주 지역 학원_2025학년도 의치한약수+서연고 최종 합격자 수 비교 기준 <br> (홈페이지 대입 실적 기준/2025.03.19 기준)
				</span>
			</p>
		</div>
	</div>
	<div class="pin ico-dj">
		<img src="<%=Application("img_path_russel")%>/perfect/2025/susi/ico_dj.png" alt="코어대전" />
		<div class="h-cont dj">
			<p>
				<strong class="main-tit">2023~2025학년도 3년 연속 대전 지역 <br> 최상위권 입결 1위* [러셀 대전]</strong>
				<ul class="list-04">
					<li>3년 연속 서울대 의예과 배출</li>
					<li>의치한약수 배출 2025학년도 126명(설의 4명, 연의 1명, 카의 1명 포함) / 2023~2025학년도 272명(설의 8명, 연의 3명, 카의 4명 포함)</li>
					<li>서연고 배출 2025학년도 20명(의예과 5명 포함) / 2023~2025학년도 85명(의예과 11명 포함)</li>
				</ul>
				<span class="sub-txt">
					* 대전 지역 학원_2023~2025학년도 의치한약수+서연고 최종 합격자 수 비교 기준 <br> (홈페이지 대입 실적 기준/2025.03.12 기준)
				</span>
			</p>
		</div>
	</div>
	<div class="pin ico-jj">
		<img src="<%=Application("img_path_russel")%>/perfect/2025/susi/ico_jj.png" alt="코어전주" />
		<div class="h-cont jj">
			<p>
				<strong class="main-tit">2024~2025학년도 2년 연속 전주·전북 지역 <br> 최상위권 입결 1위*[러셀 CORE 전주]</strong>
				<ul class="list-04">
					<li>2년 연속 메이저 의예과 배출(2024~2025학년도)</li>
					<li>의치한약수 배출 2025학년도 68명</li>
					<li>2025학년도 전국 의예과 36명 배출(카의 1명, 성의 1명 포함)</li>
					<li>2024~2025학년도 의치한약수 151명(연의 3명, 성의 1명, 카의 1명, 고의 1명 포함)</li>
				</ul>
				<span class="sub-txt">
					* 전주&middot;전북 지역 학원_2024~2025학년도 의치한약수+서연고 최종 합격자 수 비교 기준 <br> (홈페이지 대입 실적 기준/2025.02.28 기준)
				</span>
			</p>
		</div>
	</div>
	<div class="pin ico-gj">
		<img src="<%=Application("img_path_russel")%>/perfect/2025/susi/ico_gj.png" alt="코어광주" />
		<div class="h-cont gj">
			<p>
				<strong class="main-tit">2023~2025학년도 3년 연속 광주&middot;전남 지역 <br> 최상위권 입결 1위* [러셀CORE 광주]</strong>
				<ul class="list-04">
					<li>2년 연속 서울대 의예과 배출(2024~2025학년도)</li>
					<li>의치한약수 배출 2025학년도 155명(설의 1명, 연의 3명, 성의 1명, 카의 3명, 울의 2명, 고의 1명 포함) / 2023~2025학년도 368명(설의 3명, 연의 8명, 성의 2명, 카의 4명, 울의 4명, 고의 6명 포함)</li>
					<li>서연고 배출 2025학년도 33명(의예과 5명 포함) / 2023~2025학년도 96명(의예과 17명 포함)</li>
				</ul>
				<span class="sub-txt">
					* 광주&middot;전남 지역 학원_2023~2025학년도 의치한약수+서연고 최종 합격자 수 비교 기준 <br> (홈페이지 대입 실적 기준/2025.02.28 기준)
				</span>
			</p>
		</div>
	</div>
	<div class="pin ico-dg">
		<img src="<%=Application("img_path_russel")%>/perfect/2025/susi/ico_dg.png" alt="대구" />
		<div class="h-cont dg">
			<p>
				<strong class="main-tit">올해도 러셀 대구는 ‘결과’로 증명해냈습니다. <br> 대구·경북 지역 최상위권 입결 1위* [러셀 대구]</strong>
				<ul class="list-04">
					<li>2025학년도 대구·경북 지역 의치한약수 입결 1위</li>
					<li>의치한약수 배출 2025학년도 350명 / 전국 의예 216명(연의 1명, 성대 6명, 울의 3명, 가의 3명 포함), 치한약수 134명</li>
					<li>서연고 배출 2025학년도 87명</li>
				</ul>
				<span class="sub-txt">
					* 대구&middot;경북 지역 학원_2020~2025학년도 의치한약수+서연고 최종 합격자 수 비교 기준 <br> (홈페이지 대입 실적 기준/2025.03.03 기준)
				</span>
			</p>
		</div>
	</div>
	<div class="pin ico-us">
		<img src="<%=Application("img_path_russel")%>/perfect/2025/susi/ico_us.png" alt="울산" />
		<div class="h-cont us">
			<p>
				<strong class="main-tit">개원 첫해, 울산 지역 <br> 최상위권 입결 1위*  [러셀 울산]</strong>
				<ul class="list-04">
					<li>2025학년도 울산 지역 의치한약수 입결 1위</li>
					<li>의치한약수 배출 2025학년도 58명(울의 2명 포함)</li>
					<li>서연고 배출 2025학년도 28명</li>
				</ul>
				<span class="sub-txt">
					* 울산 지역 학원_2025학년도 의치한약수+서연고 최종 합격자 수 비교 기준 <br> (홈페이지 대입 실적 기준/2025.02.28 기준)
				</span>
			</p>
		</div>
	</div>
	<div class="pin ico-ct">
		<img src="<%=Application("img_path_russel")%>/perfect/2025/susi/ico_ct.png" alt="센텀" />
		<div class="h-cont ct">
			<p>
				<strong class="main-tit">2020~2025학년도 6년 연속 부산 지역 <br> 최상위권 입결 1위* [러셀 센텀]</strong>
				<ul class="list-04">
					<li>의치한약수 배출 2025학년도 106명(연의 1명, 카의 1명, 성의 1명, 울의 5명 포함) / 2020~2025학년도 489명(설의 3명, 연의 3명, 성의 4명, 카의 5명, 울의 9명, 고의 1명 포함)</li>
					<li>서연고 배출 2025학년도 31명(의예과 1명 포함) / 2020~2025학년도 193명(의예과 7명 포함)</li>
					<li>주요 상위권 대학 배출 2025학년도 330명 / 2020~2025학년도 1,200명</li>
				</ul>
				<span class="sub-txt">
					* 부산 지역 단과 학원_2020~2025학년도 의치한약수+서연고 최종 합격자 수 비교 기준 <br> (홈페이지 대입 실적 기준/2025.03.01 기준)
				</span>
			</p>
		</div>
	</div>
	<div class="pin ico-cw">
		<img src="<%=Application("img_path_russel")%>/perfect/2025/susi/ico_cw.png" alt="코어창원" />
		<div class="h-cont cw">
			<p>
				<strong class="main-tit">2025학년도 창원 지역 의치한약수 입결 1위* <br> [러셀CORE 창원]</strong>
				<ul class="list-04">
					<li>전국 의예과 2025학년도 44명(설의 1명, 연의 1명, 카의 1명, 울의 5명, 성의 2명, 고의 1명 포함)</li>
					<li>의치한약수 배출 2025학년도 63명</li>
				</ul>
				<span class="sub-txt">
					* 창원 지역 학원_2025학년도 의치한약수+서연고 최종 합격자 수 비교 기준 <br> (홈페이지 대입 실적 기준/2025.02.28 기준)
				</span>
			</p>
		</div>
	</div>
	<div class="pin ico-gisuk">
		<img src="<%=Application("img_path_russel")%>/perfect/2025/gisuk_pass/ico_gisuk.png" alt="기숙 전체" />
		<div class="h-cont gisuk">
			<p>
				<strong class="main-tit">메가스터디 전체 학원 내 <br> 최상위권 의치한약수 입결 1위* [러셀 기숙]</strong>
				<ul class="list-04">
					<li>의치한약수 배출 2025학년도 480명(설의 1명, 성의 1명, 고의 1명 포함) / 2020~2025학년도 1,301명</li>
					<li>서울대 배출 2025학년도 31명 / 2020~2025학년도 93명</li>
					<li>서연고 배출 2025학년도 158명(의예과 2명 포함) / 2020~2025학년도 540명(의예과 15명 포함)</li>
				</ul>
				<span class="sub-txt">
					* 메가스터디 전체 학원 내 2020~2025학년도 의치한약수 합격자 수 기준 <br> (홈페이지 대입 실적 기준/2025.03.06 기준)
				</span>
			</p>
		</div>
	</div>
</div>

<script>
	// $(function(){
	// 	var url 	= window.location.href;
	// 	var $map_wrap	= $('.map-wrapper');
	// 	var $map_tit	= $('.map-tit')
	// 	var $map 	= $('.map-wrapper .tac img');

	// 	//페이지별 수정 작업
	// 	if(url.indexOf('perfect') > -1){
	// 		// 대입합격현황
	// 		$map.attr('src','<%=Application("img_path_russel")%>/common/inc/result/map02.png')
	// 		$map_wrap.addClass('map-perfect')
	// 		$map_tit.addClass('map-perfect');
	// 	}else if(url.indexOf('csat') > -1){
	// 		// 2025 수능실전모의체험
	// 		$map.attr('src','<%=Application("img_path_russel")%>/intro/2024/csat/map_bg.png')
	// 		$('.c-yj').css('display', 'none');

	// 	}else if(url.indexOf('success') > -1 || url.indexOf('success') > -1){
	// 		// 대입성공story
	// 		$map_wrap.addClass('map-success')
	// 		$map_tit.addClass('map-success');
	// 	}

	// 	$('.campus-info > .tit').on('click',function(){
	// 		$('.info-inner').css('display','none')
	// 		$('.info-inner').add('.campus-info').removeClass('on')
	// 		$(this).parent().addClass('on')
	// 		$(this).next().addClass('on')
	// 	})
	// 	$('.bt-close').on('click',function(){
	// 		$('.info-inner').css('display','none')
	// 		$(this).parent().removeClass('on')
	// 	});
	// })

</script>
