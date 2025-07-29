<!-- <%

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	

	Case "CD0340": '코어광주
					regular_url = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1359"

	Case "CD0341": '코어대전
					regular_url = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1360"

	Case "CD0343": '코어원주
					regular_url = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1361"

	Case "CD0344": '코어전주
					regular_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1362"

	Case "CD0345": '코어창원
					regular_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1363"

	Case "CD0346": '코어청주
					regular_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1364"

End Select
%> -->
<!--
	*학원별로 분기처리하여 사용
	*CSS : /common/css/main.css
-->
<style>
	.main_layer a.btn-gisuk-pre {position: absolute;top: 318px;left: 78px;display: block;height: 59px;width: 300px;}
	.main_layer.intro {position: relative;}

	#main_layer_CD0340 .layer-con {position: relative;}
	#main_layer_CD0340 .layer-con .data-txt {cursor: pointer; position: absolute;bottom: 19px;left: 37.5%;color: transparent;font-size: 12px;line-height: 1;z-index:3;}
	#main_layer_CD0340 .data-cont.on {display: block;}
	#main_layer_CD0340 .data-cont {display: none; z-index:1;position:absolute;bottom:-113px;left:40px;background:#fff;border:1px solid #727070;padding:10px;width:43%;font-size: 12px;line-height: 1.2;text-align: left;}

	#main_layer_INTRO .layer-con {position: relative;}
	#main_layer_INTRO .layer-con .data-txt {cursor: pointer; position: absolute;bottom:40px;right:50px;color: #95AFAA;font-size: 12px;line-height: 1;z-index:3;}
	#main_layer_INTRO .data-cont.on {display: block;}
	#main_layer_INTRO .data-cont {display: none; z-index:1;position:absolute;bottom:60px;right:50px;background:#fff;border:1px solid #727070;padding:10px;width:67%;font-size: 12px;line-height: 1.2;text-align: left;}
	
	#main_layer_CD0363 .layer-con {position: relative;}
	#main_layer_CD0363 .layer-con .data-txt {cursor: pointer; position: absolute;bottom:40px;right:50px;color: #95AFAA;font-size: 12px;line-height: 1;z-index:3;}
	#main_layer_CD0363 .data-cont.on {display: block;}
	#main_layer_CD0363 .data-cont {display: none; z-index:1;position:absolute;bottom:60px;right:50px;background:#fff;border:1px solid #727070;padding:10px;width:67%;font-size: 12px;line-height: 1.2;text-align: left;}
	


	.main_layer .layer-con .pre-date {color:#111;font-size:23px;position:absolute;bottom:120px;right:30px;height:23px;width:400px;letter-spacing:0;line-height:1;font-weight:bold;}
	.main_layer .layer-con .small-txt {color:#fff;font-size:12px;position:absolute;bottom:50px;right:30px;}
	
	/*작업 시 주석 해제*/
	/* .main_layer a {border: 1px solid yellow;} */
</style>

<% if (ValueCheck(request.cookies("main_layer_"&Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")))) = false or request.cookies("main_layer_"&Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))) <> "1") then %>
	<!-- 학원별 main-popup -->
		<% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0246" Then '센텀 %>
		<!-- <div class="main_layer" id="main_layer_<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>">
			<div class="layer-mask"></div>
			<div class="layer-main mask-on">
				<div class="main_layer">
					<div class="layer-con">
						<div style="position: relative;">
							<img src="<%=Application("img_path_russel")%>/banner/2024/main_pop_ct05.jpg" alt=""/>
							<a href="https://russelct.megastudy.net/russel/info/notice/notice_view.asp?Code=31749" title="" style="position: absolute; left: 0%; top: 0%; width: 33%; height: 100%; z-index: 2;"></a>
							<a href="/intro/2024/winter/index.asp" title="" style="position: absolute; left: 38.24%; top: 81.6%; width: 23.73%; height: 8.4%; z-index: 2;"></a>
							<a href="/intro/2025/first/index.asp" title="" style="position: absolute; left: 71.61%; top: 81.8%; width: 23.73%; height: 8.4%; z-index: 2;"></a>
						</div>
					</div>

					<div class="layer-bottom">
						<label><input type="checkbox" name="main_layer_input" id="main_layer_input" onclick="layer_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>');">오늘 하루 보지 않음</label>
						<a href="javascript:;" onclick="russel_pop_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>')" class="close-layer">닫기</a>
					</div>
				</div>
			</div>
		</div> -->
		<% ElseIf sCampusCode = "INTRO" Then '인트로 %>


		<!--6/14 토 오후 3시 종료 팝업-->
		<!-- <div class="main_layer" id="main_layer_<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>">
				<div class="layer-mask"></div>
				<div class="layer-main mask-on">
					<div class="main_layer">
						<div class="layer-con">
							<div style="position: relative;">
								<img src="<%=Application("img_path_russel")%>/banner/2025/main_pop_intro06.jpg" alt=""/>
								<a href="https://russel.megastudy.net/intro/2024/gisuk_gate/index.asp" title="" style="position: absolute; left: 0%; top: 0%; width: 49.78%; height: 99.78%; z-index: 2;"></a>
								<a href="https://russel.megastudy.net/event/2026/gisuk_half_pre/index.asp" title="" style="position: absolute; left: 49.78%; top: 0%; width: 49.78%; height: 99.78%; z-index: 2;"></a>
								<p class="data-txt" style="width:100px;height:20px; right:506px; bottom:33px;"></p>
							</div>
							<div class="data-cont" style="right:216px;">
								*국/수/탐2 만점 및 영/한 1등급 기준<br>
								*2018,2019,2020,2021,2022,2025 수능 실채점 기준[러셀 강남, 러셀 대치, 러셀 분당, 러셀 영통, 최상위권 전문관 러셀 기숙학원(구.양지 기숙) 배출]<br>
								**2024.12.06 19:00 2025 수능 실채점 기준 [국/수/탐2 만점 및 영/한 1등급, 러셀 대치, 러셀 영통 배출]
							</div> 
						</div>
	
						<div class="layer-bottom">
							<label><input type="checkbox" name="main_layer_input" id="main_layer_input" onclick="layer_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>');">오늘 하루 보지 않음</label>
							<a href="javascript:;" onclick="russel_pop_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>')" class="close-layer">닫기</a>
						</div>
					</div>
				</div>
			</div> -->


		<!-- <script>
			//데이터산출기준
			$('.data-txt').on('mouseover',function(){
				$('.data-cont').addClass('on');
			});
			$('.data-txt').on('mouseout',function(){
				$('.data-cont').removeClass('on');

			});
		</script> -->

		<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0247" Then '강남 %>
		<!-- <div class="main_layer" id="main_layer_<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>">
			<div class="layer-mask"></div>
			<div class="layer-main mask-on">
				<div class="main_layer">
					<div class="layer-con">
						<div style="position: relative;">
							<img src="<%=Application("img_path_russel")%>/banner/2024/main_pop_gn21.jpg" alt=""/>
							<a href="/intro/2024/winter/index.asp" title="" style="position: absolute; left: 6.1%; top: 82%; width: 21%; height:8.5%; z-index: 2;"></a>
							<a href="/intro/2025/first/index.asp" title="" style="position: absolute; left: 39.38%; top: 81.73%; width: 21.04%; height: 8.65%; z-index: 2;"></a>
							<a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1804" title="" style="position: absolute; left: 86.46%; top: 44.55%; width: 8.33%; height: 6.17%; z-index: 2;"></a>
							<a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1785" title="" style="position: absolute; left: 86.46%; top: 61.97%; width: 8.33%; height: 6.17%; z-index: 2;"></a>
							<a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1786" title="" style="position: absolute; left: 86.56%; top: 79.2%; width: 8.33%; height: 6.17%; z-index: 2;"></a>

						</div>
					</div>

					<div class="layer-bottom">
						<label><input type="checkbox" name="main_layer_input" id="main_layer_input" onclick="layer_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>');">오늘 하루 보지 않음</label>
						<a href="javascript:;" onclick="russel_pop_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>')" class="close-layer">닫기</a>
					</div>
				</div>
			</div>
		</div> -->
		<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0001" Then '대치 %>			

			<!-- <div class="main_layer" id="main_layer_<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>">
				<div class="layer-mask"></div>
				<div class="layer-main mask-on">
					<div class="main_layer">
						<div class="layer-con">
							<div style="position: relative;">
								<img src="<%=Application("img_path_russel")%>/banner/2024/main_pop_dc26.jpg" alt="22"/>
								<a href="/intro/2025/first/index.asp" title="" style="position: absolute;left: 6.22%;top: 85%;width: 21%;height: 8.27%;z-index: 2;"></a>
								<a href="https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1805" title="" style="position: absolute;left: 39.5%;top: 75%;width: 21%;height: 8.27%;z-index: 2;"></a>
								<a href="https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1787" title="" style="position: absolute;left: 39.5%;top: 85%;width: 21%;height: 8.27%;z-index: 2;"></a>
								<a href="https://russeldc.megastudy.net/russel/info/notice/notice_view.asp?Code=31824" title="" style="position: absolute; left: 72.92%; top: 84.91%; width: 20.83%; height: 7.92%; z-index: 2;"></a>
							</div>
						</div>

						<div class="layer-bottom">
							<label><input type="checkbox" name="main_layer_input" id="main_layer_input" onclick="layer_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>');">오늘 하루 보지 않음</label>
							<a href="javascript:;" onclick="russel_pop_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>')" class="close-layer">닫기</a>
						</div>
					</div>
				</div>
			</div> -->

		<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0345" Then '코어창원 %>
		<!-- <div class="main_layer" id="main_layer_<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>">
			<div class="layer-mask"></div>
			<div class="layer-main mask-on">
				<div class="main_layer">
					<div class="layer-con">
						<div style="position: relative;">
							<img src="<%=Application("img_path_russel")%>/banner/2024/main_pop_cw03.jpg" alt=""/>
							<a href="https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1819" title="" style="position: absolute; left: 4.5%; top: 73.27%; width: 24%; height: 8.08%; z-index: 2;"></a>
							<a href="https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1800" title="" style="position: absolute; left: 4.5%; top: 83.27%; width: 24%; height: 8.08%; z-index: 2;"></a>
							<a href="https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1819" title="" style="position: absolute; left: 33.3%; top: 0%; width: 33.3%; height: 100%; z-index: 2;"></a>
							<a href="https://corecw.megastudy.net/russel/info/notice/notice_view.asp?Code=31781" title="" style="position: absolute; left: 73%; top: 84%; width: 21%; height: 8.5%; z-index: 2;"></a>
						</div>
					</div>

					<div class="layer-bottom">
						<label><input type="checkbox" name="main_layer_input" id="main_layer_input" onclick="layer_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>');">오늘 하루 보지 않음</label>
						<a href="javascript:;" onclick="russel_pop_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>')" class="close-layer">닫기</a>
					</div>
				</div>
			</div>
		</div> -->
		<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0249" Then '영통 %>
		<!-- <div class="main_layer" id="main_layer_<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>">
			<div class="layer-mask"></div>
			<div class="layer-main mask-on">
				<div class="main_layer">
					<div class="layer-con">
						<div style="position: relative;">
							<img src="<%=Application("img_path_russel")%>/banner/2024/main_pop_yt15.jpg" alt=""/>
							<a href="https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1827" title="" style="position: absolute; left: 4.69%; top: 73.08%; width: 24.06%; height: 8.27%; z-index: 2;"></a>
							<a href="/intro/2025/first/index.asp" title="" style="position: absolute; left: 4.79%; top: 83.27%; width: 24.06%; height: 8.27%; z-index: 2;"></a>
							<a href="/intro/2024/winter/index.asp" title="" style="position: absolute; left: 38%; top: 82.6%; width: 24%; height: 8%; z-index: 2;"></a>
							<a href="https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=336" title="" style="position: absolute; left: 71.4%; top: 82.6%; width: 24%; height: 8%; z-index: 2;"></a>
						</div>
					</div>

					<div class="layer-bottom">
						<label><input type="checkbox" name="main_layer_input" id="main_layer_input" onclick="layer_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>');">오늘 하루 보지 않음</label>
						<a href="javascript:;" onclick="russel_pop_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>')" class="close-layer">닫기</a>
					</div>
				</div>
			</div>
		</div> -->
		<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0245" Then '목동 %>
		<!-- <div class="main_layer" id="main_layer_<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>">
			<div class="layer-mask"></div>
			<div class="layer-main mask-on">
				<div class="main_layer">
					<div class="layer-con">
						<div style="position: relative;">
							<img src="<%=Application("img_path_russel")%>/banner/2024/main_pop_md20.jpg" alt=""/>
							<a href="/intro/2024/winter/index.asp" title="" style="position: absolute; left: 4.87%; top: 84.91%; width: 24.04%; height: 8.11%; z-index: 2;"></a>
							<a href="/intro/2025/first/index.asp" title="" style="position: absolute; left: 38.03%; top: 73.58%; width: 24.04%; height: 8.11%; z-index: 2;"></a>
							<a href="https://russelmd.megastudy.net/russel/info/notice/notice_view.asp?Code=31646&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1" title="" style="position: absolute; left: 38.24%; top: 83.58%; width: 24.04%; height: 8.11%; z-index: 2;"></a>
							<a href="/russel/curriculum/index.asp" title="" style="position: absolute; left: 85.8%; top: 35.66%; width: 10.36%; height: 9.43%; z-index: 2;"></a>
							<a href="https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1806" title="" style="position: absolute; left: 85.8%; top: 56.42%; width: 10.36%; height: 9.43%; z-index: 2;"></a>
							<a href="https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1788" title="" style="position: absolute; left: 85.18%; top: 75.47%; width: 10.88%; height: 6.6%; z-index: 2;"></a>
							<a href="https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1789" title="" style="position: absolute; left: 85.08%; top: 82.83%; width: 11.19%; height: 6.79%; z-index: 2;"></a>
						
						</div>
					</div>

					<div class="layer-bottom">
						<label><input type="checkbox" name="main_layer_input" id="main_layer_input" onclick="layer_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>');">오늘 하루 보지 않음</label>
						<a href="javascript:;" onclick="russel_pop_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>')" class="close-layer">닫기</a>
					</div>
				</div>
			</div>
		</div> -->
		<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0244" Then '분당 %>
		<!-- <div class="main_layer" id="main_layer_<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>">
			<div class="layer-mask"></div>
			<div class="layer-main mask-on">
				<div class="main_layer">
					<div class="layer-con">
						<div style="position: relative;">
							<img src="<%=Application("img_path_russel")%>/banner/2024/main_pop_bd30.jpg" alt=""/>
							<a href="https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1808" title="" style="position: absolute; left: 4.46%; top: 82.6%; width: 20%; height: 8.53%; z-index: 2;"></a>
							<a href="https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1792" title="" style="position: absolute; left: 25.46%; top: 82.6%; width: 20%; height: 8.53%; z-index: 2;"></a>
							<a href="https://russelbd.megastudy.net/intro/2025/first/index.asp" title="" style="position: absolute; left: 61.3%; top: 82.6%; width: 27%; height: 9.5%; z-index: 2;"></a>
						</div>
					</div>

					<div class="layer-bottom">
						<label><input type="checkbox" name="main_layer_input" id="main_layer_input" onclick="layer_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>');">오늘 하루 보지 않음</label>
						<a href="javascript:;" onclick="russel_pop_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>')" class="close-layer">닫기</a>
					</div>
				</div>
			</div>
		</div> -->
		<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0248" Then '평촌 %>
		<!-- <div class="main_layer" id="main_layer_<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>">
			<div class="layer-mask"></div>
			<div class="layer-main mask-on">
				<div class="main_layer">
					<div class="layer-con">
						<div style="position: relative;">
							<img src="<%=Application("img_path_russel")%>/banner/2024/main_pop_pc21.jpg" alt=""/>
							<a href="/intro/2024/winter/index.asp" title="" style="position: absolute; left: 4.95%; top: 81.92%; width: 23.61%; height: 8.27%; z-index: 2;"></a>
							<a href="/intro/2025/first/index.asp" title="" style="position: absolute; left: 38.45%; top: 81.73%; width: 23.61%; height: 8.27%; z-index: 2;"></a>
							<a href="https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1811" title="" style="position: absolute; left: 86.39%; top: 55.77%; width: 8.14%; height: 5.58%; z-index: 2;"></a>
							<a href="https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=351" title="" style="position: absolute; left: 86.19%; top: 80.58%; width: 8.14%; height: 5.58%; z-index: 2;"></a>
	
						</div>
					</div>
					<div class="layer-bottom">
						<label><input type="checkbox" name="main_layer_input" id="main_layer_input" onclick="layer_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>');">오늘 하루 보지 않음</label>
						<a href="javascript:;" onclick="russel_pop_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>')" class="close-layer">닫기</a>
					</div>
				</div>
			</div>
		</div>  -->
		<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0257" Then '중계 %>
		<!-- <div class="main_layer" id="main_layer_<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>">
			<div class="layer-mask"></div>
			<div class="layer-main mask-on">
				<div class="main_layer">
					<div class="layer-con">
						<div style="position: relative;">
							<img src="<%=Application("img_path_russel")%>/banner/2024/main_pop_jg08.jpg" alt=""/>
							<a href="/intro/2024/winter/index.asp" title="" style="position:absolute;left:7.7%;top:81.5%;width:18%;height:9%;z-index:2;"></a>
							<a href="/intro/2025/first/index.asp" title="" style="position:absolute;left:41%;top:81.5%;width:18%;height:9%;z-index:2;"></a>
							<a href="https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=356" title="" style="position:absolute;right:5.2%;top:50%;width:23%;height:9%;z-index:2;"></a>
							<a href="/russel_jg/2023/regular_go/index.asp" title="" style="position:absolute;right:5.2%;top:60.2%;width:23%;height:9%;z-index:2;"></a>
							<a href="https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=344" title="" style="position:absolute;right:5.2%;top:71%;width:23%;height:9%;;z-index:2;"></a>
							<a href="https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1704" title="" style="position:absolute;right:5.2%;top:81.5%;width:23%;height:9%;;z-index:2;"></a>
						</div>
					</div>

					<div class="layer-bottom">
						<label><input type="checkbox" name="main_layer_input" id="main_layer_input" onclick="layer_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>');">오늘 하루 보지 않음</label>
						<a href="javascript:;" onclick="russel_pop_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>')" class="close-layer">닫기</a>
					</div>
				</div>
			</div>
		</div> -->
		<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0346" Then '코어청주 %>
		<!-- <div class="main_layer" id="main_layer_<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>">
			<div class="layer-mask"></div>
			<div class="layer-main mask-on">
				<div class="main_layer">
					<div class="layer-con">
						<div style="position: relative;">
							<img src="<%=Application("img_path_russel")%>/banner/2024/main_pop_cj02.jpg" alt=""/>
							<a href="/intro/2025/first/index.asp" title="" style="position: absolute; left: 6.25%; top: 83.14%; width: 20.94%; height: 9.22%; z-index: 2;"></a>
							<a href="/intro/2024/winter/index.asp" title="" style="position: absolute; left: 39.38%; top: 83.14%; width: 20.94%; height: 9.22%; z-index: 2;"></a>
							<a href="https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1820" title="" style="position: absolute; left: 66.81%; top: 0%; width: 32.94%; height: 100%; z-index: 2;"></a>
						</div>
					</div>

					<div class="layer-bottom">
						<label><input type="checkbox" name="main_layer_input" id="main_layer_input" onclick="layer_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>');">오늘 하루 보지 않음</label>
						<a href="javascript:;" onclick="russel_pop_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>')" class="close-layer">닫기</a>
					</div>
				</div>
			</div>
		</div> -->
		<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0343" Then '코어원주 %>
		<!-- 현재 사용중인 배너 주석처리 추후사용예정 -->
		<!-- <div class="main_layer" id="main_layer_<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>">
			<div class="layer-mask"></div>
			<div class="layer-main mask-on">
				<div class="main_layer">
					<div class="layer-con">
						<div style="position: relative;">
							<img src="<%=Application("img_path_russel")%>/banner/2024/main_pop_wj10.jpg" alt=""/>
							<a href="/russel/event/2024/interview/index.asp" title="" style="position: absolute; left: 0%; top: 0%; width: 33.3%; height: 100%; z-index: 2;"></a>
							<a href="/intro/2024/summer/index.asp" title="" style="position: absolute; left: 40.71%; top: 82.22%; width: 18.67%; height: 9.11%; z-index: 2;"></a>
							<a href="/intro/2024/half/index.asp" title="" style="position: absolute; left: 74.3%; top: 82.22%; width: 18%; height: 9.11%; z-index: 2;"></a>
						</div>
					</div>

					<div class="layer-bottom">
						<label><input type="checkbox" name="main_layer_input" id="main_layer_input" onclick="layer_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>');">오늘 하루 보지 않음</label>
						<a href="javascript:;" onclick="russel_pop_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>')" class="close-layer">닫기</a>
					</div>
				</div>
			</div>
		</div> -->


		<!-- <div class="main_layer" id="main_layer_<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>">
			<div class="layer-mask"></div>
			<div class="layer-main mask-on">
				<div class="main_layer">
					<div class="layer-con">
						<div style="position: relative;">
							<img src="<%=Application("img_path_russel")%>/banner/2024/main_pop_wj16.jpg" alt=""/>
							<a href="https://corewj.megastudy.net/russel/info/notice/notice_view.asp?Code=31589&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1" title="" style="position: absolute; left: 4.38%; top: 85.1%; width: 40.94%; height: 9.02%; z-index: 2;"></a>
							<a href="https://corewj.megastudy.net/russel/info/notice/notice_view.asp?Code=31594&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1" title="" style="position: absolute; left: 54.22%; top: 85.1%; width: 40.94%; height: 9.02%; z-index: 2;"></a>
						</div>
					</div>

					<div class="layer-bottom">
						<label><input type="checkbox" name="main_layer_input" id="main_layer_input" onclick="layer_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>');">오늘 하루 보지 않음</label>
						<a href="javascript:;" onclick="russel_pop_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>')" class="close-layer">닫기</a>
					</div>
				</div>
			</div>
		</div> -->
		<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0341" Then '코어대전 %>
		<!-- <div class="main_layer" id="main_layer_<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>">
			<div class="layer-mask"></div>
			<div class="layer-main mask-on">
				<div class="main_layer">
				<div class="layer-con">
						<div style="position: relative;">
							<img src="<%=Application("img_path_russel")%>/banner/2024/main_pop_dj25.jpg" alt=""/>
							<a href="/intro/2024/winter/index.asp" title="" style="position: absolute; left: 6.22%; top: 83.33%; width: 21%; height: 8.82%; z-index: 2;"></a>
							<a href="https://coredj.megastudy.net/russel/entinfo/entry_pt/ent_view.asp?idx=9322&page=1" title="" style="position: absolute; left: 39.22%; top: 83.33%; width: 21%; height: 8.82%; z-index: 2;"></a>
							<a href="https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1816" title="" style="position: absolute; left: 66.6%; top: 0%; width: 50%; height: 100.2%; z-index: 2;"></a>
						</div>
					</div>

					<div class="layer-bottom">
						<label><input type="checkbox" name="main_layer_input" id="main_layer_input" onclick="layer_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>');">오늘 하루 보지 않음</label>
						<a href="javascript:;" onclick="russel_pop_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>')" class="close-layer">닫기</a>
					</div>
				</div>
			</div>
		</div> -->
		<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0340" Then '코어광주 %>
		<!-- <div class="main_layer" id="main_layer_<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>">
			<div class="layer-mask"></div>
			<div class="layer-main mask-on">
				<div class="main_layer">
					<div class="layer-con">
						<div style="position: relative;">
							<img src="<%=Application("img_path_russel")%>/banner/2024/main_pop_gj19.jpg" alt=""/>
							<a href="/intro/2024/pre_winter/index.asp" title="" style="position: absolute; left: 6.25%; top: 63.2%; width: 20.73%; height: 9%; z-index: 2;"></a>
							<a href="/intro/2024/winter_overall/index.asp" title="" style="position: absolute; left: 6.46%; top: 73.4%; width: 20.73%; height: 9%; z-index: 2;"></a>
							<a href="/intro/2024/winter/index.asp" title="" style="position: absolute; left: 6.35%; top: 83%; width: 20.73%; height: 9%; z-index: 2;"></a>
							<a href="/intro/2025/first_overall/index.asp" title="" style="position: absolute; left: 39.48%; top: 73.53%; width: 21.04%; height: 8.43%; z-index: 2;"></a>
							<a href="/intro/2025/first/index.asp" title="" style="position: absolute; left: 39.48%; top: 83.33%; width: 21.04%; height: 8.43%; z-index: 2;"></a>
							<a href="https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1815" title="" style="position: absolute; left: 66.7%; top: 0; width: 33.04%; height: 99%; z-index: 2;"></a>
						</div>
					</div>

					<div class="layer-bottom">
						<label><input type="checkbox" name="main_layer_input" id="main_layer_input" onclick="layer_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>');">오늘 하루 보지 않음</label>
						<a href="javascript:;" onclick="russel_pop_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>')" class="close-layer">닫기</a>
					</div>
				</div>
			</div>
		</div> -->

		<script>
			//데이터산출기준
			$('.data-txt').on('mouseover',function(){
				$('.data-cont').addClass('on');
			});
			$('.data-txt').on('mouseout',function(){
				$('.data-cont').removeClass('on');

			});
		</script>
		
		<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0250" Then '부천 %>
		<!-- <div class="main_layer" id="main_layer_<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>">
			<div class="layer-mask"></div>
			<div class="layer-main mask-on">
				<div class="main_layer">
					<div class="layer-con">
						<div style="position: relative;">
							<img src="<%=Application("img_path_russel")%>/banner/2024/main_pop_bc18.jpg" alt=""/>
							<a href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=352" title="" style="position: absolute; left: 6.25%; top: 64.9%; width: 20.94%; height: 8.46%; z-index: 2;"></a>
							<a href="/intro/2024/winter/index.asp" title="" style="position: absolute; left: 6.15%; top: 74.23%; width: 20.94%; height: 8.46%; z-index: 2;"></a>
							<a href="https://pf.kakao.com/_sFgGxj" title="" style="position: absolute; left: 6.15%; top: 83.85%; width: 20.94%; height: 8.46%; z-index: 2;"></a>
							<a href="/intro/2025/first/index.asp" title="" style="position: absolute; left: 39.48%; top: 83.65%; width: 20.94%; height: 8.46%; z-index: 2;"></a>
							<a href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1807" title="" style="position: absolute; left: 70.42%; top: 83%; width: 12.5%; height: 8.8%; z-index: 2;"></a>
							<a href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1823" title="" style="position: absolute; left: 83.85%; top: 83.4%; width: 12.5%; height: 8.8%; z-index: 2;"></a>
						</div>
					</div>

					<div class="layer-bottom">
						<label><input type="checkbox" name="main_layer_input" id="main_layer_input" onclick="layer_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>');">오늘 하루 보지 않음</label>
						<a href="javascript:;" onclick="russel_pop_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>')" class="close-layer">닫기</a>
					</div>
				</div>
			</div>
		</div> -->
		<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0342" Then '대구 %>

			<!-- <div class="main_layer" id="main_layer_<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>">
				<div class="layer-mask"></div>
				<div class="layer-main mask-on">
					<div class="main_layer">
						<div class="layer-con">
							<div style="position: relative;">
								<img src="<%=Application("img_path_russel")%>/banner/2024/main_pop_dg02.jpg" alt=""/>
								<a href="/intro/2025/first_overall/index.asp" title=""  style="position: absolute; left: 4.6%; top: 73.2%; width: 24.04%; height: 8.4%; z-index: 2;"></a>
								<a href="/intro/2025/first/index.asp" title=""  style="position: absolute; left: 4.6%; top: 83.2%; width: 24.04%; height: 8.4%; z-index: 2;"></a>
								<a href="https://russeldg.megastudy.net/russel/entinfo/entry_pt/enter_pt_list.asp" title="" style="position: absolute; left: 38%; top: 83.2%; width: 24.04%; height: 8.8%; z-index: 2;"></a>								
								<a href="https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1812" title=""  style="position: absolute; left: 66.7%; top: 0%; width: 33.9%; height: 100%; z-index: 2;"></a>
							</div>
						</div>

						<div class="layer-bottom">
							<label><input type="checkbox" name="main_layer_input" id="main_layer_input" onclick="layer_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>');">오늘 하루 보지 않음</label>
							<a href="javascript:;" onclick="russel_pop_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>')" class="close-layer">닫기</a>
						</div>
					</div>
				</div>
			</div> -->
		<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0344" Then '코어전주 %>
		<!-- <div class="main_layer" id="main_layer_<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>">
			<div class="layer-mask"></div>
			<div class="layer-main mask-on">
				<div class="main_layer">
					<div class="layer-con">
						<div style="position: relative;">
							<img src="<%=Application("img_path_russel")%>/banner/2024/main_pop_jj02.jpg" alt=""/>
							<a href="/intro/2025/first/index.asp" title="" style="position: absolute; left: 3.13%; top: 71.54%; width: 27.08%; height: 8.65%; z-index: 2;"></a>
							<a href="https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1818" title="" style="position: absolute; left: 3.13%; top: 81.92%; width: 27.08%; height: 8.65%; z-index: 2;"></a>
							<a href="/russel/event/2024/interview/index.asp" title="" style="position: absolute; left: 33.3%; top: 0%; width: 33.33%; height: 99.81%; z-index: 2;"></a>
							<a href="https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1818" title="" style="position: absolute; left: 66.77%; top: 0%; width: 33.33%; height: 99.81%; z-index: 2;"></a>
						</div>
					</div>

					<div class="layer-bottom">
						<label><input type="checkbox" name="main_layer_input" id="main_layer_input" onclick="layer_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>');">오늘 하루 보지 않음</label>
						<a href="javascript:;" onclick="russel_pop_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>')" class="close-layer">닫기</a>
					</div>
				</div>
			</div>
		</div> -->
		<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0349" Then '울산 %>
		<!-- <div class="main_layer" id="main_layer_<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>">
			<div class="layer-mask"></div>
			<div class="layer-main mask-on">
				<div class="main_layer">
					<div class="layer-con">
						<div style="position: relative;">
							<img src="<%=Application("img_path_russel")%>/banner/2024/main_pop_us.jpg" alt=""/>
							<a href="/intro/2025/first_overall/index.asp" title="" style="position: absolute; left: 4.5%; top: 67%; width: 24.2%; height: 11%; z-index: 2;"></a>
							<a href="/intro/2025/first/index.asp" title="" style="position: absolute; left: 4.5%; top: 80%; width: 24.2%; height: 11%; z-index: 2;"></a>
							
							<a href="https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1814" title="" style="position: absolute; left: 38%; top: 67%; width: 24.2%; height: 11%; z-index: 2;"></a>
							<a href="https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1795" title="" style="position: absolute; left: 38%; top: 80%; width: 24.2%; height: 11%; z-index: 2;"></a>
							
							<a href="https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1814" title="" style="position: absolute; left: 66.7%; top: 0%; width: 33%; height: 100%; z-index: 2;"></a>
						</div>
					</div>

					<div class="layer-bottom">
						<label><input type="checkbox" name="main_layer_input" id="main_layer_input" onclick="layer_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>');">오늘 하루 보지 않음</label>
						<a href="javascript:;" onclick="russel_pop_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>')" class="close-layer">닫기</a>
					</div>
				</div>
			</div>
		</div> -->
		<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0363" Then '최상위권 전문관 %>
		 
		<!-- <div class="main_layer" id="main_layer_<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>">
			<div class="layer-mask"></div>
			<div class="layer-main mask-on">
				<div class="main_layer">
					<div class="layer-con">
						<div style="position: relative;">
							<img src="<%=Application("img_path_russel")%>/banner/2025/main_pop_hs.jpg" alt=""/>
							<a href="https://russelhs.megastudy.net/russel/info/notice/notice_view.asp?Code=32761&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1" title="" style="position: absolute; left: 28%; top: 77.33%; width: 44%; height: 11.22%; z-index: 2;"></a>
							<p class="data-txt" style="width:100px;height:20px; right:13px; bottom:23px;"></p>
						</div>
						<div class="data-cont" style="right:13px;bottom: 50px;">
							러셀기숙 4개학원 2025년 재원생 중 합격생 1,870명(중복포함) <br>
							** 러셀기숙 (구)남-의대관 307명,(구)여-의대관 154명,(구)서의치관 184명,(구)양지 메가스터디 기숙 788명,(구)서초 메가스터디 기숙 437명 기준 <br>
							** 아래 명단은 의치한약수,SKY,KAIST,POSTECH,서성한 대학까지의 명단만 노출하였으며, 노출 동의하지 않은 학생은 제외 <br>
							** 2025년 3월 5일 기준 취합자료							
						</div> 
					</div>

					<div class="layer-bottom">
						<label><input type="checkbox" name="main_layer_input" id="main_layer_input" onclick="layer_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>');">오늘 하루 보지 않음</label>
						<a href="javascript:;" onclick="russel_pop_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>')" class="close-layer">닫기</a>
					</div>
				</div>
			</div>
		</div>

		<script>
			//데이터산출기준
			$('.data-txt').on('mouseover',function(){
				$('.data-cont').addClass('on');
			});
			$('.data-txt').on('mouseout',function(){
				$('.data-cont').removeClass('on');

			});
		</script> -->
		<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0347" Then '서의치 %>
		 
		<!-- <div class="main_layer" id="main_layer_<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>">
			<div class="layer-mask"></div>
			<div class="layer-main mask-on">
				<div class="main_layer">
					<div class="layer-con">
						<div style="position: relative;">
							<img src="<%=Application("img_path_russel")%>/banner/2024/main_pop_sm12.jpg" alt=""/>
							<a href="https://russelsm.megastudy.net/russel/info/notice/notice_view.asp?Code=30032&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1" title="" style="position: absolute; left: 0%; top: 0%; width: 35.8%; height: 99.7%; z-index: 2;"></a>
							<a href="/russel_yj/2024/regular/index.asp" title="" style="position: absolute; left: 44.3%; top: 77.3%; width: 19.1%; height: 8.3%; z-index: 2;"></a>
							<a href="/russel_yj/2024/winter/index.asp" title="" style="position: absolute; left: 72.3%; top: 77.3%; width: 19.5%; height: 8.3%; z-index: 2;"></a>
						</div>
					</div>

					<div class="layer-bottom">
						<label><input type="checkbox" name="main_layer_input" id="main_layer_input" onclick="layer_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>');">오늘 하루 보지 않음</label>
						<a href="javascript:;" onclick="russel_pop_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>')" class="close-layer">닫기</a>
					</div>
				</div>
			</div>
		</div> -->

		<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0348" Then '여기숙 %>
		<!-- <div class="main_layer" id="main_layer_<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>">
			<div class="layer-mask"></div>
			<div class="layer-main mask-on">
				<div class="main_layer">
					<div class="layer-con">
						<div style="position: relative;">
							<img src="<%=Application("img_path_russel")%>/banner/2024/main_pop_w17.jpg" alt=""/>
							<a href="/russel_yj/2024/winter/index.asp" title="" style="position: absolute; left: 65.27%; top: 72.24%; width: 20%; height: 10%; z-index: 2;"></a>
						</div>
					</div>
					<div class="layer-bottom">
						<label><input type="checkbox" name="main_layer_input" id="main_layer_input" onclick="layer_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>');">오늘 하루 보지 않음</label>
						<a href="javascript:;" onclick="russel_pop_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>')" class="close-layer">닫기</a>
					</div>
				</div>
			</div>
		</div> -->

		<% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0258" Then '남기숙 %>	
		<!-- <div class="main_layer" id="main_layer_<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>">
			<div class="layer-mask"></div>
			<div class="layer-main mask-on">
				<div class="main_layer">
					<div class="layer-con">
						<div style="position: relative;">
							<img src="<%=Application("img_path_russel")%>/banner/2024/main_pop_yj16.gif" alt=""/>
							<a href="/russel_yj/2024/winter/index.asp" title="" style="position: absolute; left: 64.04%; top: 0%; width: 35.84%; height: 92.24%; z-index: 2;"></a>
						</div>
					</div>
					<div class="layer-bottom">
						<label><input type="checkbox" name="main_layer_input" id="main_layer_input" onclick="layer_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>');">오늘 하루 보지 않음</label>
						<a href="javascript:;" onclick="russel_pop_close('<%=Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))%>')" class="close-layer">닫기</a>
					</div>
				</div>
			</div>
		</div> -->
		<!-- 양지기숙 오픈 전 -->
		<!-- <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0363" Then '양지기숙 %> -->
		<% End If %>



	<!-- // 학원별 main-popup -->
<% end if %>

<%
	strSql = ""
	strSql = strSql & " SELECT mp_idx, mp_content_type, mp_img_path, mp_img_link, mp_page_link, mp_popup_width, mp_popup_height, mp_popup_left, mp_popup_top,  mp_show_type "
	strSql = strSql & " 	, ISNULL(mp_today_yn, 'N') AS mp_today_yn, mp_dim_yn"
	strSql = strSql & " FROM MR_MAIN_POPUP WITH(NOLOCK) "
	strSql = strSql & " WHERE 1=1 "
	strSql = strSql & " 	AND mp_del_yn = 'N' "
	strSql = strSql & " 	AND mp_show_yn = 'Y' "
	strSql = strSql & " 	AND	mp_device_type = 'P' "
	strSql = strSql & " 	AND CHARINDEX('" & Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) & "', mp_campus_code) > 0 "
	strSql = strSql & " 	AND (mp_show_sdt <= GETDATE() AND mp_show_edt >= GETDATE()) "
	strSql = strSql & " ORDER BY mp_idx DESC "
	Set objRs = russelobjdb.sqlQuery(strSql,3)
	arrList = Null
	If Not (objRs.EoF And objRs.BoF) Then
		arrList = objRs.getrows
	End If
	objRs.close
	Set objRs = Nothing

	If isarray(arrList) = True Then
		For n=0 To ubound(arrList,2)
			mp_idx = arrList(0,n)
			mp_content_type = arrList(1,n)
			mp_img_path = arrList(2,n)
			mp_img_link = arrList(3,n)
			mp_page_link = arrList(4,n)
			mp_popup_width = arrList(5,n)
			mp_popup_height = arrList(6,n)
			mp_popup_left = arrList(7,n)
			mp_popup_top = arrList(8,n)
			mp_show_type = arrList(9,n)
			mp_today_yn = arrList(10,n)
			mp_dim_yn = arrList(11,n)


            If request.cookies("main_layer_"&mp_idx) <> "1" Then
				If mp_show_type = "layer" Then %>
					<!-- 어드민 레이어 팝업 -->
					<div class="main_layer" id="main_layer_<%=mp_idx%>">
						<% IF mp_dim_yn = "Y" THEN %>
							<!-- 딤처리 -->
							<div class="layer-mask"></div>
							<!-- //딤처리 -->
						<% END IF %>

						<!-- 딤체크시 클래스 mask-on 추가 -->
						<div class="layer-main <% IF mp_dim_yn = "Y" THEN %>mask-on<% END IF %>" <% IF mp_dim_yn <> "Y" THEN %>style="left:<%=mp_popup_left%>px;top:<%=mp_popup_top%>px;width:<%=mp_popup_width%>px;height:<%=mp_popup_height%>px;" <% END IF %>>
							<div class="main_layer"><%
								IF mp_content_type = "video" THEN %>
									<!-- 영상 타입 -->
									<iframe src='<%=mp_page_link%>' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='<%=mp_popup_width%>' HEIGHT='<%=mp_popup_height%>' allow='autoplay' allowfullscreen></iframe>
									<!-- //영상 타입 --><%
								ELSEIF mp_content_type = "link" THEN %>
									<!-- 페이지 링크 타입 -->
									<div>
										<% server.execute(mp_page_link) %>
									</div>
									<!-- //페이지 링크 타입 --><%
								ELSEIF mp_content_type = "image" THEN
									If mp_img_link = "" Then
										mp_img_link = "javascript:;"
									End If %>
									<!-- 이미지 타입 -->
									<div>
										<a href="<%=mp_img_link%>"><img src="<%=mp_img_path%>" /></a>
									</div>
									<!-- //이미지 타입 --><%
								END IF
								IF (mp_content_type = "video" OR mp_content_type = "image") AND mp_today_yn = "Y" THEN %>
									<div class="layer-bottom">
										<label><input type="checkbox" name="main_layer_input" id="main_layer_input" onclick="layer_close('<%=mp_idx%>');">오늘 하루 보지 않음</label>
										<a href="javascript:;" onclick="russel_pop_close('<%=mp_idx%>')" class="close-layer">닫기</a>
									</div><%
								END IF %>
							</div>
						</div>
					</div>
					<!-- //어드민 레이어 팝업 --> <%
				ElseIf mp_show_type = "win" Then %>
					<script>
					window.open("/russel/campus_common/main_popup_win.asp?idx=<%=mp_idx%>","popup_win_<%=mp_idx%>","width=<%=mp_popup_width%>px,height=<%=mp_popup_height+28%>px,top=<%=mp_popup_top%>px,left=<%=mp_popup_left%>px")
					</script>
				<% End If
			End If
		Next
	End If
%>


<script>

	function layer_close(idx) {
        console.log(idx)
		setCookie("main_layer_"+idx, "1", 1, 1);	// 1일 간 쿠키적용
		russel_pop_close(idx)
	}

	function russel_pop_close(idx) {
		$("#main_layer_"+idx).css("display","none")
	}
</script>

