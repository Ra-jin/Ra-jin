
<%
tit01 = "모집 대상"
tit02 = "개강일"
tit03 = "문의 전화"
tit04 = "운영 기간"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")

    Case "CD0347": campusName = "russel_sm"  '기숙서의치관
                    txt01 = "2024년 고3&middot;고2"
                    txt02 = "2023년 12월 30일 (토)"
                    txt03 = "031)513-1010"
					txt04 = "2023년 12월 30일 (토) ~2024년 2월 3일(토) [5주 완성] <a href='https://russelsm.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=158' class='bt-apply'>원서접수 바로가기</a>" 
                    url_loca = "/russel_sm/info/location.asp"
                    applyUrl = ""
					icoEnd = "<strong>전반 마감</strong>"

    Case "CD0348": campusName = "russel_w"  '기숙여최상위권
					txt01 = "2024년 고3"
					txt02 = "2023년 12월 30일 (토)"
					txt03 = "031) 526-6787"
					txt04 = "2023년 12월 30일 (토) ~2024년 2월 3일(토) [5주 완성] <a href='https://russelw.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=158' class='bt-apply'>원서접수 바로가기</a>" 
					url_loca = "/russel_w/info/location.asp"
					applyUrl = ""
					icoEnd = "<strong>전반 마감</strong>"
                    
    Case "CD0258": campusName = "russel_yj"  '기숙남최상위권
					txt01 = "2024년 고3&middot;고2"
					txt02 = "2023년 12월 30일 (토)"
					txt03 = "031)512-1010"
					txt04 = "2023년 12월 30일 (토) ~2024년 2월 3일(토) [5주 완성] <a href='https://russelcampus.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=158' class='bt-apply'>원서접수 바로가기</a>" 
					url_loca = "/russel_yj/info/location.asp"
					applyUrl = ""
					icoEnd = "전반 마감"
End Select
%>

<div class="visual-area">
	<div class="v-bg"></div>
	<div class="bg"></div>> 

	<div class="visual-wrap">
		<p class="v-star"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/light.png" alt="" /></p>
		<p class="v-stxt"><img src="<%=img_path_yangji%>/2023/winter/v-txt02.png" alt="" /></p>

		<div class="inner">
			<p class="v-txt"><img src="<%=img_path_yangji%>/2023/winter/v-txt01.png" alt="겨울방학, 실력 향상을 넘어 최상위권으로!" /></p>
			<p class="v-tit"><img src="<%=img_path_yangji%>/2023/winter/v-tit.png" alt="2024 러셀 윈터스쿨" /></p>
			<% If sCampusCode = "CD0348" Then '여기숙 %>
			<p class="v-ico"><img src="<%=img_path_russelw%>/2023/winter/ico_year.png" alt=""></p>
			<p class="mb30"><img src="<%=img_path_russelw%>/2023/winter/v-img01.png" alt="" /></p>
			<% ElseIf sCampusCode = "CD0347" Then '서의치 %>
			<p class="v-ico"><img src="<%=img_path_russelsm%>/2023/winter/ico_year.png" alt=""></p>
			<p class="mb30"><img src="<%=img_path_russelsm%>/2023/winter/v-img01_1.png" alt="" /></p>
			<% Else %>
			<p class="v-ico"><img src="<%=img_path_yangji%>/2023/winter/ico_year.png" alt=""></p>
			<p class="mb30"><img src="<%=img_path_yangji%>/2023/winter/v-img01.png" alt="" /></p>
			<% End If %>
			<div class="v-info">
				<dl>
					<dt class="ml0"><%=tit01%></dt>
					<dd><%=txt01%></dd>
				</dl>
				<dl>
						<dt><%=tit02%></dt>
						<dd classv="<%=campusName%>"><%=txt02%></dd>
				</dl>
				<dl>
					<dt><%=tit03%></dt>
					<dd class="<%=campusName%>"><%=txt03%></dd>
				</dl>
				<dl>
					<dt class="ml0"><%=tit04%></dt>
					<dd class="<%=campusName%>"><%=txt04%></dd>
				</dl>
				<ul>
					<li><a href="/russel/info/qna/qna.asp">온라인 1:1 상담</a></li>
					<li><a class="mr0" href="<%=url_loca%>">오시는길</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<!--마감딱지-->
	<div class="ico-end" style="top:478px;right:calc(50% - 493px);"><div><%=icoEnd%></div></div>
	<!--//마감딱지-->

	<!-- quick 플로팅배너 -->
	<div class="quick <%=campusName%>">
		<% If sCampusCode = "CD0258" Then '남기숙 %>
		<!-- <a href="javascript:fncAlarmPop();" class="mb25"><img src="<%=img_path_yangji%>/2023/winter/quk_banner02.png" alt="알리미 신청" /></a> -->
		<a href="brouchure_yj_2023.pdf" download="" class="mb25"><img src="<%=img_path_yangji%>/2023/winter/quk_banner01.png" alt="윈터스쿨 브로슈어 다운로드" /></a>
		<% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
		<a href="https://russelw.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=158" class="mb25"><img src="<%=img_path_yangji%>/2023/winter/quk_banner03.png" alt="온라인 원서 접수" /></a>
		<!-- <a href="javascript:fncAlarmPop();" class="mb25"><img src="<%=img_path_yangji%>/2023/winter/quk_banner02.png" alt="알리미 신청" /></a> -->
		<a href="javascript:alert('추후 오픈 예정입니다.');" class="mb25"><img src="<%=img_path_yangji%>/2023/winter/quk_banner01.png" alt="윈터스쿨 브로슈어 다운로드" /></a>
		<% Else %>
		<!-- <a href="javascript:fncAlarmPop();" class="mb25"><img src="<%=img_path_yangji%>/2023/winter/quk_banner02.png" alt="알리미 신청" /></a> -->
		<a href="brochure_sm.pdf" download><img src="<%=img_path_yangji%>/2023/winter/quk_banner01.png" alt="윈터스쿨 브로슈어 다운로드" /></a>		
		<% End If %>
		<!-- <a href="/intro/2023/csat/apply.asp" class="mb25"><img src="<%=Application("img_path_russel")%>/intro/2023/winter/mock_banner.jpg" alt="수능 실전 모의체험" /></a> -->


	</div>
	<% If sCampusCode = "CD0347" Then '기숙서의치관 %>
		<div style="top: 630px;" class="quick02 <%=campusName%>">
			<a href="https://russelsm.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=158"><img src="<%=img_path_yangji%>/2023/winter/quk_banner03.png" alt="온라인 원서 접수" /></a>
		</div>
	<% End If %>
	<!--// quick 플로팅배너 -->
</div>

<!-- fix-menu -->
<nav class="fix-menu-wrap">
    <div class="fix-menu type01 js-fix-menu">
		<div class="menu">
			<% If sCampusCode = "CD0348" Then '여기숙 %>
			<a class="on" href="javascript:void(0);">최상위권 여학생 의대전문관</a>
			<% ElseIf sCampusCode = "CD0347" Then '서의치 %>
			<a class="on" href="javascript:void(0);">서연고&middot;의치대 전문관</a>
			<% Else %>
			<a class="on" href="javascript:void(0);">최상위권 남학생 의대전문관</a>
			<% End If %>
			<a href="javascript:void(0);">윈터스쿨 안내</a>
			<a href="javascript:void(0);">윈터스쿨 프로그램</a>
			<a href="javascript:void(0);">입학 안내</a>
			<a href="javascript:void(0);">학습계획표&일과표</a>
		</div>
    </div>
</nav>
<!-- //fix-menu -->