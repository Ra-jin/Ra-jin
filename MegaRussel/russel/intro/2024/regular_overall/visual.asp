
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

title01 = "개강일"
txt01 = "12월 28일(목)"
title02 = "접수 기간"
txt02 = "현장 또는 온라인 접수<br><span class='comment'>*자세한 내용은 학원별 모집 요강 참조</span>"
title03 = "접수 방법"
txt03 = "현장 또는 온라인 접수 <a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`);'>원서접수 바로가기</a>"
vInfoWidth = "auto"
apply_url = "javascript:alert(`추후 오픈 예정입니다.`);"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	
    Case "CD0257": txtCampus = "러셀 중계"  '중계
        campusName = "russel_jg"
        campusName02 = "t_jg"
        txt01 = "매월 초 개강"
        title02 = "접수 방법"
        txt02 = "방문 접수"

    Case "CD0249": txtCampus = "러셀 영통"  '영통
        campusName = "russel_yt"
        campusName02 = "t_yt"
        txt01 = "매월 초 순차 개강"
        title02 = "접수 방법"
        txt02 = "현장 접수"
          
	Case "CD0342": txtCampus = "러셀 대구" '대구
		campusName = "russel_dg"
        campusName02 = "t_dg"
        txt01 = "10월 초 순차 개강"
        txt02 = "온라인 접수 <a class='bt-apply' href='https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=169'>원서접수 바로가기</a>"
        apply_url = "https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=165"
        icoEnd = "연고대/블루반<br>마감(대기접수中)"

	Case "CD0349": txtCampus = "러셀 울산" '울산
		campusName = "russel_us"
        campusName02 = "t_us"
        txt01 = "10월 7일(월)"
        txt02 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=169'>원서접수 바로가기</a>"
        apply_url = "https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=169"

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
        campusName = "core_gj"
        campusName02 = "t_gj"
        title01 = "접수 현황"
        txt01 = "현재 모집 중 [마감 임박]"
        title02 = "접수 방법"
        txt02 = "현장 접수"
        vInfoWidth = "990px"


End Select
%>
<div class="visual-wrap <%=campusName%>">
    <% If sCampusCode = "CD0340" Then '코어광주 %>
    <div class="visual-area">
    <% Else %>
    <div class="visual-area type02">
    <% End If %>
        <div class="bg"></div>
        <div class="bg-fade bg-fade01"></div>
        <div class="bg-fade bg-fade02"></div>
        <div class="bg-fade bg-fade03"></div>

        <div class="vis-box">
            <div class="vis-content">
                <% If sCampusCode = "CD0257"   Then '중계 %>
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_overall/visual_txt01.png" alt="2025 바른공부 자습 전용관" /></p>
                <% Else %>
                <p><img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/visual_txt01.png" alt="2025 바른공부 자습 전용관" /></p>
                <% End If %>
                <p><img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/visual_txt02.png" alt="N수 정규반" /></p>
                <p><strong><%=txtCampus%> 재수종합반</strong>에서 경쟁하는 것이 <strong>대입성공의 경쟁력</strong>입니다.</p>
                <p class="mt20 last"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/visual_txt03.png" alt="2025 바른공부 자습 전용관" /></p>

                <div class="v-info last">
                    <% If sCampusCode = "CD0340" or sCampusCode = "CD0349" or sCampusCode = "CD0249" or sCampusCode = "CD0257" or sCampusCode = "CD0342"  Then '코어광주/울산/영통/중계/대구 %>
                    <div>                        
                        <dl>
                            <dt><%=title01%></dt>
                            <dd><%=txt01%></dd>
                        </dl>                 
                        <dl>
                            <dt><%=title02%></dt>
                            <dd><%=txt02%></dd>
                        </dl>                      
                    </div>
                    <% End If %>
                </div>
                <p class="fz18 mt10 last"><strong>※ 모집요강 지원자격 해당자 순 접수</strong></p>
            </div>
        </div>
    </div>

    <!--마감딱지-->
    <% If sCampusCode = "CD0342" Then '대구 %>
    <div class="ico-end" style="top:680px;right:calc(50% - 895px);"><div><%=icoEnd%></div></div>
    <% End If %>
    <!--//마감딱지-->

    <!-- quick fix배너 -->
    <!-- <div class="quick">
        <p class="b-tit">2025 수능 대비 단과</p>
        <a class="q-ban mb16" href="">
            <span>수능까지<br>
            체계적인 커리큘럼</span>
            <strong>1~2월 정규&middot;특강 단과</strong>
        </a>
        <a href="javascript:fncAlarmPop();" class="mb16" style="padding-bottom:1px;"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/sns_banner.png" alt="학원 문자 수신 알리미 신청" /></a>
    </div> -->
    <!--// quick fix배너 -->
</div>

<!-- fix-menu -->
<nav class="fix-menu-wrap">
    <div class="fix-menu">
        <div class="menu">
            <% If sCampusCode = "CD0343" OR sCampusCode = "CD0344" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" OR sCampusCode = "CD0344" Then '코어원주/코어전주/코어창원/코어청주/코어전주 %>
           
            <% Else %>
            <a class="on" href="javascript:void(0);">러셀 재수종합반</a>
            <a href="javascript:void(0);">               
                <% If sCampusCode = "CD0349"  Then '울산 %>
                최상위권 집결, 러셀
                <% ElseIf sCampusCode = "CD0249" Then '영통 %>
                최상위권 집결, <%=txtCampus%>
                <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                수능 목표 성적과 <br>대학 합격을 위한 <%=txtCampus%>
                <% Else %>
                최상위권 집결, 
                <br> <%=txtCampus%>
                <% end if %>
            </a>
            <a href="javascript:void(0);">모집 안내</a>
            <a href="javascript:void(0);">수업 안내</a>
            <a href="javascript:void(0);">재수종합반 시스템</a>
            <% end if %>
        </div>
    </div>
</nav>
<!-- //fix-menu -->