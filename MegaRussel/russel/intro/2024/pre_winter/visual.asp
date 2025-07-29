
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

tit01 = "모집 대상"
tit02 = "접수 기간"
tit03 = "운영 기간"
tit04 = "접수 방법"

txt01 = "현 중3 &middot; 고1 &middot; 고2"
txt02 = "24년 11월 말~12월 중순"
txt03 = "24년 11월 말 ~ 12월 중순"
txt04 = "온라인 접수"

qBan_link01 = "/intro/2024/winter/index.asp"
qBan_tit01 = "최상위권으로<br>도약하기 위한 옳은 방법"
qBan_txt01 = "2025 윈터스쿨"

qBan_link02 = "/intro/danka/2024/09/start.asp"
qBan_tit02 = "한발빠른 수능 기본기"
qBan_txt02 = "고2 수능시작반"

qBan_link03 = "/intro/danka/2024/08/jung3.asp"
qBan_tit03 = "국수영 집중학습"
qBan_txt03 = "중3 고등대비반"

qBan_link04 = "/intro/danka/2024/08/mid.asp"
qBan_tit04 = "현 고1,2"
qBan_txt04 = "내신 수업 바로가기"

cont01_day01 = "11월 말 ~ 12월 중순"
cont01_day02 = "12월  말 ~ 2월"
cont01_day03 = "3월 ~ 7월 중순"
cont01_day04 = "7월 중순 ~ 8월 말"
cont01_day05 = "8월 말 ~  수능"

cont05_fade01 = "fade-right"
cont05_fade02 = "fade-left"
cont05_fade03 = "fade-right"
cont05_fade04 = "fade-left"
cont05_fade05 = "fade-right"

cont05_txt05 = "(시디즈)"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
	Case "INTRO": txtCampus = "러셀 2025"  '인트로
					campusName = "intro"
					tit02 = "수업 기간"
					cont05_txt05 = ""
					qBan_link04 = "/intro/danka/2024/10/mid.asp"

					
	Case "CD0246": txtCampus = "러셀 센텀"  '센텀
					campusName = "russel_ct"
					campusName02 = "t_ct"
					txt02 = "현재 접수 중"
					txt03 = "24년 12월 16일부터 12월 31일까지"
					txt04 = "현장 또는 온라인 접수<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`);'>원서접수 바로가기</a>"
					call_num = "전화 문의<br>051) 715-1010"
					cont01_day01 = "12월 16일<br>~ 12월 31일"
					cont01_day02 = "1월 1일 ~ 3월 2일"
					cont05_txt05 = ""

					
	Case "CD0342": txtCampus = "러셀 대구" '대구
					campusName = "russel_dg"
					campusName02 = "t_dg"
					txt02 = "현재 접수 중"
					txt03 = "24년 11/25(월) ~ 12/22(일)"
					txt04 = "온라인 접수<a class='bt-apply' href='https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=178'>원서접수 바로가기</a>"

					qBan_link01 = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1822"
					qBan_tit01 = "<span class='bold'>[현 고2·고3·N수]</span><br>수학 집중학습"
					qBan_txt01 = "수학 집중완성"
					
					qBan_link02 = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=354"
					qBan_tit02 = "<span class='bold'>[현 고1]</span><br>국수영 집중학습"
					qBan_txt02 = "고1 수능시작반"
					
					qBan_link03 = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=338"
					qBan_tit03 = "<span class='bold'>[현 중3]</span><br>국수영 집중학습"

					call_num = "전화 문의<br>053) 291-1010"

					cont01_day01 = "11/25~12/22<br>[4주 과정]"
					cont01_day02 = "1/1~2/28 [8주 과정]"
					cont01_day03 = "3월~11월"
					cont01_day04 = "7월 중순 ~ 8월 중순"
					cont01_day05 = "8월 중순 ~ 수능"


	Case "CD0349": txtCampus = "러셀 울산" '울산
					campusName = "russel_us"
					campusName02 = "t_us"
					txt01 = "현 중3"
					txt02 = "24년 9월 ~ 마감 시"
					txt03 = "11/25(월) ~ 12/20(금)"
					txt04 = "현장 또는 온라인 접수<a class='bt-apply' href='https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=178'>원서접수 바로가기</a>"

					qBan_link02 = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=347"
					qBan_tit02 = "현 고1,2"
					qBan_txt02 = "내신 수업 바로가기"

					qBan_link03 = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=334"
					qBan_tit03 = "한발빠른 수능 기본기"
					qBan_txt03 = "고2 수능시작반"
					
					qBan_link04 = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=339"
					qBan_tit04 = "국수영 집중학습"
					qBan_txt04 = "중3 고등대비반"

					call_num = "전화 문의<br>052) 913-1010"

					cont01_day01 = "11/25(월) ~ 12/20(금)"
					cont01_day02 = "프리윈터 종료 후<br>~ 2월 말 [8주 과정]"
					cont01_day03 = "학기 중 상시 운영"

					cont05_txt05 = ""
					

	Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
					campusName = "core_gj"
                    campusName02 = "t_gj"
					txt01 = "현 고1 &middot; 고2"
					txt02 = " 현재 접수 중"
					txt03 = "11/23(토)~12/25(수)[5주과정]"
					txt04 = "현장 또는 온라인 접수<a class='bt-apply' href='https://coregj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=178'>원서접수 바로가기</a>"

					call_num = "전화 문의<br>062) 462-1010"

					cont01_day01 = "11/23~12/25<br>[5주 과정]"
					cont01_day02 = "프리윈터 종료 후<br>~ 2월 말 [9주 과정]"
					cont01_day03 = "학기 중 상시 운영"

					cont05_fade04 = "fade-right"
					cont05_fade05 = "fade-left"


	Case "CD0341": txtCampus = "러셀CORE 대전"   '코어대전
					campusName = "core_dj"
                    campusName02 = "t_dj"
					txt01 = "현 고1 &middot; 고2"
					txt02 = "현재 모집 중"
					txt03 = "11/25(월)~12/29(일)[5주과정]"
					txt04 = "현장 또는 온라인 접수<a class='bt-apply' href='https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=178'>원서접수 바로가기</a>"

					call_num = "전화 문의<br>042) 381-2020"
					
					cont01_day01 = "11/25 ~ 12/29<br>[5주 과정]"
					cont01_day02 = "1/1 ~ 2/28<br>[8주 과정]"
					cont01_day05 = "9월 ~ 수능"


	Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
					campusName = "core_wj"
                    campusName02 = "t_wj"

					txt01 = "현 중3"
					txt02 = "현재 접수 중"
					txt03 = "12/2(월)~12/29(일)[4주과정]"
					txt04 = "현장 또는 온라인 접수<a class='bt-apply' href='https://corewj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=178'>원서접수 바로가기</a>"

					qBan_link02 = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=340"
					qBan_tit02 = "국수영 집중학습"
					qBan_txt02 = "중3 고등대비반"
					
					qBan_link03 = "/core_wj/2024/lecturer/index.asp"
					qBan_tit03 = "예비 고1"
					qBan_txt03 = "[국/수/영]<br>내신 현장 단과 강사진"

					call_num = "전화 문의<br>033) 901-2020"

					cont01_day01 = "12/2 ~ 12/29<br>[4주 과정]"
					cont01_day02 = "1/1 ~ 2/28<br>[9주 과정]"
					cont01_day05 = "9월 ~ 12월"


	Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
					campusName = "core_jj"
                    campusName02 = "t_jj"

					txt02 = "현재 모집 중"
					txt03 = "11/25(월)~12/27(금)[5주과정]"
					txt04 = "현장 또는 온라인 접수<a class='bt-apply' href='https://corejj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=178'>원서접수 바로가기</a>"

					call_num = "전화 문의<br>063) 905-3030"

					cont01_day01 = "11/25 ~ 12/27<br>[5주 과정]"
					cont01_day02 = "프리윈터 종료 후<br>~ 2월 말"


	Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
					campusName = "core_cw"
                    campusName02 = "t_cw"

					txt03 = "12/2(월)~12/27(금)[4주과정]"
					txt04 = "학원 접수(055.605.1010)"

					call_num = "전화 문의<br>055) 605-1010"

					cont01_day01 = "12/2 ~ 12/27<br>[4주 과정]"
					cont01_day02 = "12/30 ~ 2월 말"
					cont01_day05 = "9월 ~  수능"
					cont05_txt05 = ""


	Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
					campusName = "core_cj"
                    campusName02 = "t_cj"
					
					txt02 = "현재 접수 중"
					txt03 = "11/23(토)~12/24(화) 5주과정"
					txt04 = "현장 또는 온라인 접수<a class='bt-apply' href='https://corecj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=178'>원서접수 바로가기</a>"

					qBan_link02 = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=349"
					qBan_tit02 = "현 고1,2"
					qBan_txt02 = "내신 수업 바로가기"
					
					qBan_link03 = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=341"
					qBan_tit03 = "국수영 집중학습"
					qBan_txt03 = "중3 고등대비반"

					call_num = "전화 문의<br>043) 908-1010"

					cont01_day01 = "11/23(토)~12/24(화)<br>5주과정"
					cont01_day02 = "12/30 ~ 2/28"
					
					cont05_txt05 = ""
					

End Select
%>

<div class="visual-area">
	<div class="v-speed-l"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/v_obj01.png" alt="" /></div>
	<div class="v-speed-r"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/v_obj02.png" alt="" /></div>
	<div class="inner">
		<div class="v-obj04"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/v_obj04.png" alt="" /></div>
		<div class="v-tit-wrap">
			<div class="v-tit02"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/pre_winter/v_tit02.png" alt="2025" /></div>
			<h1 class="v-tit"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/v_tit.png" alt="프리윈터스쿨" /></h1>
		</div>
		<p class="v-txt">
			겨울을 어떻게 보내느냐가 1년의 결과를 좌우합니다.<br>
			‘입시 전문 담임선생님의 체계적인 학습관리’와 ‘수능 시간표 기반의 규칙적인 생활관리’,<br>
			<strong><%=txtCampus%> 프리윈터스쿨에서 완벽한 겨울을 한발 더 빠르게 시작</strong>해 보세요.
		</p>
		<div class="v-info">
			<div>
				<div>
					<dl>
						<dt><%=tit01%></dt>
						<dd><%=txt01%></dd>
					</dl>
					<% If sCampusCode <> "INTRO" Then '인트로 제외 %>
					<dl>
						<dt><%=tit03%></dt>
						<dd><%=txt03%></dd>
					</dl>
					<% End If %>
				</div>
				<div>
					<% If sCampusCode <> "CD0345" Then '코어창원 제외 %>
					<dl>
						<dt><%=tit02%></dt>
						<dd><%=txt02%></dd>
					</dl>
					<% End If %>
					<% If sCampusCode <> "INTRO" Then '인트로 제외 %>
					<dl>
						<dt><%=tit04%></dt>
						<dd><%=txt04%></dd>
					</dl>
					<% End If %>
					<% If sCampusCode <> "INTRO" Then '인트로 제외 %>
					<p>※ 모집요강 지원자격 해당자 순 접수
					</p>
					<% End If %>
				</div>
			</div>
			<% If sCampusCode = "INTRO" Then '인트로 %>
			<p>※ 모집 대상 및 상세 운영 내용은 학원별로 상이할 수 있으니<br>
			각 지점 홈페이지를 확인하여 주시기 바랍니다.
			</p>
			<% End If %>
		</div>
	</div>

	<!--마감딱지-->
	<!-- <div class="ico-end" style="top: 640px;right:calc(50% - 390px);"><div><%=icoEnd%></div></div> -->
	<!--//마감딱지-->

	<!-- quick배너 -->
	<div class="quick">
		<a href="javascript:void(0);" <%If Not gLoginOk Then%>onclick="window.open('/russel/entinfo/popup_notice_service_nonlogin.asp', 'alim', 'width=804, height=770');return false;"<%else%>onclick="window.open('/russel/entinfo/popup_notice_service.asp', 'alim', 'width=804, height=770');return false;"<%end if%> class="mb15"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/sms_banner.jpg" alt="학원 문자 수신 알리미 신청" /></a>
		<p class="b-tit">연계 프로그램 안내</p>
		<a class="q-ban" href="<%=qBan_link01%>">
            <span>
                <%=qBan_tit01%>
            </span>
            <strong><%=qBan_txt01%></strong>
		</a>
	<% If sCampusCode <> "CD0340" and sCampusCode <> "CD0341" and sCampusCode <> "CD0344" and sCampusCode <> "CD0345" and sCampusCode <> "CD0246" and sCampusCode <> "INTRO" Then '코어광주/코어대전/코어전주/코어창원/센텀/인트로 제외 %>
	<!-- 3개 배너 제외 -->
		<% If sCampusCode <> "CD0349" Then '울산 제외 %>
		<a class="q-ban" href="<%=qBan_link02%>">
            <span>
                <%=qBan_tit02%>
            </span>
            <strong><%=qBan_txt02%></strong>
		</a>
		<a class="q-ban" href="<%=qBan_link03%>">
            <span>
                <%=qBan_tit03%>
            </span>
            <strong><%=qBan_txt03%></strong>
		</a>
		<% End If %>
		<% If sCampusCode <> "CD0342" and sCampusCode <> "CD0343" and sCampusCode <> "CD0346" and sCampusCode <> "INTRO" Then '대구/코어원주/코어청주/인트로 제외 %>
		<!-- 1개 배너 제외 -->
		<a class="q-ban" href="<%=qBan_link04%>">
            <span>
				<%=qBan_tit04%>
            </span>
            <strong><%=qBan_txt04%></strong>
		</a>
		<% End If %>
	<% End If %>
		<% If sCampusCode <> "INTRO" Then '인트로 제외 %>
		<div class="info-quick">
			<p class="b-tit02">상담 안내</p>
			<a class="q-ban02" href="/russel/info/qna/qna.asp">
				온라인 문의
			</a>
			<a class="q-ban02 fin" href="javascript:void(0);">
				<%=call_num%>
			</a>
		</div>
		<% End If %>
	</div>
	<!--// quick배너 -->
</div>
