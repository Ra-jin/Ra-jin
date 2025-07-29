
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

txtCampus = "러셀"
tit01 = "모집 대상"
txt01 = "N수, 고3"
tit02 = "개강일"
txt02 = "11월 순차 개강"
tit03 = "접수 방법"
quickUrl01 = "/intro/danka/2023/09/go3.asp"
quickUrl02 = "https://russel.megastudy.net/intro/danka/2023/10/am.asp"
quickUrl03_01 = "https://russel.megastudy.net/intro/danka/2023/09/non.asp"
quickUrl03_02 = "추후 오픈 예정입니다."

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	' method.asp 인클루드 안한 페이지에서 오류날 수 있지만, 안쓰는 페이지가 없을거라 가정
    Case "INTRO": txtCampus = "러셀"  '인트로
				  campusName = "intro"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
					txt02 = "상시 입학<br>(매월 1일 또는 매주 월/ 목)"
					txt03 = "온라인 접수 <a href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=159' class='btn-gray-s ml_10'>원서접수 바로가기</a>"
					quickUrl01 = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1409"
					quickUrl02 = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1468"
					quickUrl03_01 = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1494"


    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
					txt01 = "고3"
					txt02 = "상시 입학(매주 월/목)"
					txt03 = "온라인 접수"
					quickUrl = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1314"
					quickUrl03_01 = "추후 오픈 예정입니다."

    Case "CD0245": txtCampus = "러셀 목동"   '목동
                    campusName = "russel_mokdong"
					txt01 = "고3 마감 임박ㅣ고2 마감"
					tit02 = "개강일"
					txt02 = "9월 초 개강"
					txt03 = "현장 접수 ㅣ8월 중순 이후 모집 예정"
					quickUrl = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1315"
					quickUrl03_01 = "추후 오픈 예정입니다."

    Case "CD0250": txtCampus = "러셀 부천"   '부천
                    campusName = "russel_bc"
					txt01 = "N수 <span class='pr40'></span>"
					txt02 = "매월 초 순차 개강"
					txt03 = "현장 접수ㅣ모집요강 지원자격 해당자 순 접수"
					tit04 = "입학문의"
					txt04 = "<a href='https://pf.kakao.com/_sFgGxj' class='fz20' target='blank'>온라인 상담 ></a> ㅣ 전화 상담 032.265.1010"
					quickUrl01= "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1412"
					quickUrl02= "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1471"
					quickUrl03_01 = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1497"

	Case "CD0244": txtCampus = "러셀 분당"   '분당
                    campusName = "russel_bundang"
					tit02 = "접수 기간"
					txt02 = "전석 마감, 대기자 접수 中 (*모집요강 지원자격 해당자 순 접수)"
					tit03 = "접수 방법"
					txt03 = "온라인 대기 접수 후 성적표 제출 <a href='https://russelbd.megastudy.net//russel/apply/jaejung/apply.asp?app_cd=148' class='btn-gray-s ml_10'>N수생<br>대기접수 바로가기</a> <a href='https://russelbd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=152' class='btn-gray-s'>재학생(고3)<br>대기접수 바로가기</a><br><span class='fz12'>* 온라인 대기 접수를 완료하면 이후 대기 순서에 따라 입학 절차를 개별적으로 안내해드립니다.</span>"
					quickUrl01 = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1413"
					quickUrl02 = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1472"
					quickUrl03_01 = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1498"

	Case "CD0246": txtCampus = "러셀 센텀"   '센텀
                    campusName = "russel_ct"
					txt01 ="N수"
					txt02 = "9/1 (금) 개강"
					txt03 = "현장 또는 온라인 접수ㅣ현재 모집 중"
					quickUrl01 = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1419"
					quickUrl02 = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1477"
					quickUrl03_01 = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1503"

    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
					txt03 = "현장 접수<br><span class='c-txt russel_yt'>* 학원으로 잔여석을 확인해 주시기 바랍니다.</span>"
					quickUrl01 = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1414"
					quickUrl02 = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1473"
					quickUrl03_01 = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1499"
					txt02 = "10월 순차 개강"
    Case "CD0257": txtCampus = "러셀 중계"   '중계
                    campusName = "russel_jg"
					txt01 = ""
					txt02 = "매월 초 개강"
					txt03 = "현장 접수ㅣ대기자 접수 중"
					quickUrl01 = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1415"
					quickUrl02 = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1474"
					quickUrl03_01 = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1500"

	Case "CD0248": txtCampus = "러셀 평촌"   '평촌
                    campusName = "russel_pc"
					txt03 = "현장 접수 ㅣ 현재 모집 중"
					quickUrl01 = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1416"
					quickUrl02 = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1475"
					quickUrl03_01 = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1501"
					txt02 = "10월 순차 개강"
	Case "CD0342": txtCampus = "러셀 대구" '대구
					campusName = "russel_dg"
					txt03 = "온라인 접수 ㅣ 현재 모집 중"
					quickUrl01 = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1417"
					quickUrl02 = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1476"
					quickUrl03_01 = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1502"
					txt02 = "10월 순차 개강"
	Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
                    campusName = "core_gj"
					txt03 = "현장 접수ㅣ현재 모집 중"
					quickUrl01 = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1420"
					quickUrl03_01 = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1504"
					txt02 = "9월 순차 개강"
	Case "CD0341": txtCampus = "러셀CORE 대전"   '코어대전
                    campusName = "core_dj"
					txt01 = "N수, 고3, 고2"
					quickUrl01 = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1421"
					txt03 = "현장 또는 온라인 접수ㅣ현재 모집 중 <a href='https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158' class='btn-gray-s ml_10'>원서접수 바로가기</a>"
					quickUrl03_01 = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1505					"
					txt02 = "9월 순차 개강"
	Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
					campusName = "core_wj"
					txt01 = "고3, 고2, 고1"
					txt02 = "매월 초 개강"
					txt03 = "현장 또는 온라인 접수 | 현재 모집 중"
					quickUrl = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1326"
					coment = "<a class='bt-apply m0' href='https://corewj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=152'>온라인 접수 바로가기</a>"
					quickUrl03_01 = "추후 오픈 예정입니다."

	Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
					campusName = "core_jj"
					txt03 = "현장 또는 온라인 접수ㅣ현재 모집 중"
					quickUrl01 = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1423"
					quickUrl03_01 = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1507"
					txt02 = "9월 순차 개강"
	Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
					campusName = "core_cw"
					txt02 = "9월 1일(금) 개강"
					txt03 = "현장 또는 온라인 접수ㅣ현재 모집 중 <a href='https://corecw.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=159' class='btn-gray-s ml_10'>원서접수 바로가기</a>"
					quickUrl01 = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1424"
					quickUrl03_01 = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1508"

	Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
					campusName = "core_cj"
					txt02 = "현재 접수 중"
					txt03 = "현장 또는 온라인 접수ㅣ현재 모집 중 <a href='https://corecj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=159' class='btn-gray-s ml_10'>원서접수 바로가기</a>"
					quickUrl01 = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1425"
					quickUrl03_01 = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1509"

	'Case "CD0258": txtDate = "기숙"
	'Case "CD0331": r_title = "삽자루 수학학원"
End Select
%>

<!-- visual-wrap -->
<div class="visual-wrap">
	<!-- visual-inner -->
	<div class="visual-inner">
		<!-- 디데이 -->
		<% if curYmdhmin < 202311160000 then %>
		<div class="ico-dday">
			<p>수능<br><strong class="dday"></strong></p>
		</div>
		<% END IF%>
		<!-- //디데이 -->
		<p class="v-txt01"><span>나의 마지막 수능을 <strong>승리로 이끌 파이널 전략</strong></span></p>
		<% If sCampusCode = "CD0250" Then '부천 %>
		<p class="v-img01 bc-go3-on"><img src="<%=Application("img_path_russel")%>/russel_bc/2023/final_go3/v_txt01.png" alt=""></p>
		<p class="v-img01 bc-go3-off"><img src="<%=Application("img_path_russel")%>/intro/2023/final/v_txt01_n.png" alt=""></p>
		<% Else %>
		<p class="v-img01"><img src="<%=Application("img_path_russel")%>/intro/2023/final/v_txt01.png" alt=""></p>
		<% End If %>

		<!-- v-tit-wrap -->
		<div class="v-tit-wrap">
			<div class="v-img02">
				<span><img src="<%=Application("img_path_russel")%>/intro/2023/final/v_txt02.png" alt=""></span>
				<span><img src="<%=Application("img_path_russel")%>/intro/2023/final/v_txt03.png" alt=""></span>
				<span><img src="<%=Application("img_path_russel")%>/intro/2023/final/v_txt04.png" alt=""></span>
			</div>
			<p class="v-img03"><img src="<%=Application("img_path_russel")%>/intro/2023/final/v_txt05.png" alt=""></p>
		</div>
		<!-- //v-tit-wrap -->
		
		<!-- info-wrap -->
		<div class="info-wrap">
			<p class="info-txt01">
				<% If isCore = "1" Then '코어 %>
				러셀CORE에서
				<% ElseIf sCampusCode = "CD0244" Then '분당 %>
				러셀 분당에서
				<% Else %>
				러셀에서
				<% End If %> 
				경쟁하는 것이<br>최상위권 목표 달성을 위한 최종 합격 전략입니다.
			</p>
			<% If sCampusCode = "CD0250" Then '부천/ %>
			<div class="info-txt02 info-txt02-type02" style="width:500px;">
			<% ElseIf sCampusCode = "CD0244" Then '분당  %>
			<div class="info-txt02 info-txt02-type02" style="width:600px;">
			<% Else %>
			<div class="info-txt02">
			<% End If %>
				<% If sCampusCode <> "CD0257" Then '중계 제외 %>
				<dl>
					<dt><%=tit01%></dt>
					<dd><%=txt01%></dd>
				</dl>
				<% End If %>
				<% If sCampusCode <> "CD0257" Then '중계 제외 %>
				<dl>
					<dt><%=tit02%></dt>
					<dd><%=txt02%></dd>
				</dl>
				<% End If %>
				
				<% If sCampusCode <> "INTRO" Then '인트로제외 %>
				<dl>
					<dt><%=tit03%></dt>
					<dd><%=txt03%></dd>
				</dl>
				<% End If %>
				<% If sCampusCode = "CD0250" Then '부천 %>
				<dl>
					<dt><%=tit04%></dt>
					<dd><%=txt04%></dd>
				</dl>
				<% End If %>
			</div>
		</div>
		<!-- //info-wrap -->		

		<% If sCampusCode = "CD0244" Then '분당 %>
		<!-- 마감아이콘 -->
	    <!-- 부천 고3 제외 : bc-go3-off -->
		<div class="ico-end bc-go3-off" style="top:500px;right:-100px"><div>전석마감<br>(대기자 접수 中)</div></div>
	    <!-- //부천 고3 제외 -->
		<!-- //마감아이콘 -->
		<% End If %>
	</div>
	<!-- //visual-inner -->
	
	<!---- 우측 퀵배너 ---->
	<div class="quick">
		<p class="b-tit">2024 수능 대비 단과</p>
		<div class="q-ban">
			<a href="<%=quickUrl01%>">
				<span>실전 수능 대비</span>
				<strong>파이널<br>정규&middot;특강 단과 </strong>
			</a>
		</div>
		<% If isCore = "0" Then '코어제외 %>
	    <!-- 부천 고3 제외 : bc-go3-off -->
		<div class="q-ban bc-go3-off">
			<a href="<%=quickUrl02%>">
				<span>N수생을 위한<br>평일 오전&middot;오후 단과</span>
				<strong>AM단과</strong>
			</a>
		</div>
	    <!-- //부천 고3 제외 -->
		<% End If %>

		<div class="q-ban">
			<a href="<%=quickUrl03_01%>">				
				<span>수시 합격 대비</span>
				<strong>대학별 논술<br>단기 집중 특강</strong>
			</a>
			<!-- <div>
				<span>수시 합격 대비</span>
				<strong>대학별 논술<br>단기 집중 특강</strong>
				<div class="ba">
					<a href="<%=quickUrl03_01%>">수능<br>이전</a>
					<a href="<%=quickUrl03_01%>">수능<br>이후</a>
				</div>
			</div> -->
		</div>
		
		<% If sCampusCode = "CD0250" Then '부천 %>
		<div class="banner-bc mt15">
			<a href="javascript:;" onclick="window.open('https://russelbc.megastudy.net/russel/entinfo/popup_notice_service_nonlogin.asp','sms_pop','width=700, height=800, scrollbars=no')"><img src="<%=Application("img_path_russel")%>/intro/2023/final/banner_sms.png" alt=""></a>
			<a href="https://pf.kakao.com/_sFgGxj" target="_blank" class="mt15">
				<img src="<%=Application("img_path_russel")%>/intro/2023/final/banner_talk.png" alt="" class="bc-go3-off">
				<img src="<%=Application("img_path_russel")%>/russel_bc/2023/final_go3/banner_talk.png" alt="" class="bc-go3-on">
			</a>
		</div>
		<% End If %>

	</div>
	<!---- //우측 퀵배너 ---->
</div>
<!-- //visual-wrap -->


<% If sCampusCode <> "INTRO" Then '인트로제외 %>
<!-- final-tab -->
<div class="final-tab js-final-tab">
	<div class="fix-menu">
		<a href="" class="on"><%=txtCampus%> 모집요강 및 장학혜택</a>
		<a href=""><%=txtCampus%> 파이널 정규반</a>
	</div>
</div>
<!-- //final-tab -->
<% End If %>

