
<style>
	.layer-mask {position: fixed;top:0;left:0;width:100%;height:100%;background:#000;opacity:.8;z-index:102}
	.layer-perfect-2022 {display:flex;align-items:center;position: fixed;top:0;left:0;/*transform:translateX(-50%);margin-top:-346px;*/width:100%;height:100%;text-align:center;z-index:103;}
	.layer-perfect-2022.dc {top:45%;}
	.layer-perfect-2022 .perfect-2022 {position: relative;display:inline-block;width:auto;font-size:0;line-height:0;margin:0 auto;background:#fff}

	.perfect-2022 .layer-bottom{padding:10px;background:#ededed;text-align: right;line-height: 1;}
	.perfect-2022 .layer-bottom:after{content:'';display:block;clear:both;}
	.perfect-2022 .layer-bottom label {display:inline-block;position:relative;float:none;padding-right:10px;margin-right:10px;color:#4b4b4b;font-size:14px;letter-spacing:-1px;vertical-align: middle;line-height: 1;cursor: pointer}
	.perfect-2022 .layer-bottom label::after {display:block;position:absolute;top:50%;right:0;width:1px;height:12px;background:#c1c1c1;content:"";transform: translateY(-50%);;}
	.perfect-2022 .layer-bottom label input {opacity: 0;}
	.layer-perfect-2022 .perfect-2022 .close-layer {position:relative;display:inline-block;padding-right:18px;float:none;color:#4b4b4b;font-size:14px;vertical-align: middle;line-height: 1;}
	.layer-perfect-2022 .perfect-2022 .close-layer::after {position:absolute;top:50%;right:0;display: block;width:12px;height:11px;background:url('https://russeldata.megastudy.net/campus/images/russel/banner/bt_layer_close.png') left top no-repeat;content: "";transform: translateY(-38%);}
	.perfect-2022 .data{position:absolute;bottom:53px;right:30px;}
	.perfect-2022 .data .data-txt{font-size:14px;font-weight:400;color:#bd97eb;cursor:pointer;}
	.perfect-2022 .data .data-txt img{vertical-align:middle;margin-top:-2px;margin-left:5px;}
	.perfect-2022 .data .data-wrap{display:none;position:absolute;bottom:20px;right:0;width:700px;height:80px;line-height:1.4;padding:10px;background:#fff;font-size:10px;text-align:left;letter-spacing:-0.04rem;}
	.perfect-2022 .data:hover .data-wrap{display:block;}
	.info-bt {position:absolute;bottom:42px;right:27px;color:#9797c0;font-size:10px;}
	.info-bt i {display:inline-block;height:11px;width:11px;line-height:11px;font-size:10px;font-style: normal;color:#1b1b53;background:#9797c0;text-align: center;border-radius: 6px;}
	.info-layer {display:none;position:absolute;bottom:15px;right:-40px;padding:20px;line-height: 1.5;color:#333;background:#fff;font-size: 10px;text-align: left;white-space: nowrap;}
	.info-bt:hover .info-layer {display: block}
</style>
<div class="layer-mask"></div>
<% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0340" Then '코어광주 %>
<% End If %>
<!-- 2022 만점자 레이어 팝업 -->
<div class="perfect-2022" id="perfect_2022" style="display:none;">
	<!-- 딤처리 -->
	<div class="layer-mask"></div>
	<!-- 딤처리 -->
	<!-- layer-perfect-2022 -->
	<div class="layer-perfect-2022 layer-perfect-2022-2">
		<% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0340" Or Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0341" Then  '코어광주/코어대전 %>
		<div class="perfect-2022">
			<iframe src='https://tv.naver.com/embed/26953381?autoPlay=true' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='936' HEIGHT='526' allow='autoplay' allowfullscreen></iframe>
			<div class="layer-bottom">
				<label><input type="checkbox" name="perfect_2022_input" id="perfect_2022_input" onclick="perfect_close_2022();">오늘 하루 보지 않음</label>
				<a href="javascript:;" onclick="russel_pop_close()" class="close-layer">닫기</a>
			</div>
		</div>
		<% Else %>
		<div class="perfect-2022">
			<a href="https://russel.megastudy.net/perfect/2022/susi/index.asp" target="_blank">
				<img src="<%=Application("img_path_russel")%>/banner/2022/perfectbanner_0218.jpg" alt="" />
			</a>
			<a href="javascript:void(0)" class="info-bt">
				데이터 산출 기준 <i>i</i>
				<span class="info-layer">
					1) 2018,2019,2020,2021 수능 실채점 기준 (러셀 강남, 러셀 대치, 러셀 분당 배출)<br>
					2) 수능 업계 오프라인 학원_2020,2021,2022학년도 대입 서울대학교 의예과 합격자 수 홈페이지 노출 기준 (2022.03.14 기준)<br>
					3) 수능 업계 오프라인 학원_2020,2021,2022학년도 메이저 의대[서울대, 연세대(서울),성균관대, 가톨릭대(성의), 울산대] ‘수시’ 표기된 최종 수시 합격자 수<br>홈페이지 노출 기준(2022.03.14 기준)<br>
					4) 목동 지역/부천·인천 지역/분당 지역/부산 지역/영통 지역/평촌 지역 학원_2020~2022학년도 의치한수약+서연고 최종 합격자 수 비교 기준 (2022.03.14 기준)<br>
					5) 2018-2022학년도 러셀에서 배출한 서울대, 전국 의예과 합격자 수 2022학년도 최다 배출 (단과 수강생 제외/복수대학 합격자 포함) (2022.03.14 기준)<br>
					※ 타 학원 합격자 노출 상황에 따라, 변경될 수 있습니다. 
				</span>
			</a>
				
			<div class="layer-bottom">
				<label><input type="checkbox" name="perfect_2022_input" id="perfect_2022_input" onclick="perfect_close_2022();"> 오늘 하루 보지 않음</label>				
				<a href="javascript:;" onclick="russel_pop_close();" class="close-layer">닫기</a>
			</div>
		</div>
		<% End If %>
	</div>
	<!-- //layer-perfect-2022 -->
</div>

<script>

	$(document).ready(function () {
		if (fnc_getCookie("perfect_2022_<%=GetCampusVarsSiteMGC("_CAMPUS_CODE_")%>", 0) != "yes"){			
			$("#perfect_2022").show();
			
		}
	});

	function perfectCheck_2022(){
		if (document.getElementById("perfect_2022_input").checked) {
			setCookie("perfect_2022_<%=GetCampusVarsSiteMGC("_CAMPUS_CODE_")%>", "yes", 1, 1);	// 1일 간 쿠키적용
		}
	}

	var perfect_close_2022 = function() {
		perfectCheck_2022();
		russel_pop_close()
		// $("#perfect_2022").fadeOut();
	}

	// $(".close-layer").on("click", function(e){		
	// 	e.preventDefault();
	// 	$(".layer-mask, .layer-perfect-2022").css("display","none")
	// })

	function russel_pop_close() {
		$(".layer-mask, .layer-perfect-2022").css("display","none")
	}
</script>
