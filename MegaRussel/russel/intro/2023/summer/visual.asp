
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

tit01 = "모집 대상"
txt01 = "고3&middot;고2&middot;고1"
tit02 = "개강일"
txt02 = "7월 순차 개강"
tit03 = "접수 방법"
txt03 = "현장 또는 온라인 접수ㅣ현재 모집 중<span>*자세한 내용은 학원별 모집 요강 참조</span>"
passUrl = "/perfect/2023/susi/index.asp"
regularUrl = "/intro/danka/2023/07/go3.asp"
summerUrl = "/intro/danka/2023/04/summer.asp"
summerUrl02 = "javascript:alert('추후 오픈 예정입니다.');"
summerUrl03 = "javascript:alert('추후 오픈 예정입니다.');"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	' method.asp 인클루드 안한 페이지에서 오류날 수 있지만, 안쓰는 페이지가 없을거라 가정
    Case "INTRO": txtCampus = "러셀"  '인트로
				  campusName = "intro"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
					tit01 = "모집 현황"
					txt01 = "<p class='red_txt fz18'>전 학년 마감 (대기 접수 불가)</ㅔ>"
					tit02 = "운영 기간"
					txt02 = "7/17(월) ~ 8/15(화)"
					txt03 = "온라인 원서 접수<a href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=154' class='bt-apply'>원서접수 바로가기</a><span>*원서접수 확인 후 개별 안내 예정</span>"
                    passUrl = "https://russelgn.megastudy.net/russel_gn/event/2022/hero/index.asp"
					regularUrl = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1348"
					summerUrl = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1365"
					summerUrl02 = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=262"
					icoEnd = "전석 마감"

    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
					txt01 = "고2&middot;고3"
					txt02 = "7월 순차 개강"
					txt03 = "현장 또는 온라인 접수"
                    passUrl = "https://russeldc.megastudy.net/perfect/2023/susi/index.asp"
					regularUrl = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1349"
					summerUrl = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1366"

    Case "CD0245": txtCampus = "러셀 목동"   '목동
                    campusName = "russel_mokdong"
					txt01 = "고3"
					txt02 = "7/17(월) ~ 8/15(화)"
                    passUrl = "https://russelmd.megastudy.net/russel_mokdong/event/2023/interview/index.asp"
					regularUrl = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1350"
					summerUrl = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1367"
					icoEnd = "전석 마감<br>(전형별 대기자 연락 중)"


    Case "CD0250": txtCampus = "러셀 부천"   '부천
                    campusName = "russel_bc"
					txt01 = "고3&middot;고2&middot;고1&middot;중3"
					txt02 = "7/17(월)부터 순차 개강"
					regularUrl = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1351"
					summerUrl = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1368"
					summerUrl02 = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=263"
					summerUrl03 = "javascript:alert('추후 오픈 예정입니다.');"
					icoEnd = "사전예약<br>마감"
					txt03 = "대기 접수 중"

	Case "CD0244": txtCampus = "러셀 분당"   '분당
                    campusName = "russel_bundang"
					txt01 = "고3&middot;고2"
					tit02 = "운영 기간"
					txt02 = "7/17(월) ~ 8/15(화) [4주 완성]"
					txt03 = "전석 마감, 대기자 접수 中	<a href='https://russelbd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=154' class='bt-apply'>온라인 대기 신청하기</a>"
                    passUrl = "/russel_bundang/event/2023/interview/index.asp"
					regularUrl = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1352"
					summerUrl = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1369"
					icoEnd = "전석 마감<br>(대기자 접수 中)"


	Case "CD0246": txtCampus = "러셀 센텀"   '센텀
                    campusName = "russel_ct"
					txt02 = "7/15(토) 개강"
					txt03 = "현장 또는 온라인 접수ㅣ대기 접수 중"
                    passUrl = "https://russelct.megastudy.net/russel/info/notice/notice_view.asp?Code=26592&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1"
					regularUrl = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1358"
					summerUrl = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1371"
					icoEnd = "전 학년 마감"

    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
					txt01 = "고3&middot;고2&middot;고1"
					tit02 = "썸머기간"
					txt02 = "7/15(토)~8/20(일)"
					txt03 = "사전접수 마감<a href='https://russelyt.megastudy.net/russel/info/waiting/list.asp?ClsCode=2' class='bt-apply'>온라인 대기 바로가기</a>"
                    passUrl = "/russel_yt/event/2023/hero/index.asp"
					regularUrl = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1353"
					summerUrl = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=264"
					icoEnd = "대기자 접수 중<br>사전접수 마감"

    Case "CD0257": txtCampus = "러셀 중계"   '중계
                    campusName = "russel_jg"
					txt01 = "고1&middot;고2&middot;고3"
					txt02 = "1차 : 7/15(토)<br>2차 : 7/17(월)~8/13(일)"
					txt03 = "전석 마감"
                    passUrl = "https://russeljg.megastudy.net/russel_jg/event/2023/hero/index.asp"
					regularUrl = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1354"
					summerUrl = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=265"
					icoEnd = "전석 마감<br>(대기자 접수 中)"

	Case "CD0248": txtCampus = "러셀 평촌"   '평촌
                    campusName = "russel_pc"
					txt01 = "고3&middot;고2&middot;고1"
					txt02 = "7/15(토) 개강"
					txt03 = "사전예약 마감 / 대기자 접수 중(유선/현장)"
                    passUrl = "https://russelpc.megastudy.net/russel/info/notice/notice_view.asp?Code=23394&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1"
					regularUrl = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1355"
					summerUrl = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=266"
					icoEnd = "사전예약 마감/<br>대기자 접수 중"


	Case "CD0342": txtCampus = "러셀 대구" '대구
					campusName = "russel_dg"
					txt01 = "고3&middot;고2"
					tit02 = "운영 기간"
					txt02 = "7/17(월)~8/13(일)"
					txt03 = "추후 공지"
                    passUrl = "https://russeldg.megastudy.net/perfect/2023/susi/index.asp"
					regularUrl = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1356"
					summerUrl = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1370"
					icoEnd = "고2, 고3<br>마감"

	Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
                    campusName = "core_gj"
					txt01 = "고3&middot;고2&middot;고1"
					txt02 = "7월 17일(월) 개강"
					txt03 = "현장  접수ㅣ현재 모집 중"
                    passUrl = "https://coregj.megastudy.net/core_gj/event/2023/interview/index.asp"
					regularUrl = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1359"
					summerUrl = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1372"

	Case "CD0341": txtCampus = "러셀CORE 대전"   '코어대전
                    campusName = "core_dj"
					txt01 = "고3&middot;고2"
					txt02 = "7월 18일(화)"
					txt03 = "현장 또는 온라인 접수<a href='https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=154' class='bt-apply'>원서접수 바로가기</a>"
                    passUrl = "https://coredj.megastudy.net/core_dj/event/2023/interview/index.asp"
					regularUrl = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1360"
					summerUrl = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1373"
					icoEnd = "전석마감/<br>대기자 접수 중"

	Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
					campusName = "core_wj"
					txt01 = "고3&middot;고2&middot;고1"
					txt02 = "7월 17일 (월)"
					txt03 = "현장 또는 온라인 접수  <a href='https://corewj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=154' class='bt-apply'>원서접수 바로가기</a>"
                    passUrl = "https://corewj.megastudy.net/perfect/2023/susi/index.asp"
					regularUrl = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1361"
					summerUrl = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1374"
					icoEnd  = "전석마감/<br>대기자 접수 중"


	Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
					campusName = "core_jj"
					txt01 = "고3&middot;고2"
					txt02 = "7월 17일 (월)"
					txt03 = "현장 또는 온라인 접수<a href='https://corejj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=154' class='bt-apply'>원서접수 바로가기</a>"
                    passUrl = "https://corejj.megastudy.net/perfect/2023/susi/index.asp"
					regularUrl = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1362"
					summerUrl = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1375"
					icoEnd = "전석마감/<br>대기자 접수 중"

	Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
					campusName = "core_cw"
					txt01 = "고3,고2,고1"
					txt02 = "7/18(화) 개강"
					txt03 = "현장 또는 온라인 접수ㅣ현재 모집 중<a href='https://corecw.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=154' class='bt-apply'>원서접수 바로가기</a>"
                    passUrl = "https://corecw.megastudy.net/perfect/2023/susi/index.asp"
					regularUrl = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1363"
					summerUrl = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1376"
					icoEnd ="전학년 마감임박 "


	Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
					campusName = "core_cj"
					txt01 = "고3&middot;고2&middot;고1"
					txt02 = "7/17(월)"
					txt03 = "현장 또는 온라인 접수 <a href='https://corecj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=154' class='bt-apply'>원서접수 바로가기</a>"
                    passUrl = "https://corecj.megastudy.net/perfect/2023/susi/index.asp"
					regularUrl = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1364"
					summerUrl = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1377"


	'Case "CD0258": txtDate = "기숙"
	'Case "CD0331": r_title = "삽자루 수학학원"
End Select
%>

<div class="visual-area">

    <div class="v-left">
        <span>
            <img src="<%=Application("img_path_russel")%>/intro/2023/summer/visual_left.png" alt="" />
        </span>
        <span class="bubble01">
            <img src="<%=Application("img_path_russel")%>/intro/2023/summer/bubble01.png" alt="" />
        </span>
        <span class="bubble02">
            <img src="<%=Application("img_path_russel")%>/intro/2023/summer/bubble02.png" alt="" />
        </span>
        <span class="bubble03">
            <img src="<%=Application("img_path_russel")%>/intro/2023/summer/bubble03.png" alt="" />
        </span>
        <span class="bubble04">
            <img src="<%=Application("img_path_russel")%>/intro/2023/summer/bubble04.png" alt="" />
        </span>
    </div>
    <div class="v-right"><img src="<%=Application("img_path_russel")%>/intro/2023/summer/visual_right.png" alt="" /></div>

    <canvas id="bubble"></canvas>

    <div class="inner">
		<% If sCampusCode = "CD0341" OR sCampusCode = "CD0340" OR sCampusCode = "CD0343" OR sCampusCode = "CD0344" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" Then '코어대전/광주/원주/전주/창원/청주 %>
        <!-- <p><img src="<%=Application("img_path_russel")%>/intro/2023/summer/v_txt01_core.png" alt="최상위권이 집결하는 러셀" /></p> -->
		<% Else %>
        <!-- <p><img src="<%=Application("img_path_russel")%>/intro/2023/summer/v_txt01.png" alt="최상위권이 집결하는 러셀" /></p> -->
		<% End if %>
        <p class="mt60"><img src="<%=Application("img_path_russel")%>/intro/2023/summer/v_txt02.png" alt="바른공부 자습전용관" /></p>
        <p class="mt30 bounceAni"><img src="<%=Application("img_path_russel")%>/intro/2023/summer/v_txt03.png" alt="2023 썸머스쿨" /></p>
        <p class="v-stit">
            짧은 <strong>여름방학을 성공적</strong>으로 보내는 방법,<br>면학분위기로 소문난 <strong><%=txtCampus%>에서 경쟁하는 것</strong>입니다.
        </p>
        <div class="v-info <%=campusName%>">
            <dl>
                <dt><%=tit01%></dt>
                <dd><%=txt01%></dd>
            </dl>
            <dl>
				<% If sCampusCode = "CD0245" Then '목동 %>
                <dt style="width:125px">썸머스쿨 기간</dt>
				<% Else %>
                <dt><%=tit02%></dt>
				<% End if %>
                <dd class="<%=campusName%>"><%=txt02%></dd>
            </dl>
			<% If sCampusCode = "CD0249" Then '영통 %>
            <dl>
                <dt><%=tit03%></dt>
                <dd><%=txt03%>
					<div class="s-notice">
						<span style="top: 0;">*유의사항</span>
						<div class="n-view">							
							* 유의사항 <br>
							&nbsp;&nbsp;① 사전접수 마감으로 온라인 대기 접수를 해주시기 바랍니다.<br>
							&nbsp;&nbsp;② 대기 접수자는 사전접수자 등록 후 여석 발생 시 순차적으로 등록 안내 예정입니다.<br><br>

							※ 사전 접수 기간 안내(전체 마감)<br>
							▶ 4/18(화) 오후 2시 <br><br>

							- 사전예약금 접수는 선착순으로 진행되었습니다.<br>
							- 사전예약금을 납부하신 분들에 한 해 별도로 실등록 기간을 안내해 드릴 예정입니다.<br>
							&nbsp;&nbsp;① 수강 희망하는 강좌를 선택<br>
							&nbsp;&nbsp;② 안내해드린 등록 기간 내 방문하여 신청서 작성, 증빙서류 제출, 단과&바자관 비용 전액 결제<br>
							&nbsp;&nbsp;③ 추후 OT 참석 및 온라인으로 급식 결제 (별도 안내 예정)

						</div>
					</div>
				</dd>
            </dl>
			<% Else %>
            <dl>
                <dt><%=tit03%></dt>
                <dd>
					<% If sCampusCode = "CD0245" Then '목동 %>
					온라인 전형 접수 ㅣ 마감 (대기자 접수 중)
					<a <% if curYmdhmin < 202305010900 then %> href="javascript:;" onclick="alert('5/1(월) 오전 9시부터 접수 가능합니다.')" <%else%> href='https://russelmd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=154' <%end if%> class='bt-apply'>대기자 접수 바로가기 </a>

					<% ElseIf sCampusCode = "CD0342" Then '대구 %>
					온라인 접수
					<a <% if curYmdhmin < 202305081400 then %> href="javascript:;" onclick="alert('추후 오픈됩니다.')" <%else%> href='https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=154' <%end if%> class='bt-apply'>원서접수 바로가기</a>
					<% Else %>
					<%=txt03%>
					<% End if %>
				</dd>
            </dl>
			<% End if %>
			<% If sCampusCode = "CD0250" Then '부천 %>
            <dl>
                <dt>입학 문의</dt>
                <dd>전화 상담 032.265.1010<a href="https://pf.kakao.com/_sFgGxj" target="_blank" class="bt-apply">온라인 상담</a></dd>
            </dl>
			<% End if %>
        </div>

		<!--마감딱지-->
		<% If sCampusCode = "CD0248" OR sCampusCode = "CD0249" OR sCampusCode = "CD0342" OR sCampusCode = "CD0244" OR sCampusCode = "CD0250" OR sCampusCode = "CD0247" OR sCampusCode = "CD0246" OR sCampusCode = "CD0345" OR sCampusCode = "CD0257" Then '평촌/영통/대구/분당/부천/강남/센텀/창원/중계 %>
		<div class="ico-end" style="top: 540px;right: 80px;"><div><%=icoEnd%></div></div>
		<% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
		<div class="ico-end" style="top: 540px;right: 47px;"><div><%=icoEnd%></div></div>
		<% ElseIf sCampusCode = "CD0344" or sCampusCode = "CD0343"  Then '코어전주/코어원주 %>
		<div class="ico-end" style="top: 540px;right: 80px;"><div><%=icoEnd%></div></div>
		<% ElseIf sCampusCode = "CD0245" Then '목동 %>
		<div class="ico-end" style="top: 540px;right: 80px;"><div><%=icoEnd%></div></div>
		<% End if %>
		<!--//마감딱지-->
    </div>

    <!-- quick 플로팅배너 -->
	<% If sCampusCode = "CD0247" Then '강남 %>
	<!-- <div class="quick">
		<p class="b-tit">러셀 강남 모집안내</p>
		<a class="q-ban" href="/intro/2023/regular_go/index.asp">
			<span>단과 필수 수강 X<br>썸머스쿨 우선등록 O</span>
			<strong>재학생 최상위권반</strong>
		</a>
		<a href="/russel/info/qna/faq.asp" class="mt20" target="_blank"><img src="<%=Application("img_path_russel")%>/intro/2023/summer/faq_banner.png" alt="자주하는 질문" /></a>
	</div> -->
	<% ElseIf sCampusCode = "CD0244" Then '분당 %>
	<!-- <div class="quick">
		<p class="b-tit">러셀 분당 7~8월 단과</p>
		<a class="q-ban" href="https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1369">
			<span>여름방학 단기간<br>고밀도 학습</span>
			<strong>썸머특강</strong>
		</a>
		<a class="q-ban" href="https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1352">
			<span>최상위권을 위한<br>탄탄한 커리큘럼</span>
			<strong>정규&middot;특강 단과</strong>
		</a>
	</div> -->
	<% ElseIf sCampusCode = "CD0250" Then '부천 %>
	<!-- <div class="quick">
		<a href="https://pf.kakao.com/_sFgGxj" target="_blank"><img src="<%=Application("img_path_russel")%>/russel_bc/2023/summer/talk_banner.png" alt="2023 썸머스쿨 채팅상담" /></a>
		<a href="javascript:void(0)" onclick="fn_eventGo('https://russelbc.megastudy.net/russel/entinfo/popup_notice_service_nonlogin.asp')" class="mt20"><img src="<%=Application("img_path_russel")%>/russel_bc/2023/summer/sms_banner.png" alt="학원 문자 수신 알리미 신청" /></a>
	</div> -->
	<% ElseIf sCampusCode = "INTRO" Then '인트로 %>
	<!-- <div class="quick">
		<p><img usemap="#gotoGisuk" src="<%=Application("img_path_russel")%>/intro/2023/summer/quick_intro.png" alt="" /></p>
		<map name="gotoGisuk">
			<area shape="rect" coords="2,151,180,188" href="https://russelw.megastudy.net/russel_yj/2023/summer/index.asp" target="_blank" alt="여학생 기숙 바로가기">
			<area shape="rect" coords="1,188,179,225" href="https://russelsm.megastudy.net/russel_yj/2023/summer/index.asp" target="_blank" alt="서의치 기숙 바로가기">
		</map>
	</div> -->
	<% End if %>
    <!--// quick 플로팅배너 -->





</div>

<!-- fix-menu -->
<nav class="fix-menu-wrap" style="display: none;">
    <div class="fix-menu type01 js-fix-menu">
        <div class="menu">
	        <% If sCampusCode = "INTRO" Then '인트로 %>
            <a class="on" href="javascript:void(0);">최상위권 집결, <%=txtCampus%></a>
            <a href="javascript:void(0);">최상위권 합격생의 여름방학</a>
            <a href="javascript:void(0);">썸머스쿨 프로그램</a>
            <a href="javascript:void(0);">학원별 모집안내</a>
			<% ElseIf sCampusCode = "CD0341" OR sCampusCode = "CD0340" OR sCampusCode = "CD0343" OR sCampusCode = "CD0344" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" Then '코어대전/광주/원주/전주/창원/청주 %>
            <a class="on" href="javascript:void(0);"><%=txtCampus%><br>모집요강 및 장학혜택</a>
            <a href="javascript:void(0);">최상위권 집결, 러셀CORE</a>
            <a href="javascript:void(0);">최상위권 합격생의 여름방학</a>
            <a href="javascript:void(0);">썸머스쿨 프로그램</a>
			<% Else %>

	        <% If sCampusCode = "CD0342" Then '대구 %>
            <a class="on" href="javascript:void(0);"><%=txtCampus%> 모집요강</a>
			<% ElseIf sCampusCode = "CD0244" Then '분당 %>
            <a class="on" href="javascript:void(0);"><%=txtCampus%> 지원자격 및 지원혜택</a>
			<% Else %>
            <a class="on" href="javascript:void(0);"><%=txtCampus%> 모집요강 및 장학혜택</a>
            <% End if %>
            <a href="javascript:void(0);">최상위권 집결, 러셀</a>
            <a href="javascript:void(0);">최상위권 합격생의 여름방학</a>
            <a href="javascript:void(0);">썸머스쿨 프로그램</a>
            <% End if %>

        </div>
    </div>
</nav>
<!-- //fix-menu -->