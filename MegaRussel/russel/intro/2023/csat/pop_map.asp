
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<%
	sel = VARS("sel")

	If sel <> "" Then
		If sel = "러셀강남" Then
			locNumber = 0
		ElseIf sel = "러셀대치" Then
			locNumber = 1
		ElseIf sel = "러셀목동" Then
			locNumber = 2
		ElseIf sel = "러셀부천" Then
			locNumber = 3
		ElseIf sel = "러셀분당" Then
			locNumber = 4
		ElseIf sel = "러셀영통" Then
			locNumber = 5
		ElseIf sel = "러셀중계" Then
			locNumber = 6
		ElseIf sel = "러셀평촌" Then
			locNumber = 7
		ElseIf sel = "러셀대구" Then
			locNumber = 8
		ElseIf sel = "러셀센텀" Then
			locNumber = 9
		ElseIf sel = "러셀울산" Then
			locNumber = 10
		ElseIf sel = "러셀CORE 광주" Then
			locNumber = 11
		ElseIf sel = "러셀CORE 대전" Then
			locNumber = 12
		ElseIf sel = "러셀CORE 원주" Then
			locNumber = 13
		ElseIf sel = "러셀CORE 전주" Then
			locNumber = 14
		ElseIf sel = "러셀CORE 창원" Then
			locNumber = 15
		ElseIf sel = "러셀CORE 청주" Then
			locNumber = 16
		ElseIf sel = "온라인" Then
			locNumber = 0
		End If		
		
	Else
		locNumber = 999
	End If
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="title" content="메가패스" />
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->	
	<link rel="stylesheet" type="text/css" href="/common/css/2021/pop.css" />
	<style>
		.pop-info .pop-tab li {width:25%;border:1px solid #e4e4e4;border-left:none;}
		.pop-info .pop-tab li:nth-child(4n-3) {border-left:1px solid #e4e4e4}
		.pop-info .pop-tab li a {text-decoration: none;}
		.pop-info .pop-tab span {display: block;cursor:pointer;padding: 11px 0;font-size: 20px;font-weight: 400;background: #f5f5f5;color: #7f7f7f;}
		.pop-info .pop-tab .ico-new {position:relative}
		.pop-info .pop-tab .ico-new:after {content:'';background:url("https://russeldata.megastudy.net/campus/images/russel/intro/2023/first/ic_new.gif") no-repeat 0 0;width:7px;height:7px;position:absolute;top:18px;right:38px;}
	</style>
</head>
<body>
<div class="popup">
  <h1 class="">러셀 수능 실전 모의체험 응시장소</h1>
  <!--[D] 선택시 selected 추가 -->
	<div class="pop-info">		
		<ul class="pop-tab">
			<li><a href="#" class="on">강남</a></li>
			<li><a href="#">대치</a></li>
			<li><a href="#">목동</a></li>
			<li><a href="#">부천</a></li>
			<li><a href="#">분당</a></li>
			<li><a href="#">영통</a></li>
			<li><a href="#">중계</a></li>
			<li><a href="#">평촌</a></li>
			<li><a href="#">대구</a></li>
			<li><a href="#">센텀</a></li>
			<li><a href="#" class="ico-new">울산</a></li>
			<li><a href="#">광주</a></li>
			<li><a href="#">대전</a></li>
			<li><a href="#">원주</a></li>
			<li><a href="#">전주</a></li>
			<li><a href="#">창원</a></li>
			<li><a href="#">청주</a></li>
		</ul>
		<div class="location on" id="loc0" >
			<h4>강남 (러셀 강남학원)</h4>
			<p>서울 서초구 사임당로 178  이즈타워 2층<br>서울 서초구 서초동 1337-14 이즈타워 2층<br>강남역 신분당선 5번 출구(도보 5분)</p>
			<p>02-6954-1010</p>
			<div><img src="<%=Application("img_path_russel")%>/notice/2019/mocktest/gn_map.jpg" alt="" /></div>
		</div>
		<div class="location" id="loc1" >
			<h4>대치 (러셀 대치학원)</h4>
			<p>서울시 강남구 남부순환로 2942 풍림빌딩 6~7층<br>서울 강남구 대치1동 507-1 풍림빌딩 6~7층<br>3호선 대치역 8번 출구 옆 하나은행 건물<br>02-2138-1010</p>
			<div><img src="<%=Application("img_path_russel")%>/notice/2019/mocktest/dc_map.jpg" alt="" /></div>
		</div>

		<div class="location" id="loc2" >
			<h4>목동 (러셀 목동학원)</h4>
			<p>서울 양천구 신월로 358 남부필타운 7층 (르노삼성자동차 건물)<br>서울 양천구 신정동 1018-5 (남부필타운 7층)<br>남부지방법원에서 신정네거리역 사거리 방향 도보 2분<br>02-6932-1010</p>
			<div><img src="<%=Application("img_path_russel")%>/notice/2019/mocktest/md_map.jpg" alt="" /></div>
		</div>	

		<div class="location" id="loc3" >
			<h4>부천 (러셀 부천학원)</h4>
			<p>경기도 부천시 길주로 231 크리스탈 빌딩 3층<br>경기도 부천시 중동 1035-1 크리스탈빌딩 3층<br>7호선 부천시청역 5번 출구 도보 5분<br>032-265-1010</p>
			<div><img src="<%=Application("img_path_russel")%>/notice/2019/mocktest/bc_map02.jpg" alt="" /></div>
		</div>
		<div class="location" id="loc4" >
			<h4>분당 (러셀 분당학원)</h4>
			<p>경기도 성남시 분당구 성남대로 381 폴라리스빌딩 4층<br>경기도 성남시 분당구 정자동 15-3 폴라리스빌딩 4층<br>신분당선 정자역 5번 출구 도보 1분<br>031-629-1010</p>
			<div><img src="<%=Application("img_path_russel")%>/notice/2019/mocktest/bd_map.jpg" alt="" /></div>
		</div>

		<div class="location" id="loc5" >
			<h4>영통 (러셀 영통학원)</h4>
			<p>경기도 수원시 영통구 봉영로 1623 드림피아 빌딩 4층<br>경기도 수원시 영통구 영통동 958-1, 드림피아 빌딩 4층<br>분당선 영통역 8번 출구 도보 5분<br>031-251-1010</p>
			<div><img src="<%=Application("img_path_russel")%>/notice/2019/mocktest/yt_map.jpg" alt="" /></div>
		</div>
		<div class="location" id="loc6" >
			<h4>중계 (러셀 중계학원)</h4>
			<p>서울시 노원구 한글비석로 242 삼부프라자 5층<br>서울시 노원구 중계동 364-19 삼부프라자 5층<br>중계동 은행사거리 학원가<br>02-6316-1010</p>
			<div><img src="<%=Application("img_path_russel")%>/notice/2019/mocktest/jg_map.jpg" alt="" /></div>
		</div>
		<div class="location" id="loc7" >
			<h4>평촌 (러셀 평촌학원) </h4>
			<p>경기도 안양시 동안구 평촌대로 125 진평프라자 2층<br>경기도 안양시 동안구 호계동 1065-1 진평프라자 2층<br>평촌 학원가(평촌 먹거리촌 5문 앞)<br>031-341-6500</p>
			<div><img src="<%=Application("img_path_russel")%>/notice/2019/mocktest/pc_map.jpg" alt="" /></div>
		</div>	

		<div class="location" id="loc8" >
			<h4>대구 (러셀 대구학원)</h4>
			<p>대구광역시 수성구 달구별대로 2472, 6층<br>
			수성구청역 2번출구, 도보 3분<br>
			범어역 7번 출구, 도보 6분<br>053) 291-1010</p>
			<div><img src="<%=Application("img_path_russel")%>/russel_dg/intro/map.jpg" alt="" /></div>
		</div>
		<div class="location" id="loc9" >
			<h4>센텀 (러셀 센텀학원)</h4>
			<p>부산광역시 해운대구 센텀2로 29 메커스빌딩 11층<br>부산광역시 해운대구 우동 1509 센텀메커스빌딩 11층<br>부산 2호선 센텀시티역 9번 출구 도보 5분<br>051-715-1010</p>
			<div><img src="<%=Application("img_path_russel")%>/notice/2019/mocktest/ct_map.jpg" alt="" /></div>
		</div>
		<div class="location" id="loc10" >
			<h4>울산 (러셀 울산학원)</h4>
			<p>울산광역시 남구 문수로 370, 세진빌딩 3층 <br>울산광역시 남구 옥동 248-2, 세진빌딩 3층<br>052-913-1010</p>
			<div><img src="<%=Application("img_path_russel")%>/intro/2022/csat/pop_map_us.jpg" alt="" /></div>
		</div>
		<div class="location" id="loc11" >
			<h4>광주 (러셀CORE 광주학원)</h4>
			<p>광주 남구 봉선동112 봉선센트럴빌딩 2,3,4층 [입학상담 4층]<br>062-462-1010</p>
			<div><img src="<%=Application("img_path_russel")%>/intro/2022/csat/pop_map_gj.jpg" alt="" /></div>
		</div>	
		<div class="location" id="loc12" >
			<h4>대전 (러셀CORE 대전학원)</h4>
			<p>대전 서구 둔산로123번길21, 엠시티타워 5,6층<br>시청역 5번 출구(도보 5분 이내)<br>042-381-2020</p>
			<div><img src="<%=Application("img_path_russel")%>/intro/2022/csat/pop_map_dj.jpg" alt="" /></div>
		</div>	
		<div class="location" id="loc13" >
			<h4>원주 (러셀CORE 원주학원)</h4>
			<p>강원도 원주시 능라동길 25 우성타워 3-5층<br>
				강원도 원주시 무실동 1857-18 우성타워 3-5층<br>수성구청역 2번출구, 도보 3분<br>
				범어역 7번 출구, 도보 6분
			<br>033-901-2020</p>
			<div><img src="<%=Application("img_path_russel")%>/core_wj/intro/map.jpg" alt="" /></div>
		</div>	
		<div class="location" id="loc14" >
			<h4>전주 (러셀CORE 전주학원)</h4>
			<p>전북 전주시 완산구 홍산로 262 코아루성우아르데코 2층<br>전북 전주시 완산구 효자동3가 1531-1 코아루성우아르데코 2층<br>063) 905-3030</p>
			<div><img src="<%=Application("img_path_russel")%>/intro/2022/csat/pop_map_jj.jpg" alt="" /></div>
		</div>	
		<div class="location" id="loc15" >
			<h4>창원 (러셀CORE 창원학원)</h4>
			<p>경남 창원시 성산구 중앙대로 64 신텍타워 15-16층<br>경남 창원시 성산구 상남동 74-6 신텍타워 15-16층<br>055) 605-1010</p>
			<div><img src="<%=Application("img_path_russel")%>/intro/2022/csat/pop_map_cw.jpg" alt="" /></div>
		</div>	
		<div class="location" id="loc16" >
			<h4>청주 (러셀CORE 청주학원)</h4>
			<p>충북 청주시 흥덕구 가경동 648-6, 6층-7층<br>043) 908-1010</p>
			<div><img src="<%=Application("img_path_russel")%>/intro/2022/csat/pop_map_cj.jpg" alt="" /></div>
		</div>	
	</div>
</div>
</body>
<script type="text/javascript">
    $(document).ready(function () {
		if('<%=locNumber%>' != '999'){
			$(".pop-tab li a").removeClass("on");
			$(".pop-tab li a").eq('<%=locNumber%>').addClass("on");
			$(".location").hide();
			$("#loc" + <%=locNumber%>).show();
		}
		
        $(".pop-tab li a").click(function () {
            var selOrd = $(".pop-tab li a").index(this);
                $(".pop-tab li a").removeClass("on");
                $(this).addClass("on");
                $(".location").hide();
                $("#loc" + selOrd).show();
        })
    });
	// 온라인 문의 팝업
	function fn_qnaGo() {
		
		<% If gLoginOk = false Then %>
			alert("로그인 후 이용가능합니다.");
			location.href="/russel/member/login.asp?rtnUrl=%2Frussel%2Finfo%2Fqna%2Fqna_write%2Easp?mode=russelus_qna"
			return;
		<% else %>
			window.open('/russel/info/qna/qna_write.asp?mode=russelus_qna')
		<% End If %>

	}
</script>
</html>


