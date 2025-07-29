
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

title01 = "개강일"
txt01 = "2월 순차 개강"
title02 = "접수 방법"
txt02 = "현장 또는 온라인 접수<br><span class='comment'>*자세한 내용은 학원별 모집 요강 참조</span>"
regular_txt = "1~2월 정규&middot;특강 단과"
regular_txt02 = "1~2월 정규&middot;특강 단과 시간표 바로가기"
regular_url = "https://russel.megastudy.net/intro/danka/2024/01/go3.asp"
apply_url = "javascript:alert(`추후 오픈 예정입니다.`);"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	
    Case "INTRO": txtCampus = "러셀"  '인트로
		campusName = "intro"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
		campusName = "russel_gn"
        campusName02 = "t_gn"
        title01 = "개강일"
        txt01 = "매주 월/목 입학"
        title02 = "모집 기한"
        txt02 = "2월 15일 (목) 입학까지<br><span class='comment'>* 일정은 변경될 수 있습니다.</span>"
        title03 = "접수 방법"
        txt03 = "온라인 접수 <a class='bt-apply' href='https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163'>원서접수 바로가기</a>"
        regular_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1478"
        special_txt = "<span class='fz16'>과목별 핵심 단기완성</span><br>1~2월 윈터 특강"
        special_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1453"
        apply_url = "https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163"
        regular_txt = "1~2월 정규 단과"
        regular_txt02 = "<span class='fz16'>수능까지 체계적인 커리큘럼</span><br>1~2월 정규 단과"

    Case "CD0001": txtCampus = "러셀 대치"  '대치
        campusName = "russel"
        campusName02 = "t_dc"
        txt01 = "1월 2일 (화)"
        txt02 = "모집 종료"
        regular_url = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1479"
        icoEnd = "모집 종료"

    Case "CD0245": txtCampus = "러셀 목동"  '목동
        campusName = "russel_mokdong"
        campusName02 = "t_md"
        txt01 = "1/2(화) 개강"
        title02 = "접수 현황"
        txt02 = "전반 마감 [대기자 접수 마감]"
        regular_url = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1480"
        icoEnd = "전반 마감<br>[대기자 접수 마감]"

    Case "CD0250": txtCampus = "러셀 부천"  '부천
        campusName = "russel_bc"
        campusName02 = "t_bc"
        txt01 = "2차 개강 : 2/19(월)"
        txt02 = "현장 접수"
        title03 = "입학문의"
        txt03 = "<a href='https://pf.kakao.com/_sFgGxj'>온라인 상담</a> ㅣ 전화 상담 032.265.1010"
        regular_txt = "2월 정규&middot;특강 단과"
        special_txt = "12월 특강 단과 시간표 바로가기"
        special_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1512"
        regular_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1481"

	Case "CD0244": txtCampus = "러셀 분당"  '분당
        campusName = "russel_bundang"
        campusName02 = "t_bd"
        txt01 = "2024년 1월 2일(화)"
        title02 = "모집 기간"
        txt02 = "11/20(월)~1/31(수)<br><span class='comment'>*모집요강 지원자격 해당자순 접수</span>"
        title03 = "접수 방법"
        txt03 = "온라인 원서 접수 <a class='bt-apply' href='https://russelbd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163'>온라인 원서접수 바로가기</a>"
        apply_url = "https://russelbd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163"
        regular_url = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1482"
          
	Case "CD0246": txtCampus = "러셀 센텀"  '센텀
        campusName = "russel_ct"
        campusName02 = "t_ct"
        txt01 = "12월 26일(화)부터 순차 개강"
        txt02 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://russelct.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163'>원서접수 바로가기</a><br>※ 모집요강 지원자격 해당자 순 접수"
        apply_url = "https://russelct.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163"
        regular_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1487"
        regular_txt = "2월 정규&middot;특강 단과"
        regular_txt02 = "2월 정규&middot;특강 단과 시간표 바로가기"

          
    Case "CD0249": txtCampus = "러셀 영통"  '영통
        campusName = "russel_yt"
        campusName02 = "t_yt"
        txt01 = "1차 개강 : 2/1(목) <br> 2차 개강 : 2/19(월)"
        txt02 = "현장 접수<br>※ 모집요강 지원자격 해당자 순 접수"
        regular_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1483"

          
    Case "CD0257": txtCampus = "러셀 중계"  '중계
        campusName = "russel_jg"
        campusName02 = "t_jg"
        txt01 = "1차 1/1(월), 2차 1/15(월)"
        txt02 = "현장 접수"
        regular_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1484"

          
	Case "CD0248": txtCampus = "러셀 평촌"  '평촌
        campusName = "russel_pc"
        campusName02 = "t_pc"
        txt01 = "2월 2차 : 2/17(토) 개강"
        txt02 = "현장 접수"
        regular_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1485"
          
	Case "CD0342": txtCampus = "러셀 대구" '대구
		campusName = "russel_dg"
        campusName02 = "t_dg"
        txt01 = "1월 1일(월) 개강"
        txt02 = "온라인 접수"
        regular_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1486"
        apply_url = "https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163"
        icoEnd = "전석 마감"

	Case "CD0349": txtCampus = "러셀 울산" '울산
		campusName = "russel_us"
        campusName02 = "t_us"
        txt01 = "2024년 1월 개강"
        txt02 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163'>원서접수 바로가기</a>"
        apply_url = "https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163"
        regular_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1510"
                    

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
        campusName = "core_gj"
        campusName02 = "t_gj"
        txt01 = "1월 1일(월)"
        txt02 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://coregj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163'>원서접수 바로가기</a>"
        apply_url = "https://coregj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163"
        regular_url = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1488"
          
	Case "CD0341": txtCampus = "러셀CORE 대전"  '코어대전
        campusName = "core_dj"
        campusName02 = "t_dj"
        txt01 = "2024년 1월 1일"
        txt02 = "11월 말 현장 또는 온라인 접수 <a class='bt-apply' href='https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163'>원서접수 바로가기</a>"
        apply_url = "https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163"
        regular_url = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1489"


	Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
		campusName = "core_wj"
        campusName02 = "t_wj"
        txt01 = "1월 2일(화)"
        txt02 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://corewj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163'>원서접수 바로가기</a>"
        regular_url = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1490"
        apply_url = "https://corewj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163"


	Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
		campusName = "core_jj"
        campusName02 = "t_jj"
        txt01 = "1월 2일(화) 개강"
        txt02 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://corejj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163'>원서접수 바로가기</a>"
        apply_url = "https://corejj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163"
        regular_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1491"

	Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
		campusName = "core_cw"
        campusName02 = "t_cw"
        title01 = "접수현황"
        txt01 = "현재 모집 중"
        txt02 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://corecw.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163'>원서접수 바로가기</a>"
        regular_txt = "2월 정규&middot;특강 단과"
        regular_txt02 = "2월 정규&middot;특강 단과 시간표 바로가기"
        apply_url = "https://corecw.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163"
        regular_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1492"
        
	Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
		campusName = "core_cj"
        campusName02 = "t_cj"
        txt01 = "2월 순차 개강"
        txt02 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://corecj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163'>원서접수 바로가기</a>"
        regular_txt = "2월 정규&middot;특강 단과"
        regular_txt02 = "2월 정규&middot;특강 단과 시간표 바로가기"
        apply_url = "https://corecj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163"
        regular_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1493"

End Select
%>

<div class="visual-wrap">
	<div class="visual-area <%=campusName%>">
        <div class="scene03">
            <div class="fadeIn">
                <div class="bg"><img src="<%=Application("img_path_russel")%>/intro/2024/first/scene03_bg.png" alt="" /></div>
                <div class="b-l-light"><img src="<%=Application("img_path_russel")%>/intro/2024/first/scene03_left_speed.png" alt="" /></div>
                <div class="b-r-light"><img src="<%=Application("img_path_russel")%>/intro/2024/first/scene03_right_speed.png" alt="" /></div>
                <div class="inner">
                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/first/scene03_stit.png" alt="단과 수업과 의무자습을 한방에!" /></p>
                    <% If sCampusCode = "INTRO" Then '인트로 %>
                    <h1 class="v-tit-wrap">
                    <% ElseIf isCore Then '코어 %>
                    <h1 class="v-tit-wrap core">
                    <% Else %>
                    <h1 class="v-tit-wrap type02">
                    <% End If %>
                        <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/scene03_tit01.png" alt="2025 러셀" /></p>
                        <p class="v-tit01 animate__bounceInRight"><img src="<%=Application("img_path_russel")%>/intro/2024/first/scene03_tit02.png" alt="재수생" /></p>
                        
                        <% If sCampusCode = "CD0248" Then '평촌 %>
                        <p class="v-tit02 animate__bounceInLeft"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/scene03_tit03.png" alt="우선선발반" /></p>
                        <% Else %>
                        <p class="v-tit02 animate__bounceInLeft"><img src="<%=Application("img_path_russel")%>/intro/2024/first/scene03_tit03.png" alt="우선선발반" /></p>
                        <% End If %>
                        <div class="t-light flicker-1"><img src="<%=Application("img_path_russel")%>/intro/2024/first/scene03_light.png" alt="" /></div>
                    </h1>
                    <% If sCampusCode = "CD0257" Then '중계 %>
                    <p class="v-txt"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/scene03_stit02.png" alt="안주할 것인가, 도전할 것인가 한발 더 빠른 시작으로 최상위권 대입성공을 쟁취하라!" /></p>
                    <% Else %>
                    <p class="v-txt"><img src="<%=Application("img_path_russel")%>/intro/2024/first/scene03_stit02.png" alt="안주할 것인가, 도전할 것인가 한발 더 빠른 시작으로 최상위권 대입성공을 쟁취하라!" /></p>
                    <% End If %>
                    <div class="v-info">
                        <div>
                            <% If sCampusCode <> "CD0346" Then '청주 제외 %>
                            <dl>
                                <dt><%=title01%></dt>
                                <dd><%=txt01%></dd>
                            </dl>
                            <% End If %>
                            <dl>
                                <dt><%=title02%></dt>
                                <dd><%=txt02%></dd>
                            </dl>
                            <% If sCampusCode = "CD0250" OR sCampusCode = "CD0244" OR sCampusCode = "CD0247" Then '부천/분당/강남 %>
                            <dl>
                                <dt><%=title03%></dt>
                                <dd><%=txt03%></dd>
                            </dl>
                            <% End If %>
                        </div>
                    </div>  
                </div>
            </div>
        </div>
        <div class="scene02">
            <div class="fadeIn">
                <div class="bg"><img src="<%=Application("img_path_russel")%>/intro/2024/first/scene02_bg.jpg" alt="" /></div>
                <div class="inner">
                    <div class="l-ribbon slide-out-fwd-left"><img class="" src="<%=Application("img_path_russel")%>/intro/2024/first/scene02_left_ribbon.png" alt="" /></div>
                    <div class="r-ribbon slide-out-fwd-right"><img class="" src="<%=Application("img_path_russel")%>/intro/2024/first/scene02_right_ribbon.png" alt="" /></div>
                    <div class="scale-in-center">
                        <p><img src="<%=Application("img_path_russel")%>/intro/2024/first/scene02_txt01.png" alt="한발 더 빠른 시작으로" /></p>
                        <% If sCampusCode = "CD0257" Then '중계 %>
                        <p class="mt40"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/scene02_txt02.png" alt="수능 목표 성적과 대학 합격을 쟁취하라!" /></p>
                        <% Else %>
                        <p class="mt40"><img src="<%=Application("img_path_russel")%>/intro/2024/first/scene02_txt02.png" alt="최상위권 대입성공을 쟁취하라!" /></p>
                        <% End If %>
                    </div>
                </div>
            </div>
        </div>
        <div class="scene01">
            <div class="bg"><img src="<%=Application("img_path_russel")%>/intro/2024/first/scene01_bg.jpg" alt="" /></div>
            <div class="inner">
                <p class="l-tit"><img class="slide-in-blurred-top" src="<%=Application("img_path_russel")%>/intro/2024/first/scene01_left_text.png" alt="안주할 것인가," /></p>
                <p class="r-tit"><img class="slide-in-blurred-top" src="<%=Application("img_path_russel")%>/intro/2024/first/scene01_right_text.png" alt="도전할 것인가" /></p>
            </div>
        </div>
	</div>

	<!--마감딱지-->
    <% If sCampusCode = "CD0245" Then '목동 %>
	<div class="ico-end red" style="top:565px;right:calc(50% - 550px);"><div class="fz20"><%=icoEnd%></div></div>
    <% ElseIf sCampusCode = "CD0001" or sCampusCode = "CD0342" Then '대치/대구 %>
	<div class="ico-end red" style="top:565px;right:calc(50% - 550px);"><div><%=icoEnd%></div></div>
    <% End If %>
	<!--//마감딱지-->

	<!-- quick 플로팅배너 -->
	<div class="quick">
        <div class="mb16">
            <!-- <p class="b-tit">우선선발반 프로모션</p>
            <a class="q-ban mb16" href="javascript:alert('준비 중입니다.');">
                <span class="bold">1)</span> 12월 바자관 전액지원<br>
                <span class="bold">2)</span> 1년간 바자관 최대지원
            </a> -->
            <p class="b-tit">2025 수능 대비 단과</p>
            <a class="q-ban " href="<%=regular_url%>">
                <span>수능까지<br>
                체계적인 커리큘럼</span>
                <strong><%=regular_txt%></strong>
            </a>
            <% If sCampusCode = "CD0247" Then '강남 %>
            <a class="q-ban" href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1453">
                <span>과목별 핵심 단기완성</span>
                <strong>1~2월 윈터 특강</strong>
            </a>
            <% end if %>
        </div>
        <!-- 학원 문자 수신 알리미 -->
        <!-- <a href="javascript:fncAlarmPop();" class="mb16"><img src="<%=Application("img_path_russel")%>/intro/2024/first/sns_banner.png" alt="학원 문자 수신 알리미 신청" /></a> -->
        <!-- //학원 문자 수신 알리미 -->
        <% If sCampusCode = "CD0250" Then '부천 %>
        <a href="https://pf.kakao.com/_sFgGxj" class="mb16"><img src="<%=Application("img_path_russel")%>/intro/2024/first/chat_banner.png" alt="채팅상담" /></a>
        <a href="https://russelbc.megastudy.net/russel/info/notice/notice_view.asp?Code=29415&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=2" class="mb16"><img src="<%=Application("img_path_russel")%>/russel_bc/2024/first/quick_bc.png" alt="일대일 특별상담" /></a>
        <a href="https://russelbc.megastudy.net/info/schoolBus.asp" class="mb16"><img src="<%=Application("img_path_russel")%>/russel_bc/2024/first/banner_bus02.png" alt="버스" /></a>
        <% ElseIf sCampusCode = "CD0247" Then '강남 %>
        <a href="https://russelgn.megastudy.net/russel/event/2020/megapass/megapass.asp" class="mt25"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/banner_megapass.png" alt="메가패스" /></a>
        <% end if %>
	</div>
	<!--// quick 플로팅배너 -->
</div>

<!-- fix-menu -->
<nav class="fix-menu-wrap">
    <div class="fix-menu">
        <div class="menu">
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <a class="on" href="javascript:void(0);">최상위권 집결, 러셀</a>
            <a href="javascript:void(0);">최상위권 대입성공의 경쟁력<br>재수생 맞춤 시스템</a>
            <a href="javascript:void(0);">학원별 모집안내</a>
            <% ElseIf sCampusCode = "CD0342" OR sCampusCode = "CD0349"  OR sCampusCode = "CD0343" OR sCampusCode = "CD0344" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" OR sCampusCode = "CD0344" Then '대구/울산/코어원주/코어전주/코어창원/코어청주/코어전주 %>
            <a class="on" href="javascript:void(0);"><%=txtCampus%> 재수생 우선선발반<br>
            모집요강 및 지원혜택</a>
            <a href="javascript:void(0);">최상위권 집결, <br>
            러셀</a>
            <a href="javascript:void(0);">최상위권 대입성공의 경쟁력<br>재수생 맞춤 시스템</a>
            <% Else %>

                <% If sCampusCode = "CD0248" Then '평촌 %>
            <a class="on" href="javascript:void(0);"><%=txtCampus%> 재수생 PRE 정규반<br>
            모집요강 및 지원혜택</a>
                <% Else %>
            <a class="on" href="javascript:void(0);"><%=txtCampus%> 재수생 우선선발반<br>
                모집요강 및 지원혜택</a>
                <% End If %>

                <% If sCampusCode = "CD0257" Then '중계 %>
            <a href="javascript:void(0);">수능 목표 성적과 대학 합격을 위한<br><%=txtCampus%></a>
            <a href="javascript:void(0);">목표 대학 합격한 대입성공의 경쟁력<br>재수생 맞춤 시스템</a>
                <% Else %>
            <a href="javascript:void(0);">최상위권 집결, <br>
            <%=txtCampus%></a>
            <a href="javascript:void(0);">최상위권 대입성공의 경쟁력<br>재수생 맞춤 시스템</a>
                <% End If %>

            <% end if %>

        </div>
    </div>
</nav>
<!-- //fix-menu -->
