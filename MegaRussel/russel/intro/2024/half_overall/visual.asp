
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

tab02 = "최상위권 집결"
tit01 = "개강일"
tit02 = "접수 방법"
txt02 = "현장 또는 온라인 접수"
v_txt = "최상위권 대입 결과"
cont03_txt01 = "수능 성적 상승과 목표 대학 합격"
cont03_txt02 = "최상위권 대입 합격"
half_txt = "반수 특강"
half_url = "javascript:alert(`추후 오픈 예정입니다.`);"
am_txt = "AM단과"
am_url = "javascript:alert(`추후 오픈 예정입니다.`);"
regular_txt = "정규&middot;특강 단과"
regular_url = "/intro/danka/2024/03/go3.asp"
quick_tit = "2025 수능 대비 단과"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	
    Case "CD0250": txtCampus = "러셀 부천"  '부천
                    campusName = "russel_bc"
                    campusName02 = "t_bc"
                    txt01 = "매월 초 순차 개강"
                    txt02 = "현장 접수"
                    tit03 = "입학문의"
                    txt03 = "온라인 상담 <a class='bt-apply' href='https://pf.kakao.com/_sFgGxj'>바로가기</a><br>전화 상담 032.265.1010"

    Case "CD0249": txtCampus = "러셀 영통"  '영통
                    campusName = "russel_yt"
                    campusName02 = "t_yt"
                    txt01 = "매월 초 순차 개강"
                    txt02 = "현장 접수"

    Case "CD0257": txtCampus = "러셀 중계"  '중계
                    campusName = "russel_jg"
                    campusName02 = "t_jg"
                    v_txt = "목표 대학 합격 결과"
                    cont03_txt01 = "수능 성적 상승과 목표 대학 합격"
                    cont03_txt02 = "목표 대학 합격"
                    tab02 = "결과로 증명하는 러셀 중계"
                    txt01 = "매월 초 개강"
                    txt02 = "현장 접수"

	Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "t_dg"
                    txt01 = "10월 초 순차 개강"
                    txt02 = "온라인 접수 <a class='bt-apply' href='https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=171'>원서접수 바로가기</a>"
                    icoEnd = "연고대 마감<br>(대기접수中)"

	Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "t_us"
                    txt01 = "10월 7일(월)"
                    txt02 = "현장 또는 온라인 접수"

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"
                    tit01 = "접수 현황"
                    txt01 = "현재 모집 중 [마감 임박]"
                    txt02 = "현장 접수"

End Select
%>

<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="inner">
            <div class="v-tit">
                <% If sCampusCode = "CD0257" Then '중계 %>
                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half_overall/v-tit01.png" alt="최상위권 이과전문관N/서연고 문과전문관" /></div>
                <% Else %>
                <div><img src="<%=Application("img_path_russel")%>/intro/2024/half_overall/v-tit01.png" alt="최상위권 이과전문관N" /></div>
                <% End If %>
                <div><img src="<%=Application("img_path_russel")%>/intro/2024/half_overall/v-tit02.png" alt="2025" /></div>
                <div><img src="<%=Application("img_path_russel")%>/intro/2024/half_overall/v-tit03.png" alt="반수" /></div>
                <div><img src="<%=Application("img_path_russel")%>/intro/2024/half_overall/v-img.png" alt="" /></div>
                <div><img src="<%=Application("img_path_russel")%>/intro/2024/half_overall/v-tit04.png" alt="재수종합반" /></div>
            </div>

            <% If sCampusCode = "CD0250" Then '부천 %>
            <p class="v-txt"><strong><%=txtCampus%> 재수종합반</strong>에서 경쟁하는 것이 <strong>대입성공의 경쟁력</strong>입니다.</p>
            <% Else %>
            <p class="v-txt"><%=v_txt%>가 증명하는 러셀 종합반 시스템<br>
                <strong><%=txtCampus%> 재수종합반에서 반수 성공에 도전하세요.</strong></p>
            <% End If %>
            

            <div class="v-info">
                <dl>
                    <dt><%=tit01%></dt>
                    <dd><%=txt01%></dd>
                </dl>
                <dl>
                    <dt><%=tit02%></dt>
                    <dd><%=txt02%></dd>
                </dl>
                <% If sCampusCode = "CD0250" Then '부천 %>
                <dl>
                    <dt><%=tit03%></dt>
                    <dd><%=txt03%></dd>
                </dl>
                <% End If %>
            </div>
            <span>※ 모집요강 지원자격 해당자 순 접수</span>
        </div>
        <div class="bg"><img src="<%=Application("img_path_russel")%>/intro/2024/half_overall/visual_bg.jpg" alt="" /></div>
	</div>

    <!-- 마감딱지 -->
     <% If sCampusCode = "CD0342" Then '대구 %>
    <div class="ico-end" style="top:660px;right:calc(50% - 585px);animation:fadeIn ease 1s 4.5s both;"><div class="fz20"><%=icoEnd%></div></div>
    <% End If %>
    <!-- //마감딱지 -->
</div>

<!-- fix-menu -->
<nav class="fix-menu-wrap">
    <div class="fix-menu">
        <div class="menu">
            <a class="on" href="javascript:void(0);">모집안내</a>
            <a href="javascript:void(0);"><%=tab02%></a>
            <a href="javascript:void(0);"> 러셀 재수종합반</a>
            <a href="javascript:void(0);"> 최적화된 수업 시스템</a>
            <a href="javascript:void(0);">검증된 종합반 시스템</a>
        </div>
    </div>
</nav>
<!-- //fix-menu -->
