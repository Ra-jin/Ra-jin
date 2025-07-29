
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_") 

tit01 = "모집 대상"
txt01 = "고3, 고2, 고1"
tit02 = "개강일"
txt02 = "3월 순차 개강"
tit03 = "접수 방법"
txt03 = "현장 또는 온라인 접수"
txt03_1 = "현재 모집 중"
coment = "* 자세한 내용은 학원별 모집 요강 참조"

qTxt01 = "수능까지 체계적인<br>과목별/수준별 맞춤 단과"
qTxt02 = "정규&middot;특강 단과"
quickUrl = "/intro/danka/2023/03/go3.asp"



Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	' method.asp 인클루드 안한 페이지에서 오류날 수 있지만, 안쓰는 페이지가 없을거라 가정
    Case "INTRO": txtCampus = "러셀"  '인트로
				  campusName = "intro"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
					txt03 = "온라인 원서 접수"
					coment = "* 원서 접수 확인 후 개별 안내 예정"
					quickUrl = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1271"


    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
					txt01 = "고3"
					txt02 = "3/1(수)"
					txt03 = "온라인 접수"
					quickUrl = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1272"

    Case "CD0245": txtCampus = "러셀 목동"   '목동
                    campusName = "russel_mokdong"
					txt01 = "고3, 고2"
					txt02 = "3/1(수)"
					txt03 = "현장 접수(모집 예정)"
					quickUrl = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1273"


    Case "CD0250": txtCampus = "러셀 부천"   '부천
                    campusName = "russel_bc"
					txt01 = "고3"
					txt02 = "3/1(수)부터 순차 개강"
					txt03 = "현장 접수 ㅣ모집요강 지원자격 해당자 순 접수"
					coment = ""
					quickUrl = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1274"

	Case "CD0244": txtCampus = "러셀 분당"   '분당
                    campusName = "russel_bundang"
					tit01 = "개강일"
					txt01 = "3/2(목)부터 순차적 개강"
					tit02 = "접수 기간"
					txt02 = "현재 모집 中 (*모집요강 지원자격 해당자 순 접수)"
					tit03 = "접수 방법"
					txt03 = "<strong>온라인 원서 접수 후 성적표 제출</strong><a href='https://russelbd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=152' class='bt-apply'>온라인 원서 접수하기</a><br /><span class='fz14'>*온라인 원서 접수를 완료하면 이후 입학 절차를 개별적으로 안내해드립니다.</span>"
					quickUrl = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1275"


	Case "CD0246": txtCampus = "러셀 센텀"   '센텀
                    campusName = "russel_ct"
					txt02 = "3월 1일 (수) 개강"
					txt03 = "현장 또는 온라인 접수ㅣ현재 모집 중"
					quickUrl = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1281"

    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
					quickUrl = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1276"
					txt03 = "현장 접수"

    Case "CD0257": txtCampus = "러셀 중계"   '중계
                    campusName = "russel_jg"
					txt01 = "고1, 고2, 고3"
					txt02 = "1차 개강 : 3/1(수), 2차 개강 : 3/6(월)"
					txt03 = "현장 접수"
					quickUrl = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1277"

	Case "CD0248": txtCampus = "러셀 평촌"   '평촌
                    campusName = "russel_pc"
					txt01 = "고1, 고2, 고3"
					txt03 = "현장 또는 온라인 접수 | 현재 모집 중"
					quickUrl = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1278"

	Case "CD0342": txtCampus = "러셀 대구" '대구
					campusName = "russel_dg"
					txt01 = "고3, 고2(인문계, 자연계)"
					txt02 = "3/1(수)"

	Case "CD0340": txtCampus = "러셀CORE"   '코어광주
                    campusName = "core_gj"
					coreCampus = "러셀CORE 광주"
					txt01 = "고3, 고2"
					txt02 = "1차 2/6(월) 마감, 2차 3/2(목) 개강 모집중"
					txt03 = "현장 또는 온라인 접수 | 현재 모집 중"
					quickUrl = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1282"

	Case "CD0341": txtCampus = "러셀CORE"   '코어대전
                    campusName = "core_dj"
					coreCampus = "러셀CORE 대전"

					txt01 = "고2, 고3"
					txt02 = "3월초 순차 개강"
					txt03 = "2월부터 현장 또는 온라인 접수<a class='bt-apply' href='https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=152'>원서접수 바로가기</a>"
					quickUrl = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1283"

	Case "CD0343": txtCampus = "러셀CORE"  '코어원주
					campusName = "core_wj"
					coreCampus = "러셀CORE 원주"
					txt01 = "고3, 고2"
					txt02 = "3월 2일 개강"
					txt03 = "현장 또는 온라인 접수 | 현재 모집 중"
					quickUrl = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1284"
					coment = "<a class='bt-apply m0' href='https://corewj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=152'>온라인 접수 바로가기</a>"

	Case "CD0344": txtCampus = "러셀CORE"  '코어전주
					campusName = "core_jj"
					coreCampus = "러셀CORE 전주"
					txt01 = "고2, 고3"
					txt02 = "3월 1일(수) 개강"
					quickUrl = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1285"
					txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='https://corejj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=152'>원서접수 바로가기</a>"


	Case "CD0345": txtCampus = "러셀CORE"  '코어창원
					campusName = "core_cw"
					coreCampus = "러셀CORE 창원"
					txt01 = "고3, 고2"
					txt03 = "현장 또는 온라인 접수 | 현재 모집 중"
					quickUrl = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1286"


	Case "CD0346": txtCampus = "러셀CORE"  '코어청주
					campusName = "core_cj"
					coreCampus = "러셀CORE 청주"
					txt01 = "고3, 고2"
					txt03 = "현장 또는 온라인 접수 | 현재 모집 중"
					quickUrl = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1287"
					txt02 = "3월 초 순차 개강"


	'Case "CD0258": txtDate = "기숙"
	'Case "CD0331": r_title = "삽자루 수학학원"
End Select
%>

    <div class="visual-area">
		<div class="swiper-container visual-slide">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/visual_bg01.jpg" alt="" /></div>
				</div>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/visual_bg02.jpg" alt="" /></div>
				</div>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/visual_bg03.jpg" alt="" /></div>
				</div>
			</div>
		</div>
		<div class="inner">
			<% If sCampusCode = "CD0244" Then '분당 %>
			<div class="visual-tit mt20">
				<p><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/v_tit01.png" alt="최상위권을 위한 재학생 맞춤 시스템" /></p>
				<p class="mt55 slide-in-elliptic-top-fwd delay"><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/v_tit02.png" alt="바른 공부 자습전용관" /></p>
				<p class="mt25 slide-in-elliptic-top-fwd delay"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular_go/v_title.png" alt="정규반 인트로/학원별" /></p>
			</div>
			<div class="v-tit-wrap" style="position: relative;">
				<div class="visual-info">
					<dl>
						<dt><%=tit01%></dt>
						<dd><%=txt01%></dd>
					</dl>
					<dl>
						<dt><%=tit02%></dt>
						<dd><%=txt02%></dd>
					</dl>
					<dl>
						<dt><%=tit03%></dt>
						<dd><%=txt03%></dd>
					</dl>
				</div>
				<p style="position: absolute;top: 0;right: 0;">재학생을 위한 관리는 달라야 합니다.<br>최상위권 재학생이 집결하는 <%=txtCampus%>에서 대입 성공을 시작하세요.</p>
			</div>
			<% Else %>
			<div class="visual-tit">
				<% If sCampusCode = "CD0250" Then '부천 %>
					<p><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular_go/v_tit01.png" alt="고3 맞춤 합격 관리 시스템" /></p>
					<% Else %>
					<p><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/v_tit01.png" alt="최상위권을 위한 재학생 맞춤 시스템" /></p>
					<% End If %>
					<p class="mt55 slide-in-elliptic-top-fwd delay"><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/v_tit02.png" alt="바른 공부 자습전용관" /></p>
					<% If sCampusCode = "INTRO" or sCampusCode = "CD0247" or sCampusCode = "CD0250" or sCampusCode = "CD0248" Then '인트로/강남/부천/평촌 %>
					<p class="mt25 slide-in-elliptic-top-fwd delay"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular_go/v_title.png" alt="정규반 인트로/학원별" /></p>
					<% Else %>
					<p class="mt25 slide-in-elliptic-top-fwd delay"><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/v_title.png" alt="정규반" /></p>
				<% End If %>
			</div>

				<% If sCampusCode = "CD0250" Then '부천 %>
				<div class="v-tit-wrap" style="margin-top: 40px;">
					<div class="visual-info">
						<dl>
							<dt><%=tit01%></dt>
							<dd><%=txt01%></dd>
						</dl>
						<dl>
							<dt><%=tit02%></dt>
							<dd><%=txt02%></dd>
						</dl>
						<dl>
							<dt><%=tit03%></dt>
							<dd><%=txt03%></dd>
						</dl>
						<dl>
							<dt>입학문의</dt>
							<dd><a href="/russel/info/qna/qna.asp" class="bt-link">온라인 상담</a> ㅣ 전화 상담 032.265.1010</dd>
						</dl>
					</div>
					<p>고3을 위한 관리는 달라야 합니다.<br>최상위권이 집결하는 <%=txtCampus%>에서 대입 성공을 시작하세요.</p>
				</div>
				<% Else %>
				<div class="v-tit-wrap">
					<div class="visual-info">
						<dl>
							<dt><%=tit01%></dt>
							<dd><%=txt01%></dd>
						</dl>
						<dl>
							<dt><%=tit02%></dt>
							<dd><%=txt02%></dd>
						</dl>
						<dl>
							<% If sCampusCode = "INTRO" Then '인트로 %>
							<dt><%=tit03%></dt>
							<dd>
								<%=txt03%><span class="a-txt"><%=txt03_1%></span><br>
								<span class="c-txt"><%=coment%></span>
							</dd>
							<% ElseIf sCampusCode = "CD0247" Then '강남 %>
							<dt><%=tit03%></dt>
							<dd>
								<%=txt03%> <a class="bt-apply" href="https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=152">원서접수 바로가기</a><br>
								<span class="c-txt"><%=coment%></span>
							</dd>
							<% ElseIf sCampusCode = "CD0343" Then '코어원주 %>

							<dt><%=tit03%></dt>
							<dd>
								<%=txt03%><br>
								<span class="c-txt"><%=coment%></span>
							</dd>
							<% ElseIf sCampusCode = "CD0001" Then '대치 %>
							<dt><%=tit03%></dt>
							<!-- D: 2/10(금) 09:00부터 링크 연결 -->
							<dd>
								<%=txt03%> 
								<a class="bt-apply" <%if curYmdhmin >= 202302100900 then%> href="https://russeldc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=152" <%else%> onclick="alert('원서 접수는 2/10(금) 오전 9시 이후 가능합니다.')" <%end if%>>원서접수 바로가기</a>
							</dd>
							<!-- <dd>
								<%=txt03%> <a class="bt-apply" href="https://russeldc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=152" >원서접수 바로가기</a>
							</dd> -->
							<% Else %>
							<dt><%=tit03%></dt>
							<dd>
								<%=txt03%>
							</dd>
							<% End If %>
						</dl>
					</div>
					<p>재학생을 위한 관리는 달라야 합니다.<br>최상위권 재학생이 집결하는 <%=txtCampus%>에서 대입 성공을 시작하세요.</p>
				</div>
				<% End If %>

			<% End If %>
		</div>
		<% If sCampusCode = "CD0250" Then '부천 %>
		<div class="quickBc">
			<a href="https://pf.kakao.com/_sFgGxj" target="_blank" ><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/banner_kakao_bc.png" alt="" /></a>
			<a onclick="fn_eventGo('https://russelbc.megastudy.net/russel/entinfo/popup_notice_service_nonlogin.asp')"  style="cursor: pointer;"><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular_go/quick_sms.png" alt="" /></a>
			<a style="background-color: #fff;border-left: 2px solid #3444d1;" href="/intro/2022/winter/index.asp#BcWinter" class="q-ban">
				<span>겨울방학, 최상위권을 <br>선점할 수 있는 기회!</span>
				<strong>윈터스쿨 2월 시작반</strong>
			</a>
		</div>

		<script>
			var x = location.hash;
			document.write(x); // 결과값: #hz
		</script>

		<% Else %>
		<!--quick 플로팅배너-->

		<% If sCampusCode = "CD0247" Then '강남 %>
		<a href="https://russelgn.megastudy.net/russel/info/notice/notice_view.asp?Code=25373&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1" class="n-q-banner">
			<span><img src="<%=Application("img_path_russel")%>/russel_gn/2023/regular_go/right_banner.png" alt="재수 성공 전략 설명회" /></span>
		</a>
		<% End if %>
		<div class="quick">
			<!--공통-->
			<% If sCampusCode = "CD0342" Then '대구 %>
			<p class="b-tit">수능&내신 대비 단과</p>
			<a class="q-ban">
				<span>수능까지 체계적인<br>과목별/수준별 맞춤 단과</span>
				<b class="fz16" style="margin-top: 4px;color: #000;display: block;">정규&middot;특강 단과</b>
			</a>
			<div class="go-wrap">
				<a href="https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1279" class="go-con">고3</a>
				<a href="https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1280" class="go-con">고2</a>
			</div>
			<% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
			<p class="b-tit">수능&내신 대비 단과</p>
			<a href="<%=quickUrl%>" class="q-ban">
				<span>수능까지 체계적인<br>과목별/수준별 맞춤 단과</span>
				<strong>[고3&middot;2] 정규&middot;특강 단과</strong>
			</a>
			<% ElseIf sCampusCode = "CD0244" Then '분당 %>
			<p class="b-tit bd">단과와 의무자습을 한방에</p>
			<a href="<%=quickUrl%>" class="q-ban">
				<span>수능까지 체계적인<br>과목별/수준별 맞춤 단과</span>
				<strong>[고3] 정규&middot;특강 단과</strong>
			</a>
			<% ElseIf sCampusCode = "CD0245" Then '목동 %>
			<p class="b-tit">수능 대비 단과</p>
			<a href="<%=quickUrl%>" class="q-ban">
				<span>수능까지 체계적인<br>과목별/수준별 맞춤 단과</span>
				<strong>[고3] 정규&middot;특강 단과</strong>
			</a>
			<% Else %>
			<p class="b-tit">수능&amp;내신 대비 단과</p>
			<a href="<%=quickUrl%>" class="q-ban">
				<span>수능까지 체계적인<br>과목별/수준별 맞춤 단과</span>
				<strong>[고3] 정규&middot;특강 단과</strong>
			</a>
			<% End If %>
			<!--//공통-->

			<!--학원별-->

			<% If sCampusCode = "INTRO" Then '인트로 %>
			<a href="https://russel.megastudy.net/intro/danka/2023/03/mid.asp"  class="q-ban">
				<span>내신 1등급을 위한<br>학교별 내신 맞춤 완벽대비</span>
				<strong>[고2&middot;1] 내신 대비 강좌</strong>
			</a>
			<% ElseIf sCampusCode = "CD0247" Then '강남 %>
			<a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=242"  class="q-ban mb20">
				<span>최상위권 진입을 위한<br>내신+수능 완벽대비</span>
				<strong>[고2&middot;1] 얼리버드 단과</strong>
			</a>			
			<% ElseIf sCampusCode = "CD0245" Then '목동 %>
			<a href="https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1073" class="q-ban">
				<span>고2를 위한<br>맞춤 프로그램</span>
				<strong>[고2] 수능집중반</strong>
			</a>
			<% ElseIf sCampusCode = "CD0244" Then '분당 %>
			<a href="/russel_bundang/info/study_hall/study_hall.asp" class="q-ban">
				<span>면학분위기로 소문난</span>
				<strong>바른공부 자습전용관</strong>
			</a>
			<a href="/russel_bundang/2021/student_zone/index.asp" class="q-ban">
				<span>재원생 전용<br>프리미엄 콘텐츠</span>
				<strong>재원생 Zone</strong>
			</a>
			<% ElseIf sCampusCode = "CD0248" Then '평촌 %>
			<a href="https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=255"  class="q-ban">
				<span>내신 1등급을 위한<br>학교별 내신 맞춤 완벽대비</span>
				<strong>[고3&middot;2&middot;1] 내신 대비 강좌</strong>
			</a>
			<% ElseIf sCampusCode = "CD0249" Then '영통 %>
			<a href="https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=253"  class="q-ban">
				<span>내신 1등급을 위한<br>학교별 내신 맞춤 완벽대비</span>
				<strong>[고2&middot;1] 내신 대비 강좌</strong>
			</a>
			<% ElseIf sCampusCode = "CD0257" Then '중계 %>
			<a href="https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=254"  class="q-ban">
				<span>내신 1등급을 위한<br>학교별 내신 맞춤 완벽대비</span>
				<strong>[고1&middot;2] 내신 대비 강좌</strong>
			</a>
			<% ElseIf sCampusCode = "CD0246" Then '센텀 %>
			<a href="https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=256"  class="q-ban">
				<span>내신 1등급을 위한<br>학교별 내신 맞춤 완벽대비</span>
				<strong>[고3&middot;2&middot;1] 내신 대비 강좌</strong>
			</a>
			<% End If %>
			<!--학원별-->

		</div>
		<!--//quick 플로팅배너-->
		<% End If %>
	</div>

	<!-- fix-menu -->
	<nav class="fix-menu-wrap">
		<div class="fix-menu type01 js-fix-menu">
			<% If sCampusCode = "INTRO" Then '인트로 %>
			<div class="menu">
				<a class="on" href="javascript:void(0);">최상위권 재학생 집결, 러셀</a>
				<a href="javascript:void(0);">재학생에 최적화된 시스템</a>
				<a href="javascript:void(0);">학원별 모집안내</a>
			</div>
			<% ElseIf sCampusCode = "CD0340" or sCampusCode = "CD0341" or sCampusCode = "CD0343" or sCampusCode = "CD0344" or sCampusCode = "CD0345" or sCampusCode = "CD0346" Then '코어 광주/대전/원주/전주/창원/청주 %>
			<div class="menu">
				<a class="on" href="javascript:void(0);"><%=coreCampus%> 모집요강 및 장학혜택</a>
				<a href="javascript:void(0);">최상위권 재학생 집결, <%=txtCampus%></a>
				<a href="javascript:void(0);">재학생에 최적화된 시스템</a>
			</div>
			<% Else %>
			<div class="menu">
				<a class="on" href="javascript:void(0);"><%=txtCampus%> 모집요강 및 장학혜택</a>
				<a href="javascript:void(0);">최상위권 재학생 집결, 러셀</a>
				<a href="javascript:void(0);">재학생에 최적화된 시스템</a>
			</div>
			<% End If %>
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

	//러셀부천 동영상 팝업
	function playPop(url){
				var width = $(window).width();
				var height = $(window).height();
				var left = width/2;
				var top = height/2;

				var wnd = window.open("", "talk", "width=554,height=316,scrollbars=0,resizable=no,location=no,top="+ top +",left="+ left);
				wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+url+"?autoPlay=true' frameborder='no' scrolling='no' allowfullscreen></iframe>");
			}
	</script>

	<!-- 조정식/양승진 설명회 팝업 -->
<!--#include virtual="/intro/pop/2022/pop_pre.asp" -->
	<!-- 조정식/양승진 설명회 팝업 -->