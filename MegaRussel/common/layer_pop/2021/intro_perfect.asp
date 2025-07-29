
<style>
	.layer-mask {position: fixed;top:0;left:0;width:100%;height:100%;background:#000;opacity:.8;z-index:102}
	.layer-perfect-2021 {position: fixed;top:50%;left:50%;transform:translateX(-50%);margin-top:-336px;width:auto;text-align:center;z-index:103;}
	.layer-perfect-2021.dc {top:45%;}
	.layer-perfect-2021 .perfect-2021 {position: relative;display:inline-block;width:auto;font-size:0;line-height:0;margin:0 auto;background:#fff}
	.layer-perfect-2021 .perfect-2021 .close-layer {position: absolute;top:-30px;right:0;line-height:0;font-size: 30px;color:#fff;font-family: Verdana, Geneva, Tahoma, sans-serif;text-decoration: none;}

	.perfect-2021 .layer-bottom{padding:10px;background:#111;}
	.perfect-2021 .layer-bottom:after{content:'';display:block;clear:both;}
	.perfect-2021 .layer-bottom label{float:right;color:#fff;font-size:13px;letter-spacing:-1px;}
	.perfect-2021 .data{position:absolute;bottom:53px;right:30px;}
	.perfect-2021 .data .data-txt{font-size:14px;font-weight:400;color:#bd97eb;cursor:pointer;}
	.perfect-2021 .data .data-txt img{vertical-align:middle;margin-top:-2px;margin-left:5px;}
	.perfect-2021 .data .data-wrap{display:none;position:absolute;bottom:20px;right:0;width:700px;height:80px;line-height:1.4;padding:10px;background:#fff;font-size:10px;text-align:left;letter-spacing:-0.04rem;}
	.perfect-2021 .data:hover .data-wrap{display:block;}
</style>

<!-- 2021 만점자 레이어 팝업 -->
<div class="perfect-2021" id="perfect_2021" style="display:none;">
	<!-- 딤처리 -->
	<div class="layer-mask"></div>
	<!-- 딤처리 -->
	<!-- layer-perfect-2021 -->
	<div class="layer-perfect-2021 layer-perfect-2021-2">
		<!-- perfect-2021 -->
		<div class="perfect-2021">
			<% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0246" Then '러셀센텀 %>
				<img  src="<%=Application("img_path_russel")%>/russel_ct/banner/2021/perfectbanner_0906.jpg" alt="" usemap="#perfect">
			<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0247" Then '러셀강남 %>
			    <img  src="<%=Application("img_path_russel")%>/russel_gn/banner/2022/perfectbanner_0117.jpg" alt="" usemap="#perfect">
			<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0001" Then '러셀대치 %>
			    <img  src="<%=Application("img_path_russel")%>/russel/banner/2022/perfectbanner_0127.jpg" alt="" usemap="#perfect">
			<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0250" Then '러셀부천 %>
			    <img  src="<%=Application("img_path_russel")%>/russel_bc/banner/2022/perfectbanner_0203.jpg" alt="" usemap="#perfect">
			<% Else %>
				<img  src="<%=Application("img_path_russel")%>/banner/2022/perfectbanner_0208.jpg" alt="" />
				<!-- <div class="data">
					<p class="data-txt">데이터 산출 기준<img src="<%=Application("img_path_russel")%>/intro/2021/icon-i.png" alt="" /></p>
					<div class="data-wrap">
						1) 2018,2019,2020,2021 수능 실채점 기준 (러셀 강남, 러셀 대치, 러셀 분당 배출)<br>
						2) 수능 업계 오프라인 학원_2020,2021 대입 서울대학교 의예과 합격자 수 기준 (*2021.03.18 기준)<br>
						3) 목동 지역/부천·인천 지역/분당 지역/부산 지역/영통 지역/평촌 지역 학원_2020~2021학년도 의치한수+서연고 최종 합격자 수 비교 기준(홈페이지 대입 실적 기준/2021.03.18 기준)<br>
						4) 러셀 전체학원_2018 대입 의치한수 합격자 대비 2021 대입 의치한수 합격자 증가율 (*2021.03.18 기준)<br>
						5) 러셀 전체학원_2018 대입 SKY 합격자 대비 2021 대입 SKY 합격자 증가율 (*2021.03.18 기준)<br>
						* 최종 업데이트 : 2021.03.18 기준｜2021학년도 대입에 합격한 러셀학원 재원생의 결과(단과 수강생 제외/복수대학 합격자 포함)
					</div>
				</div> -->
			<% End If %>

			<!-- <map name="perfect"> -->
				<%If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "INTRO" Then '인트로' %>
				<!-- <area shape="rect" coords="45,147,654,454" href="https://russel.megastudy.net/hall_of_fame/2021/pass_result/index.asp" alt="" target="_self"> -->

				<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0247" Then '러셀강남 %>
					<map name="perfect">
						<area shape="rect" coords="54,337,320,440" href="https://russelgn.megastudy.net/russel_gn/2022/regular/index.asp" alt="2023 정규반">
						<area shape="rect" coords="54,450,320,550" href="https://russelgn.megastudy.net/russel_gn/2021/winter/index.asp" alt="2022 윈터스쿨">
						<!-- <area shape="rect" coords="54,400,190,476" href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=966" alt="정규,특강" target="_blank"> -->
						<area shape="rect" coords="386,337,655,440" href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=987" alt="2월 정규 ,특강">
						<area shape="rect" coords="386,450,655,550" href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=154" alt="2월 윈터 특강">
					</map>

				<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0001" Then '러셀대치 %>
					<map name="perfect">
						<area shape="rect" coords="50,280,340,463" href="https://russeldc.megastudy.net/russel/2022/regular/index.asp" alt="2023 정규반">
						<area shape="rect" coords="362,280,657,463" href="https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=988" alt="2월 정규 특강">
						<area shape="rect" coords="123,536,587,608" href="https://russeldc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=139" alt="정규반 온라인 원서접수 바로가기">
					</map>
				<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0250" Then '러셀부천 %>
					<map name="perfect">
						<area shape="rect" coords="55,337,323,440" href="https://russelbc.megastudy.net/russel_bc/2022/regular/index.asp" alt="2023 n수 정규반">
						<area shape="rect" coords="55,450,323,552" href="https://russelbc.megastudy.net/russel_bc/2022/regular_go/index.asp" alt="2023 재학생 정규반">
						<area shape="rect" coords="387,337,655,440" href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=994" alt="2월 정규특강">
						<area shape="rect" coords="387,450,655,552" href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=205" alt="2월 봄방학특강">
					</map>
					
				<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0246" Then '러셀센텀 %>
					<map name="perfect">
							<area shape="rect" coords="28,148,721,504" href="/perfect/2021/perfect.asp" alt="" target="_blank">
					</map>
				<%End if%>
			<!-- </map> -->
			<a href="javascript:;" onclick="perfect_close_2022();" class="close-layer">X</a>
			<div class="layer-bottom"><label><input type="checkbox" name="perfect_2021_input" id="perfect_2021_input"> 오늘 하루 보지 않음</label></div>
		</div>
		<!-- //perfect-2021 -->
	</div>
	<!-- //layer-perfect-2021 -->
</div>

<script>

	$(document).ready(function () {
		if (fnc_getCookie("perfect_2021_<%=GetCampusVarsSiteMGC("_CAMPUS_CODE_")%>", 0) != "yes"){			
			$("#perfect_2021").show();
			
		}
	});

	function perfectCheck_2022(){
		if (document.getElementById("perfect_2021_input").checked) {
			setCookie("perfect_2021_<%=GetCampusVarsSiteMGC("_CAMPUS_CODE_")%>", "yes", 1, 1);	// 1일 간 쿠키적용
		}
	}

	var perfect_close_2022 = function() {
		perfectCheck_2022();
		// $("#perfect_2021").fadeOut();
	}

	$(".close-layer").on("click", function(e){		
		e.preventDefault();
		$(".layer-mask, .layer-perfect-2021").css("display","none")
	})

</script>
