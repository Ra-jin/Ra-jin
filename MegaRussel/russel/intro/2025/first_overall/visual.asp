
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"


    Case "CD0249": txtCampus = "러셀 영통"  '영통
                    campusName = "russel_yt"
                    campusName02 = "t_yt"

                    tit01 = "개강"
                    txt01 = "2/3(월) 개강<p class='stxt'>※ 2/1(토) 입학 시, 2/1(토)~2(일) 자습관 비용 전액 지원</p>"
                    tit02 = "운영기간"
                    txt02 = "12/30(월)~3/2(일)"
                    tit03 = "접수 방법"
                    txt03 = "현장 접수<p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    success_sub = "* 러셀 영통학원 재수생 재원생 후기 중 일부 발췌"
                    success_txt = "2024학년도 러셀 영통 명예의 전당"
                    success_url = "https://russelyt.megastudy.net/russel/event/2024/interview/index.asp"
                    food_txt = "급식을"


	Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "t_dg"

                    tit01 = "개강"
                    txt01 = "2월 순차 개강"
                    tit02 = "접수 기간"
                    txt02 = "11월 20일(수) 시작"
                    tit03 = "접수 방법"
                    txt03_before = "온라인 접수<p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    txt03 = "온라인 접수 <a class='bt-apply' href='https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=182'>원서접수 바로가기</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    success_sub = "* 러셀 대구학원 재원생 성적 향상 결과 중 일부 발췌"
                    success_txt = "2024학년도 대입 합격 결과"
                    success_url = "https://russeldg.megastudy.net/russel/event/2024/interview/index.asp"
                    icoEnd = "전반 마감<br>(대기 접수 중)"

                    
	Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "t_us"

                    tit01 = "개강"
                    txt01 = "2월 순차 개강"
                    tit02 = "접수 기간"
                    txt02 = "현재 접수 중"
                    tit03 = "접수 방법"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=182'>원서접수 바로가기</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    success_sub = "* 전체 러셀학원 재수생 우선선발반 재원생 후기 중 일부 발췌"
                    success_txt = "러셀 대입성공 Story 더보기"
                    success_url = "https://russel.megastudy.net/russel/entinfo/notice/2020/success/index.asp"
                    food_txt = "자체 식당을"


	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"

                    tit01 = "개강"
                    txt01 = "2월 순차 개강"
                    tit02 = "접수 기간"
                    txt02 = "현재 접수 중"
                    tit03 = "접수 방법"
                    txt03 = "현장 또는 온라인 접수<p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    success_sub = "* 러셀CORE 광주 학원 재수생 우선선발반 재원생 후기 중 일부 발췌"
                    success_txt = "러셀CORE 광주 명예의 전당 바로가기"
                    success_url = "https://coregj.megastudy.net/core_gj/event/2024/interview/index.asp"
                    food_txt = "급식(자체 식당)을"

	Case "CD0341": txtCampus = "러셀 대전"  '코어대전
                    campusName = "core_dj"
                    campusName02 = "t_dj"

                    tit01 = "개강"
                    txt01 = "매주 (수) 입학"
                    tit02 = "접수 기간"
                    txt02 = "현재 접수 중"
                    tit03 = "접수 방법"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=182'>원서접수 바로가기</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    success_sub = "* 러셀 대전 재원생 후기 중 일부 발췌"
                    success_txt = "2024 대입 합격 결과 바로가기"
                    success_url = "https://coredj.megastudy.net/russel/event/2024/interview/index.asp"
                    food_txt = "자체 식당을"


End Select
%>

<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="inner">
            <% If sCampusCode = "CD0249" Then '영통 %>
            <div class="v-txt txt01"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first_overall/v_txt01.png" alt="단과 수업과 의무자습을 한방에!" /></div>
            <% Else %>
            <div class="v-txt txt01"><img src="<%=Application("img_path_russel")%>/intro/2025/first_overall/v_txt01.png" alt="단과 수업과 의무자습을 한방에!" /></div>
            <% End If %>
            <div class="v-txt txt02"><img src="<%=Application("img_path_russel")%>/intro/2025/first_overall/v_txt02.png" alt="2026" /></div>
            <% If sCampusCode = "CD0249" Then '영통 %>
            <div class="v-txt txt03 slide-right"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first_overall/v_txt03.png" alt="재수생 우선선발반" /></div>
            <% Else %>
            <div class="v-txt txt03 slide-right"><img src="<%=Application("img_path_russel")%>/intro/2025/first_overall/v_txt03.png" alt="재수생 우선선발반" /></div>
            <% End If %>
            <div class="v-txt txt04">
                <p>나의 경쟁력을 높이는 한발 빠른 시작, <br> <strong><%=txtCampus%>에서 최상위권 대입성공을 선점</strong>하세요!</p>
            </div>

            <div class="v-info">
                <div>
                    <dl>
                        <dt><%=tit01%></dt>
                        <dd><%=txt01%></dd>
                    </dl>
                    <dl>
                        <dt><%=tit03%></dt>
                    <% If sCampusCode = "CD0342" Then '대구 %>
                        <% if curYmdhmin < 202411201000 then %>
                        <dd><%=txt03_before%></dd>
                        <% Else %> 
                        <dd><%=txt03%></dd>
                        <% End If %>
                    <% Else %> 
                        <dd><%=txt03%></dd>
                    <% End If %>
                    </dl>
                </div>
                <div>
                    <dl>
                        <dt><%=tit02%></dt>
                        <dd><%=txt02%></dd>
                    </dl>
                </div>
            </div>
            
            <div class="v-obj"><img src="<%=Application("img_path_russel")%>/intro/2025/first_overall/obj_img.png" alt="" /></div>
            
            <!--마감딱지-->
            <% If sCampusCode = "CD0342" Then '대구 %>
            <div class="ico-end" style="top:558px;right:calc(50% - 372px);"><div><%=icoEnd%></div></div>
            <% End If %>
            <!--//마감딱지-->
        </div>
	</div>

	<!-- quick 플로팅배너 -->
	<div class="quick">
        <!--학원 문자 수신 알리미 신청-->
        <!-- <a href="javascript:fncAlarmPop();"><img src="<%=Application("img_path_russel")%>/intro/2025/first_overall/sns_banner.jpg" alt="학원 문자 수신 알리미 신청" /></a> -->
        <!--//학원 문자 수신 알리미 신청-->
	</div>
	<!--// quick 플로팅배너 -->
</div>

<!-- fix-menu -->
<nav class="fix-menu-wrap">
    <div class="fix-menu">
        <div class="menu">
            <a class="on" href="javascript:void(0);">모집안내</a>
            <a href="javascript:void(0);">최상위권 집결</a>
            <a href="javascript:void(0);">재수종합반 시스템</a>
        </div>
    </div>
</nav>
<!-- //fix-menu -->
