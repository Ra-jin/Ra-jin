
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

tit01 = "모집 대상"
txt01 = "2024년 고3&middot;고2&middot;고1"
tit02 = "운영 기간"
txt02 = "2월 순차 개강"
tit03 = "접수 기간"
txt03 = "2023년 8월 ~ 마감 시"
tit04 = "접수 방법"
txt04 = "현장 또는 온라인 접수"
stxt01 = "정규 단과[고3]"
stxt02 = "[고3&middot;고2&middot;고1]"
winterUrl = "https://russel.megastudy.net/intro/danka/2024/01/winter.asp"
regular_url = "https://russel.megastudy.net/intro/danka/2024/01/go3.asp"
apply_url = "javascript:alert('추후 공개됩니다.');"
end_style = "top: 640px;right:calc(50% - 390px);"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	' method.asp 인클루드 안한 페이지에서 오류날 수 있지만, 안쓰는 페이지가 없을거라 가정
    Case "INTRO": txtCampus = "러셀"  '인트로
					campusName = "intro"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
					campusName = "russel_gn"
					txt02 = "12월 29일 (금) ~ 2월 29일 (목)"
					tit04 = "접수 현황"
					tit03 = "접수 현황"
					txt03 = "원서 접수자 개별 안내"
					txt04 = "온라인 접수 <a href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158' class='bt-apply'>원서접수 바로가기</a>"
					csName = "강남"
					regular_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1478"
					winterUrl = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1453"
					winterUrl02 = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1454"
					icoEnd = "<span class='bold2'>마감임박</span><br><span class='fz16' style='line-height: 1.4;'>*고2, 고1 마감</span>"
					stxt01 = "정규 단과[고3]"
					stxt02 = "고3"
					stxt03 = "고2&middot;고1"
					
    Case "CD0001": txtCampus = "러셀 대치"  '대치
          			campusName = "russel"
					txt01 = "2024년 고3&middot;고2"
					txt02 = "2024년 1월 ~ 2024년 2월"
					txt03 = "9월 1일~선착순 마감"
					txt04 = "대기자 접수 중 <a href='https://russeldc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158' class='bt-apply'>대기자 원서접수 바로가기</a>"
					stxt01 = "정규 &middot; 특강 단과[고3]"
					stxt02 = "[고2]"
					csName = "대치"
					regular_url = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1479"
					winterUrl = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1455"
					icoEnd = "전반마감<br>대기자 접수 중"
					

    Case "CD0245": txtCampus = "러셀 목동"   '목동
          			campusName = "russel_mokdong"
					txt02 = "2024년 1월 2일(화)~2024년 2월 29일(목)"
					tit03 = "접수 방법"
					txt03 = "온라인 원서 접수 <a href='https://russelmd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158' class='bt-apply'>대기자 접수 바로가기</a>"
					tit04 = "접수 현황"
					txt04 = "전석 마감 [대기자 접수 중]"
					stxt02 = "고3"
					stxt03 = "고2&middot;고1"
					csName = "목동"
					regular_url = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1480"
					winterUrl = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1456"
					winterUrl02 = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1457"
					icoEnd = "대기자 접수 중"

    Case "CD0250": txtCampus = "러셀 부천"   '부천
          			campusName = "russel_bc"
					txt01 = "2024년 고3&middot;고2&middot;고1&middot;중3"
					tit02 = "개강일"
					txt02 = "2월 시작반 : 2/1(목)부터 순차적 개강"
					tit03 = "모집 안내"
					txt03 = "현재 접수 중"
					tit04 = "입학 문의"
					txt04 = "<a href='https://pf.kakao.com/_sFgGxj' style='text-decoration:underline;'>온라인 상담</a> ㅣ 전화 상담 032.265.1010"
					stxt01 = "정규 &middot; 특강 단과[고3]"
					stxt02 = "[고2&middot;고1&middot;중3]"
					csName = "부천"
					regular_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1481"
					winterUrl = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=286"
					icoEnd = "대기자 접수 중"
					end_style = "top: 640px;right:calc(50% - 370px);"

	Case "CD0244": txtCampus = "러셀 분당"   '분당
          campusName = "russel_bundang"
					txt01 = "2024년 고3&middot;고2"
					tit02 = "운영 기간"
					txt02 = "2024년 1월 2일(화) ~ 2024년 2월 29일(목) [9주]"
					tit03 = "모집 안내"
					txt03 = "전석 마감 (*대기자 접수 중) <a href='https://russelbd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158' class='bt-apply'>온라인 대기 신청</a>"
					tit04 = ""
					txt04 = ""
					stxt01 = "정규 &middot; 특강 단과[고3]"
					stxt02 = "[고2]"
					csName = "분당"
					regular_url = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1482"
					winterUrl = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1458"
					icoEnd = "전석 마감"
					end_style = "top: 640px;right:calc(50% - 410px);"

	Case "CD0246": txtCampus = "러셀 센텀"   '센텀
          campusName = "russel_ct"
					txt02 = "1월 : 12월 26일 (화)부터 순차 개강 <br> 2월 : 2월 1일 (목)부터 순차 개강"
					tit03 = "접수 방법"
					txt03 = "현장 또는 온라인 원서접수 <a href='https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158' class='bt-apply'>온라인 원서접수</a><br>※ 모집요강 지원자격 해당자 순 접수"
					tit04 = "접수 현황"
					txt04 = "24년 전 학년 마감 [대기자 접수 중]"
					stxt02 = "[고3&middot;고2&middot;고1]"
					csName = "센텀"
					regular_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1487"
					winterUrl = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1461"
					winterUrl02 = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1516"
					icoEnd ="전 학년<br>마&nbsp;&nbsp;&nbsp;&nbsp;감"
					stxt02 = "고3"
					stxt03 = "고2&middot;고1"
					end_style = "top: 640px;right:calc(50% - 410px);"

    Case "CD0249": txtCampus = "러셀 영통"   '영통
          campusName = "russel_yt"
					txt02 = "2024년 1월 1일(월) ~ 2024년 2월 29일(목) <br> <span>※ 2월 입학 시, 2월 1일(목) ~ 2월 29일(목)</span>"
					txt03 = "8/9(수) ~ 마감 시"
					txt04 = "2월 입학 대기 접수 중 <a href='https://russelyt.megastudy.net/russel/info/waiting/list.asp?ClsCode=2' class='bt-apply'>2월 대기 접수 바로가기</a>"
					stxt01 = "정규 &middot; 특강 단과[고3]"
					stxt02 = "[고1&middot;고2]"
					csName = "영통"
					regular_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1483"
					winterUrl = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=287"
					icoEnd = "2월 입학<br>대기 접수중"
					end_style = "top: 640px;right:calc(50% - 370px);"

    Case "CD0257": txtCampus = "러셀 중계"   '중계
          campusName = "russel_jg"
					txt01 = "2024년 고1&middot;고2&middot;고3"
					txt02 = "2/1(목)~2/29(목) [5주]<br><span>개강 : 2/1(목), 2/5(월) ㅣ OT : 별도 안내</span>"
					tit03 = "접수 방법"
					txt03 = "현장 접수"
					stxt01 = "정규 &middot; 특강 단과[고3]"
					stxt02 = "[고1&middot;고2]"
					csName = "중계"
					regular_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1484"
					winterUrl = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1459"
					icoEnd = "마감"
					end_style = "top: 640px;right:calc(50% - 410px);"

	Case "CD0248": txtCampus = "러셀 평촌"   '평촌
          campusName = "russel_pc"
					txt02 = "2024년 2월 1일(목)~2024년 2월 29일(목)"
					txt03 = "현재 선착순 접수 중 <a href='https://russelpc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158' class='bt-apply mt10' style='margin-left: 0;'>온라인 원서접수</a>"
					txt04 = ""
					stxt01 = "정규&middot;특강 단과[고3]"
					stxt02 = "[고2&middot;고1]"
					csName = "평촌"
					regular_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1485"
					winterUrl = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=288"
					icoEnd ="전학년 마감<br>대기 접수 중"

	Case "CD0342": txtCampus = "러셀 대구" '대구
					campusName = "russel_dg"
					txt01 = "2024년 고3&middot;고2"
					txt02 = "2024년 2월"
					txt03 = "2023년 8월 부터 ~ 마감 시"
					txt04 = "온라인 접수"
					stxt01 = "정규 단과<br>[고3&middot;고2]"
					stxt02 = "[고3&middot;고2]"
					csName = "대구"
					regular_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1486"
					winterUrl = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1460"
					icoEnd ="<strong>마감</strong>"

	Case "CD0349": txtCampus = "러셀 울산" '울산
					campusName = "russel_us"
					txt01 = "2024년 고3&middot;고2"
					txt02 = "2024년 2월 [5주 과정]"
					txt03 = "각 반 마감 시"
					txt04 = "온라인 접수 <a href='https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158' class='bt-apply'>원서접수 바로가기 </a>"
					stxt01 = "정규 단과<br>[고3&middot;N수]"
					stxt02 = "[고1&middot;고2]"
					csName = "울산"
					regular_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1510"
					winterUrl = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1511"
					icoEnd ="24년 고2 마감<br>24년 고3 마감"

	Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
          campusName = "core_gj"
					txt01 = "2024년 고3&middot;고2"
					txt02 = "2023년 12월 28일 ~ 2024년 2월 [8주 완성]"
					txt04 = "현장 또는 온라인 접수 <a href='https://coregj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158' class='bt-apply'>원서접수 바로가기 </a>"
					stxt01 = "정규 단과<br>[고3&middot;고2]"
					stxt02 = "[고3&middot;고2]"
					csName = "코어광주"
					regular_url = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1488"
					winterUrl = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1462"

	Case "CD0341": txtCampus = "러셀CORE 대전"   '코어대전
          campusName = "core_dj"
					txt01 = "2024년 고3&middot;고2"
					txt02 = "2024년 1월 ~ 2024년 2월 [8주 완성]"
					txt03 = "2023년 8월부터 사전 예약 시작"
					txt04 = "현장 또는 온라인 접수 <a href='https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158' class='bt-apply'>원서접수 바로가기</a>"
					stxt01 = "정규 단과[고3]"
					stxt02 = "[고3&middot;고2]"
					csName = "코어대전"
					regular_url = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1489"
					winterUrl = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1463"
					icoEnd = "전석마감<br>대기자 접수중"
					end_style = "top: 640px;right:calc(50% - 370px);"

	Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
					campusName = "core_wj"
					txt02 = "2024년 1월 2일 개강 (8주 완성)"
					txt03 = "현재 모집 중"
					txt04 = "현장 또는 온라인 접수 <a href='https://corewj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158' class='bt-apply'>원서접수 바로가기</a>"
					stxt01 = "정규 단과<br>[고3&middot;고2]"
					stxt02 = "[고3&middot;고2&middot;고1]"
					csName = "코어원주"
					regular_url = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1490"
					winterUrl = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1464"

	Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
					campusName = "core_jj"
					txt02 = "2024년 2월 [4주 완성]"
					txt03 = "2024년 12월~마감 시"
					txt04 = "현장 또는 온라인 접수 <a href='https://corejj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158' class='bt-apply'>원서접수 바로가기</a>"
					stxt02 = "[고3&middot;고2&middot;고1]"
					csName = "코어전주"
					regular_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1491"
					winterUrl = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1465"
					icoEnd = "마감<br>대기자 접수 중"
					end_style = "top: 640px;right:calc(50% - 370px);"

	Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
					campusName = "core_cw"
					txt02 = "2/1(목) 개강"
					tit03 = "접수 방법"
					txt03 = "현장 또는 온라인 접수 <a href='https://corecw.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158' class='bt-apply'>원서접수 바로가기</a>"
					tit04 = "접수 현황"
					txt04 = "대기자 접수 중｜문의(055.605.1010)"
					stxt01 = "정규 단과<br>[고3&middot;고2]"
					stxt02 = "[고3&middot;고2&middot;고1]"
					csName = "코어창원"
					regular_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1492"
					winterUrl = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1466"
					icoEnd = "전석마감<br>대기자 접수 중"

	Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
					campusName = "core_cj"
					txt01 = "2024년 고1~고3"
					txt02 = "2024년 2월"
					txt03 = "현재 접수 중"
					txt04 = "현장 또는 온라인 접수"
					stxt01 = "정규 단과<br>[고3&middot;고2&middot;고1]"
					stxt02 = "[고3&middot;고2&middot;고1]"
					csName = "코어청주"
					regular_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1493"
					winterUrl = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1467"
					apply_url = "javascript:alert('추후 오픈 예정입니다.');"
					
	'Case "CD0258": txtDate = "기숙"
	'Case "CD0331": r_title = "삽자루 수학학원"
End Select
%>

<div class="visual-area">
	<div class="v-bg"></div>
	<% If isCore = 1 Then '코어 일경우 %>
	<div class="bg co"></div>
	<% ElseIf sCampusCode = "INTRO" Then '인트로 %>
	<div class="bg"></div>
	<% Else %>
	<div class="bg type2"></div>
	<% End if %> 

	<div class="visual-wrap">
		<p class="v-star"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/light.png" alt="" /></p>
		<% If sCampusCode = "CD0257" Then '중계 %>
		<p class="v-stxt"><img src="<%=Application("img_path_russel")%>/russel_jg/2023/winter/v-txt02.png" alt="" /></p>
		<% Else %>
		<p class="v-stxt"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/v-txt02.png" alt="" /></p>
		<% End If %>

		<div class="inner">
			<% If sCampusCode = "INTRO" Then '인트로 %>
			<p class="v-txt"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/v-txt01.png" alt="겨울방학, 실력 향상을 넘어 최상위권으로!" /></p>
			<p class="v-tit"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/v-tit.png" alt="2024 러셀 윈터스쿨" /></p>
			<% ElseIf sCampusCode = "CD0257" Then '중계 %>
			<p class="v-txt"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/v-txt01.png" alt="겨울방학, 실력 향상을 넘어 최상위권으로!" /></p>
			<p class="v-tit"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/v-tit.png" alt="2024 러셀 윈터스쿨" /></p>
			<% Else %>
			<p class="v-txt"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/v-txt01.png" alt="겨울방학, 실력 향상을 넘어 최상위권으로!" /></p>
			<p class="v-tit"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/v-tit.png" alt="2024 러셀 윈터스쿨" /></p>
			<% End if %>

			<!--2월 시작반 모집중-->
			<% If sCampusCode = "INTRO" or sCampusCode = "CD0250" or sCampusCode = "CD0257" or sCampusCode = "CD0246" or sCampusCode = "CD0349" or sCampusCode = "CD0343" or sCampusCode = "CD0344" or sCampusCode = "CD0345" or sCampusCode = "CD0346" or sCampusCode = "CD0248" Then '인트로/부천/중계/센텀/울산/원주/전주/창원/청주/평촌 %>
			<div class="mozip <%=campusName%>">
				<img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_mozip01.png" alt="2월 시작반 딱지" />
				<!-- <img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_mozip02.png" alt="2월 시작반 딱지" /> -->
			</div>
			<% End if %>
			<!--//2월 시작반 모집중-->

			<div class="v-info">
				<dl>
					<dt><%=tit01%></dt>
					<dd><%=txt01%></dd>
				</dl>
				<dl>
					<dt><%=tit02%></dt>
					<dd class="<%=campusName%>"><%=txt02%></dd>
				</dl>
				<% If sCampusCode <> "CD0345" and sCampusCode <> "CD0342" and sCampusCode <> "CD0001" and sCampusCode <> "INTRO" and sCampusCode <> "CD0249" Then '창원/대구/대치/인트로/영통 제외 %>
				<dl>
					<dt><%=tit03%></dt>
					<dd class="<%=campusName%>"><%=txt03%></dd>
				</dl>
				<% End If %>

				<% If sCampusCode = "CD0257" Then '중계 %>
				<p class="tal mb0">※ 전 학년 마감되었습니다. 감사합니다. <br>(반별 소수 인원 모집 중, 1월 편입 가능)</p>
				<% End If %>

				<% If sCampusCode <> "CD0244" and sCampusCode <> "CD0248" and sCampusCode <> "CD0247" and sCampusCode <> "CD0257" and sCampusCode <> "CD0246" Then '분당/평촌/강남/중계/센텀 제외 %>
				<dl>					
					<dt><%=tit04%></dt>
					<% If sCampusCode = "CD0249" Then '영통 %>
					<dd class="<%=campusName%>"><%=txt04%>
						<div class="s-notice" style="bottom:-30px;">
							<span style="top: 0;">* 유의사항</span> 
							<div class="n-view" style="top:34px">		
								※ 사전 접수 기간 안내<br>
								▶ 1차 : 8/9(수) 오후 2시(마감)<br>
								▶ 2차 : 8/16(수) 오후 2시(마감)<br><br>
								
								-사전예약금 접수는 선착순으로 진행되었으며, 현재 마감되어 온라인 대기 접수 바랍니다.<br>
								- 2차 사전접수자(예비)는 1차 사전접수자 실등록 완료 후 취소생이 발생되었을 때 우선적으로 등록이 가능합니다.<br>
								- 사전예약금을 납부하신 분들에 한해 별도로 실등록 기간을 안내해 드릴 예정입니다. (2차는 1차 사전접수자 접수 후 여석에 따라 별도 안내)<br>
								&nbsp;&nbsp;① 수강 희망하는 강좌를 선택<br>
								&nbsp;&nbsp;② 안내해드린 등록 기간 내 방문하여 신청서 작성, 증빙서류 제출, 단과&바자관 비용 전액 결제<br>
								&nbsp;&nbsp;③ 추후 OT 참석 및 온라인으로 급식 결제 (별도 안내 예정)<br>
								- 1,2차 사전예약자의 실등록이 완료된 이후 대기접수자에게 순차적으로 실등록 안내가 진행될 예정입니다.
							</div>
						</div>
					</dd>
					<% ElseIf sCampusCode = "CD0346" Then '청주 %>
					<dd class="<%=campusName%>"><%=txt04%><a href="<%=apply_url%>" class="bt-apply">원서접수 바로가기</a></dd>

					<% Else %>
					<dd class="<%=campusName%>"><%=txt04%></dd>
					<% End If %>
				</dl>
				<% End If %>
			</div>
			<% If sCampusCode = "INTRO" Then '인트로 %>
			<span class="v-tip">* 모집과 관련된 자세한 내용은 학원별 페이지에서 확인하실 수 있습니다.</span>
			<% End If %>
		</div>
	</div>

	<!--마감딱지-->
	<% If sCampusCode = "CD0249" OR sCampusCode = "CD0341" OR sCampusCode = "CD0344" OR sCampusCode = "CD0001" OR sCampusCode = "CD0245" OR sCampusCode = "CD0342" OR sCampusCode = "CD0349" OR sCampusCode = "CD0345" OR sCampusCode = "CD0244" OR sCampusCode = "CD0257" Then '영통/코어대전/코어전주/대치/목동/대구/울산/창원/분당/중계 %>
	<div class="ico-end" style="<%=end_style%>"><div><%=icoEnd%></div></div>
	<% End if %>
	<!--//마감딱지-->

	<!-- quick 플로팅배너 -->
	<div class="quick">
		<% If sCampusCode = "CD0250" Then '부천 %>
		<!-- 채팅상담 -->
		<a href="https://pf.kakao.com/_sFgGxj" class="mb25"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/sns_talk.png" alt="채팅상담" /></a>
		<!-- //채팅상담 -->
		<% End If %>

		<% If sCampusCode <> "CD0001" and sCampusCode <> "INTRO" and sCampusCode <> "CD0247" and sCampusCode <> "CD0245" and sCampusCode <> "CD0249" and sCampusCode <> "CD0257" and sCampusCode <> "CD0248" and sCampusCode <> "CD0342" and sCampusCode <> "CD0246" and sCampusCode <> "CD0349" and isCore <> "1" and sCampusCode <> "CD0250" and sCampusCode <> "CD0244" Then '대치/인트로/강남/목동/영통/중계/평촌/대구/센텀/울산/코어전체/부천/분당 제외 %>
		<!-- 학원 문자 수신 알리미 신청-->
		<a href="javascript:fncAlarmPop();" class="mb25"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/sns_banner.png" alt="알리미 신청" /></a>
		<!-- //학원 문자 수신 알리미 신청-->
		<% End If %>

		<!-- 중간 배너 -->
		<% If sCampusCode = "CD0245" Then '목동 %>
		<a href="https://russelmd.megastudy.net/russel/info/notice/notice_view.asp?Code=29126" class="mb25"><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/winter/bus_banner.png" alt="등원 셔틀버스 무료 운행 안내" /></a>
		<% End If %>
		<!-- //중간 배너 -->

		<!-- title -->
		<% If sCampusCode = "CD0246" Then '센텀 %>
		<p class="b-tit">2024년 2월 윈터단과</p>
		<% Else %>
		<p class="b-tit">2024년 1~2월 윈터단과</p>
		<% End if %>

		<a class="q-ban" href="<%=regular_url%>">
			<% If sCampusCode = "CD0257" Then '중계 %>
			<span>성적 향상을 위한<br>탄탄한 커리큘럼</span>
			<% Else %>
			<span>최상위권을 위한<br>탄탄한 커리큘럼</span>
			<% End if %>
			<strong><%=stxt01%></strong>
		</a>

		<% If sCampusCode = "CD0247" OR sCampusCode = "CD0245" OR sCampusCode = "CD0246" Then '강남/목동/센텀 %>
		<!-- 링크 2개 type -->
		<div class="q-ban">
			<span>겨울방학<br>단기 완성 특강</span>
			<strong>윈터특강</strong>
			<div class="q-link">
				<a href="<%=winterUrl%>"><%=stxt02%></a>
				<a href="<%=winterUrl02%>"><%=stxt03%></a>
			</div>
		</div>
		<!-- //링크 2개 type -->
		<% Else %>
		<a class="q-ban" href="<%=winterUrl%>">
			<span>겨울방학 단기 완성 특강</span>
			<strong>윈터특강<br><%=stxt02%></strong>
		</a>
		<% End If %>
		<!-- <a href="/intro/2023/csat/apply.asp" class="mt25"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/mock_banner.jpg" alt="수능 실전 모의체험" /></a> -->
		
		<!-- 하단 퀵배너 -->
		<% If sCampusCode = "CD0250" Then '부천 %>
		<a href="/info/schoolBus.asp" class="mt25"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/banner_bus.png" alt="러셀 부천학원 통학버스 안내" /></a>
		<% ElseIf sCampusCode = "CD0247" Then '강남 %>
		<a href="https://russelgn.megastudy.net/russel/event/2020/megapass/megapass.asp" class="mt25"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/winter/banner_megapass.png" alt="메가패스" /></a>
		<% End If %>
		<!-- //하단 퀵배너 -->

	</div>
	<!--// quick 플로팅배너 -->
</div>

<!-- fix-menu -->
<nav class="fix-menu-wrap" style="position: relative;">
	<!-- <% If sCampusCode = "INTRO" or sCampusCode = "CD0250" or sCampusCode = "CD0257" or sCampusCode = "CD0342" or sCampusCode = "CD0246" or sCampusCode = "CD0349" or sCampusCode = "CD0343" or sCampusCode = "CD0344" or sCampusCode = "CD0345" or sCampusCode = "CD0346" or sCampusCode = "CD0248" Then '인트로/부천/중계/대구/센텀/울산/원주/전주/창원/청주/평촌 %>
	<div class="mozip <%=campusName%>">
		<img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_mozip_fix01.png" alt="2월 시작반 ico" />
		<img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_mozip_fix02.png" alt="2월 시작반 ico" />
	</div>
	<% End If %>  -->
    <div class="fix-menu type01 js-fix-menu">
		<!-- 2월 시작반 모집중 flag -->
		<% If sCampusCode = "INTRO" or sCampusCode = "CD0250" or sCampusCode = "CD0257" or sCampusCode = "CD0246" or sCampusCode = "CD0349" or sCampusCode = "CD0343" or sCampusCode = "CD0344" or sCampusCode = "CD0345" or sCampusCode = "CD0346" or sCampusCode = "CD0248" Then '인트로/부천/중계/센텀/울산/원주/전주/창원/청주/평촌 %>
		<div class="mozip">
			<img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_mozip_fix01_off.png" alt="2월 시작반 ico" />
			<img src="<%=Application("img_path_russel")%>/intro/2023/winter/ico_mozip_fix02_off.png" alt="2월 시작반 ico" />
		</div>
		<% End If %> 
		<% If sCampusCode = "INTRO" Then '인트로 %>
        <div class="menu">
			<a class="on" href="javascript:void(0);">최상위권 집결, 러셀</a>
			<a href="javascript:void(0);">최상위권 맞춤<br>러셀 윈터스쿨 프로그램</a>
			<a href="javascript:void(0);">학원별 모집안내</a>
        </div>
		<% ElseIf sCampusCode = "CD0257" Then '중계 %>
		<div class="menu">
			<a class="on" href="javascript:void(0);"><%=txtCampus%> 윈터스쿨<br>모집요강 및 지원혜택</a>
			<a href="javascript:void(0);">수능 목표 성적과 <br>대학 합격을 위한 러셀</a>
			<a href="javascript:void(0);">러셀 윈터스쿨 프로그램</a>
		</div>
		<% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
		<div class="menu">
			<a class="on" href="javascript:void(0);"><%=txtCampus%> 윈터스쿨<br>모집요강</a> 
			<a href="javascript:void(0);">최상위권 집결, 러셀</a>
			<a href="javascript:void(0);">최상위권 맞춤<br>러셀 윈터스쿨 프로그램</a>
		</div>
		<% Else %>
		<div class="menu">
			<a class="on" href="javascript:void(0);"><%=txtCampus%> 윈터스쿨<br>모집요강 및 지원혜택</a>
			<a href="javascript:void(0);">최상위권 집결, 러셀</a>
			<a href="javascript:void(0);">최상위권 맞춤<br>러셀 윈터스쿨 프로그램</a>
		</div>
		<% End If %> 
    </div>
</nav>
<!-- //fix-menu -->

<script>
	function msg_box(){
		alert('추후 오픈 예정입니다.');
	}
</script>