
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

title01 = "개강일"
txt01 = "1/1(월)"
title02 = "접수 기간"
txt02 = "현장 또는 온라인 접수<br><span class='comment'>*자세한 내용은 학원별 모집 요강 참조</span>"
title03 = "접수 방법"
txt03 = "현장 또는 온라인 접수 <a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`);'>원서접수 바로가기</a>"
vInfoWidth = "auto"
apply_url = "javascript:alert(`추후 오픈 예정입니다.`);"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	
        
    Case "CD0249": txtCampus = "러셀 영통"  '영통
        campusName = "russel_yt"
        campusName02 = "t_yt"
        txt01 = "1차 개강 : 1/5(금) <br> 2차 개강 : 2/5(월)"
        txt02 = "추후 공지"
        txt03 = "현장 접수<br>※ 모집요강 지원자격 해당자 순 접수"
        
	Case "CD0342": txtCampus = "러셀 대구" '대구
		campusName = "russel_dg"
        campusName02 = "t_dg"
        txt01 = "1월 1일(월) 개강"
        txt02 = "11월 20일(월)부터"
        txt03 = "온라인 접수"
        apply_url = "https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=165"
        icoEnd = "전석 마감"

	Case "CD0349": txtCampus = "러셀 울산" '울산
		campusName = "russel_us"
        campusName02 = "t_us"
        txt01 = "2024년 1월 개강"
        txt02 = "11월 22일(수)부터"
        txt03 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=165'>원서접수 바로가기</a>"
        apply_url = "https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=165"

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
        campusName = "core_gj"
        campusName02 = "t_gj"
        txt02 = "11/16(목) 부터"
        vInfoWidth = "990px"


End Select
%>
<div class="visual-wrap">
    <% If sCampusCode = "CD0340" Then '코어광주 %>
    <div class="visual-area">
    <% Else %>
    <div class="visual-area type02">
    <% End If %>
        <div class="scene03">
            <div class="fadeIn">
                <div class="bg"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/scene03_bg.png" alt="" /></div>
                <div class="b-l-light"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/scene03_left_speed.png" alt="" /></div>
                <div class="b-r-light"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/scene03_right_speed.png" alt="" /></div>
                <div class="inner">
                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/scene03_stit.png" alt="최상위권 이과전문관N" /></p>
                    <h1 class="v-tit-wrap">
                        <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first_overall/scene03_tit01.png" alt="2025" /></p>
                        <p class="v-tit01 animate__bounceInRight"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/scene03_tit02.png" alt="재수종합반" /></p>
                        <p class="v-tit02 animate__bounceInLeft"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/scene03_tit03.png" alt="우선선발" /></p>
                        <div class="t-light flicker-1"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/scene03_light.png" alt="" /></div>
                    </h1>
                    <p class="v-txt"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/scene03_stit01.png" alt="한발 더 빠른 시작으로 최상위권 대입성공을 쟁취하라!" /></p>
                    <p class="v-txt02"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/scene03_stit02.png" alt="" /></p>
                    <div class="v-info">
                        <div style="width:<%=vInfoWidth%>">
                            <dl>
                                <dt><%=title01%></dt>
                                <dd><%=txt01%></dd>
                            </dl>
                            <dl>
                                <dt><%=title02%></dt>
                                <dd><%=txt02%></dd>
                            </dl>
                            <dl>
                                <dt><%=title03%></dt>
                                <dd><%=txt03%>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="scene02">
            <div class="fadeIn">
                <div class="bg"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/scene02_bg.jpg" alt="" /></div>
                <div class="inner">
                    <div class="l-ribbon slide-out-fwd-left"><img class="" src="<%=Application("img_path_russel")%>/intro/2024/first_overall/scene02_left_ribbon.png" alt="" /></div>
                    <div class="r-ribbon slide-out-fwd-right"><img class="" src="<%=Application("img_path_russel")%>/intro/2024/first_overall/scene02_right_ribbon.png" alt="" /></div>
                    <div class="scale-in-center">
                        <p><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/scene02_txt01.png" alt="한발 더 빠른 시작으로" /></p>
                        <p class="mt40"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/scene02_txt02.png" alt="최상위권 대입성공을 쟁취하라!" /></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="scene01">
            <div class="bg"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/scene01_bg.jpg" alt="" /></div>
            <div class="inner">
                <p class="l-tit"><img class="slide-in-blurred-top" src="<%=Application("img_path_russel")%>/intro/2024/first_overall/scene01_left_text.png" alt="안주할 것인가," /></p>
                <p class="r-tit"><img class="slide-in-blurred-top" src="<%=Application("img_path_russel")%>/intro/2024/first_overall/scene01_right_text.png" alt="도전할 것인가" /></p>
            </div>
        </div>
    </div>

    <!--마감딱지-->
    <% If sCampusCode = "CD0342" Then '대구 %>
    <div class="ico-end red" style="top:508px;right:calc(50% - 585px);"><div><%=icoEnd%></div></div>
    <% End If %>
    <!--//마감딱지-->

    <!-- quick fix배너 -->
    <div class="quick">
        <!-- <p class="b-tit">2025 수능 대비 단과</p>
        <a class="q-ban mb16" href="">
            <span>수능까지<br>
            체계적인 커리큘럼</span>
            <strong>1~2월 정규&middot;특강 단과</strong>
        </a> -->
        <!-- <a href="javascript:fncAlarmPop();" class="mb16" style="padding-bottom:1px;"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/sns_banner.png" alt="학원 문자 수신 알리미 신청" /></a> -->
    </div>
    <!--// quick fix배너 -->
</div>

<!-- fix-menu -->
<nav class="fix-menu-wrap">
    <div class="fix-menu">
        <div class="menu">
            <a class="on" href="javascript:void(0);">최상위권 이과전문관N<br>
            러셀 재수종합반</a>
            <% If sCampusCode = "CD0342" OR sCampusCode = "CD0349" Then '대구/울산 %>
            <a href="javascript:void(0);">최상위권 집결,<br>
            러셀</a>
            <% Else %>
            <a href="javascript:void(0);">최상위권 집결<br>
            <%=txtCampus%></a>
            <% End If %>
            <a href="javascript:void(0);">모집안내</a>
            <a href="javascript:void(0);">수업안내</a>
            <a href="javascript:void(0);">러셀 재수종합반<br>
            합격 시스템</a>
        </div>
    </div>
</nav>
<!-- //fix-menu -->