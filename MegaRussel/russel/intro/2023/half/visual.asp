
<%
campusName = "intro"
tit01 = "개강일"
txt01 = "8월 순차 개강"
tit02 = "접수방법"
txt02 = "현장 또는 온라인 접수"
comment = "* 자세한 내용은 학원별 모집 요강 참조"

amUrl = "/intro/danka/2023/07/am.asp"
specialUrl = "/intro/danka/2023/07/go3.asp"
halfSpecialUrl = "/intro/danka/2023/04/half.asp"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로
				  campusName = "intro"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
					tit01 = "접수 현황"
					txt01 = "현재 모집 중"
					txt02 = "온라인 접수 <a href='https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=155' class='bt-apply'>원서접수 바로가기</a>"
					comment = "* 원서접수 확인 후 개별 안내 예정"

					bajaUrl = "https://russelgn.megastudy.net/russel/info/notice/notice_view.asp?Code=27128&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1"
					amUrl = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1389"
					specialUrl = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1348"
					halfSpecialUrl = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1330"

    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
					txt01 = "상시입학(매주 월/목)"
					txt02 = "온라인 접수 <a href='https://russeldc.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=155' class='bt-apply'>대기자 원서접수 바로가기</a>"
                    comment = ""

					amUrl = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1390"
					specialUrl = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1349"
					halfSpecialUrl = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1331"
					end_txt = "전반 마감<br>대기자 접수 중"

    Case "CD0245": txtCampus = "러셀 목동"   '목동
                    campusName = "russel_mokdong"
					tit01 = "접수 현황"
					txt01 = "대기자 접수 중"
					tit02 = "접수 방법"
					<!-- txt02 = "현장 접수(현재 모집 중)" -->
					txt02 = "유선 문의"
					comment = ""

					amUrl = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1391"
					specialUrl = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1350"
					halfSpecialUrl = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1332"
					end_txt = "마감<br>대기자 접수 중"

    Case "CD0250": txtCampus = "러셀 부천"   '부천
                    campusName = "russel_bc"
					txt01 = "매월 초 순차 개강"
					tit02 = "접수 방법"
					txt02 = "현장 접수"
					comment = "*모집요강 지원자격 해당자순 접수"
					tit03 = "입학문의"
					txt03 = "<a href='https://pf.kakao.com/_sFgGxj' class='bt-cst'>온라인 상담</a>ㅣ<br>전화 상담 032.265.1010"
					amUrl = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1402"
					specialUrl = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1351"

	Case "CD0244": txtCampus = "러셀 분당"   '분당
                    campusName = "russel_bundang"
					tit01 = "접수 기간"
					txt01 = "전석 마감, 대기자 접수 中 <span class='c-txt'>(*모집요강 지원자격 해당자 순 접수)</span>"
					txt02 = "온라인 대기 접수 후 성적표 제출 <a href='https://russelbd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=155' class='bt-apply'>대기 접수 바로가기</a>"
					comment = "*온라인 대기 접수를 완료하면 이후 대기 순서에 따라 입학 절차를 개별적으로 안내해드립니다."

					amUrl = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1393"
					specialUrl = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1352"
					end_txt = "전석 마감<br>(대기자 접수 中)"


	Case "CD0246": txtCampus = "러셀 센텀"   '센텀
                    campusName = "russel_ct"
					txt02 = "현장 또는 온라인 접수 <a href='https://russelct.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=155' class='bt-apply'>온라인 원서 접수하기</a>"
					comment = ""

					amUrl = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1398"
					specialUrl = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1358"
					halfSpecialUrl = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1333"

    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
					txt01 = "매월 순차 개강"
					txt02 = "현장 접수<br><span class='fz12'>* 학원으로 잔여석을 확인해 주시기 바랍니다.</span>"
                    comment = ""

					amUrl = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1394"
					specialUrl = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1353"

    Case "CD0257": txtCampus = "러셀 중계"   '중계
                    campusName = "russel_jg"
					txt01 = "매월 초 개강"
					txt02 = "전석 마감 (대기자 접수 中)"
					comment = ""

					amUrl = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1395"
					specialUrl = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1354"
					end_txt = "전석 마감<br>(대기자 접수 中)"

	Case "CD0248": txtCampus = "러셀 평촌"   '평촌
                    campusName = "russel_pc"
					txt01 = "7/3(월) 개강"
					txt02 = "현장 접수"
					comment = ""

					amUrl = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1396"
					specialUrl = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1355"

	Case "CD0342": txtCampus = "러셀 대구" '대구
					campusName = "russel_dg"
					txt01 = "10월 순차 개강"
					txt02 = "온라인 접수 <a href='https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=155' class='bt-apply'>원서접수 바로가기</a>"
					comment = "*온라인 원서 접수 완료 시, 이후 입학절차에 대해 개별적으로 안내"

					amUrl = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1397"
					specialUrl = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1356"

	Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
                    campusName = "core_gj"
					txt01 = "9월 순차 개강 | 접수 중"
					txt02 = "현장 접수"
					comment = ""

					specialUrl = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1359"

	Case "CD0341": txtCampus = "러셀CORE 대전"   '코어대전
                    campusName = "core_dj"
					txt01 = "매월 초 개강"
					txt02 = "현장 또는 온라인 접수 <a href='https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=155' class='bt-apply'>원서접수 바로가기</a>"
					comment = ""

					specialUrl = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1360"

    Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
				   campusName = "core_wj"
				   txt01 = "매월 초 개강"
				   txt02 = "현장 또는 온라인 접수 <a href='https://corewj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=155' class='bt-apply'>원서접수 바로가기</a>"
				   comment = ""

				   specialUrl = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1361"
				   halfSpecialUrl = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1334"

    Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                   campusName = "core_jj"
				   txt01 = "상시 입학(매주 월/금)"
				   txt02 = "현장 또는 온라인 접수 <a href='https://corejj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=155' class='bt-apply'>원서접수 바로가기</a>"
				   comment = ""

				   specialUrl = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1362"
				   halfSpecialUrl = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1335"

    Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                   campusName = "core_cw"
				   txt01 = "매월 초 개강"
				   txt02 = "현장 또는 온라인 접수 <a href='https://corecw.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=155' class='bt-apply'>원서접수 바로가기</a>"
				   comment = ""


				   specialUrl = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1363"
				   halfSpecialUrl = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1337"

    Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                   campusName = "core_cj"
				   txt01 = "7월 순차 개강"
				   txt02 = "현장 또는 온라인 접수 <a href='https://corecj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=155' class='bt-apply'>원서접수 바로가기</a>"
				   comment = ""

				   specialUrl = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1364"
				   halfSpecialUrl = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1336"

	'Case "CD0258": txtDate = "기숙"
	'Case "CD0331": r_title = "삽자루 수학학원"
End Select
%>

    <div class="visual-area">

		<!--visual-->
		<div class="visual">
			<div class="scene-wrap">
				<div class="scene">
					<div class="scene-inner">
						<!--첫 번째 화면-->
						<p><img src="<%=Application("img_path_russel")%>/intro/2023/half/visual_bg01.jpg" alt="어두운 계기판"></p>
						<p><img src="<%=Application("img_path_russel")%>/intro/2023/half/visual_bg02.jpg" alt="밝아진 계기판"></p>
						<p><img src="<%=Application("img_path_russel")%>/intro/2023/half/visual_tit01.png" alt="불필요한 수업은 줄이고"></p>

						<div class="clock">
							<p class="img-s"><img src="<%=Application("img_path_russel")%>/intro/2023/half/t_line.png" alt="계기판 바늘"></p>
						</div>

						<p><img src="<%=Application("img_path_russel")%>/intro/2023/half/visual_bg03.jpg" alt="빛나는 계기판"></p>
						<p><img src="<%=Application("img_path_russel")%>/intro/2023/half/visual_tit02.png" alt="자습은 최대로"></p>
						<!--//첫 번째 화면-->

						<!--두 번째 화면-->
						<div class="main <%=campusName%>">
							<div class="scene scene02">
								<div class="scene-inner">
									<% If sCampusCode = "CD0244" Then '분당 %>
									<p><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/half/visual_tit03.png" alt="불필요한 수업은 줄이고, 자습은 최대로 2024 반수반"></p>
									<% Else %>
									<p><img src="<%=Application("img_path_russel")%>/intro/2023/half/visual_tit03.png" alt="불필요한 수업은 줄이고, 자습은 최대로 2024 반수반"></p>
									<% End If %>
									<!-- <p><b>더 빠르게, 더 강력하게, 더 확실하게!</b><br>최상위권이 집결하는 <%=txtCampus%>에서 반수 성공을 시작하세요.</p> -->
									<div class="visual-info">
										
										<% If sCampusCode <> "CD0246" Then '센텀제외 %>										
										<dl>
											<dt><%=tit01%></dt>
											<dd><%=txt01%></dd>
										</dl>
										<% End If %>
										<dl>
											<dt><%=tit02%></dt>
											<dd>
												<%=txt02%>
												<br>
												<span class="c-txt"><%=comment%></span>
											</dd>
										</dl>
										<% If sCampusCode = "CD0250" Then '부천 %>
										<dl>
											<dt><%=tit03%></dt>
											<dd><%=txt03%></dd>
										</dl>
										<% End If %>
									</div>
								</div>
							</div>
						</div>
						<!--//두 번째 화면-->

					</div>
				</div>
			</div>
			<!-- 마감 딱지 -->
			<% If sCampusCode = "CD0001" OR sCampusCode = "CD0257" OR sCampusCode = "CD0245" OR sCampusCode = "CD0244" Then '대치/중계/목동/분당 %>
			<div class="ico-end" style="top: 570px;left: 50%;margin-left:305px;"><div><%=end_txt%></div></div>
			<% End If %>
			<!-- //마감 딱지 -->
		</div>
		<!--//visual-->

		<!--quick 플로팅배너-->
		<div style="display: none;" class="quick <%=campusName%>">
			<% If sCampusCode = "CD0244" Then '분당 %>
			<!-- <a href="https://russelbd.megastudy.net/russel/info/notice/notice_view.asp?Code=27300&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1" class="mb20">
				<span><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/half/r_banner_01.png" alt="2024 반수반 성공전략 설명회" /></span>
			</a> -->
			<% End If %>

			<p class="b-tit">2024 수능 대비 단과</p>
			<% If sCampusCode = "CD0246" Then '센텀 %>
			<a href="https://russelct.megastudy.net/russel/info/notice/notice_view.asp?Code=27137&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1"  class="q-ban">
				<span>빠른 반수생을 위한 <br> 4월 개념 정리 특강</span>
				<strong>4월 국수영 시작반</strong>
			</a>
			<% End If %>
      
			<% If sCampusCode = "CD0247" Then '강남 %>
			<a href="<%=amUrl%>" class="q-ban">
				<span>N수생을 위한<br>평일 오전&middot;오후 단과</span>
				<strong>AM단과</strong>
			</a>
			<a href="<%=specialUrl%>"  class="q-ban">
				<span>수능까지 체계적인<br>과목별/수준별 맞춤 단과</span>
				<strong>정규&middot;특강 단과</strong>
			</a>
			<a href="/russel/info/qna/faq.asp" class="mt20" target="_blank"><img src="<%=Application("img_path_russel")%>/intro/2023/half/faq_banner.png" alt="자주하는 질문" /></a>
			<% Else %>

      		<!-- <% If sCampusCode <> "CD0244" and sCampusCode <> "CD0250" and sCampusCode <> "CD0257" and sCampusCode <> "CD0248" and sCampusCode <> "CD0249" and sCampusCode <> "CD0340" and sCampusCode <> "CD0342" and sCampusCode <> "CD0341" and sCampusCode <> "CD0344" Then '목동/분당/부천/중계/평촌/영통/코어광주/코어대전/코어전주 제외 %>
			<a href="<%=halfSpecialUrl%>"  class="q-ban">
				<span>반수생을 위한 <br> 고효율 압축 특강</span>
				<strong>반수특강</strong>
			</a>
			<% End If %> -->

			<% If isCore = 0 Then '코어 제외 %>
			<a href="<%=amUrl%>" class="q-ban">
				<span>N수생을 위한<br>평일 오전&middot;오후 단과</span>
				<strong>AM단과</strong>
			</a>
			<% End If %>

			<a href="<%=specialUrl%>"  class="q-ban">
				<span>수능까지 체계적인<br>과목별/수준별 맞춤 단과</span>
				<strong>정규&middot;특강 단과</strong>
			</a>
			<% End If %>

			<% If sCampusCode = "CD0250" Then '부천 %>
			<a href="https://pf.kakao.com/_sFgGxj" class="mt20">
				<span><img src="<%=Application("img_path_russel")%>/russel_bc/2023/half/bn_kakao.png" alt="반수반 채팅상담" /></span>
			</a>
			<a href="javascript:void(0);" onclick="fn_eventGo('/russel/entinfo/popup_notice_service_nonlogin.asp')" class="mt20">
				<span><img src="<%=Application("img_path_russel")%>/russel_bc/2023/half/bn_arimi.png" alt="문자수신 알리미" /></span>
			</a>
			<% End If %>

			<% If sCampusCode <> "CD0247" Then '강남제외 %>
			<!-- 영상배너 -->
			<!-- <a href="javascript:void(0);" onclick="playPopup('https://tv.naver.com/embed/35138567?autoPlay=true')" class="mt15">
				<span><img src="<%=Application("img_path_russel")%>/intro/2023/half/media_banner.jpg" alt="동영상 플레이 버튼" /></span>
			</a> -->
			<!-- //영상배너 -->
			<% End If %>
		</div>
		<!--//quick 플로팅배너-->

		<script>
			// //영상 팝업
			// function playPopup(url){
			// 	var sUrl = url.toLowerCase();
			// 	var wnd = window.open("", "media", "width=790,height=478,scrollbars=0,resizable=no,location=no");
	
			// 	// 네이버tv
			// 	if (sUrl.indexOf('naver.com') > -1) {
			// 		sUrl = sUrl.replace("/v/", "/embed/");
			// 		wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+sUrl+"' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' allow='autoplay' allowfullscreen></iframe>");
			// 		wnd.document.title="불필요한 시간은 줄이고, 자습은 최대로 2024 반수반";
			// 	// 유튜브
			// 	} else {
			// 		wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+url+"?autoPlay=true' frameborder='no' scrolling='no' allowfullscreen></iframe>");
			// 	}
			// }
	
		</script>



	</div>

	<!-- fix-menu -->
	<nav class="fix-menu-wrap">
		<div class="fix-menu type01 js-fix-menu">
			<div class="menu">
				<% If sCampusCode = "INTRO" Then '인트로 %>
				<a class="on" href="javascript:void(0);">결과로 증명하는 반수반</a>
				<a href="javascript:void(0);">반수생 맞춤 시스템</a>
				<a href="javascript:void(0);">학원별 모집 안내</a>
				<% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
				<a class="on" href="javascript:void(0);">모집요강 및 장학혜택</a>
				<a href="javascript:void(0);">결과로 증명하는 반수반</a>
				<a href="javascript:void(0);">반수생 맞춤 시스템</a>
				<% Else %>
					<a class="on" href="javascript:void(0);">모집요강 및 장학혜택</a>
					<a href="javascript:void(0);">결과로 증명하는 반수반</a>
					<a href="javascript:void(0);">반수생 맞춤 시스템</a>
				<% End If %>
			</div>
		</div>
	</nav>
	<!-- //fix-menu -->

	<script>

	//quick 팝업창
	var popH = screen.availHeight;
	var popupWidth = 794;
	var popupX = (window.screen.width / 2) - (popupWidth / 2);

	//학원 문자수신 알리미 신청 바로가기
	function fn_eventGo(url) {
		window.open(url,'popup_mock','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	}

	</script>

