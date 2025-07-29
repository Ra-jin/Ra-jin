<%
txtCampus = "러셀"
campusName = "intro"

tit_01 = "개강일"
txt_01 = "2월 순차 개강"

tit_02 = "접수 방법"
txt_02 = "현장 또는 온라인 접수 <br> <span class='comment'>*자세한 내용은 학원별 모집 요강 참조</span>"

apply_txt = "원서접수 바로가기"

regular_txt = "1~2월 정규&middot;특강 단과 시간표 바로가기"
regular_url ="https://mrussel.megastudy.net/intro/danka/2024/01/go3.asp"

graph_con = "graph-con"

apply_url = "alert('추후 오픈 예정입니다.')"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "cont_gn"
                    tit_01 = "개강일"
                    txt_01 = "매주 월/목 입학"
                    tit_02 = "모집 기한"
                    txt_02 = "2월 15일 (목) 입학까지<br><span class='f11'>* 일정은 변경될 수 있습니다.</span>"
                    tit_03 = "접수 방법"
                    txt_03 = "온라인 접수"
                    graph_con = "not-graph-con"
                    regular_url ="https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1478"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163';"
                    regular_txt = "<span class='f13'>수능까지 체계적인 커리큘럼</span><br>1~2월 정규 단과"
                    special_txt = "<span class='f13'>과목별 핵심 단기완성</span><br>1~2월 윈터 특강"
                    special_url = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1453"


    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
                    campusName02 = "cont_dc"
                    tit_01 = "개강일"
                    txt_01 = "1월 2일 (화)"
                    tit_02 = "접수 방법"
                    txt_02 = "모집 종료"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russeldc.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163';"
                    apply_txt = "대기자 원서접수 바로가기"
                    graph_con = "not-graph-con"
                    regular_url ="https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1479"
                    endText = "모집 종료"

    Case "CD0245": txtCampus = "러셀 목동"   '목동
                    campusName = "russel_md"
                    campusName02 = "cont_md"
                    tit_01 = "개강일"
                    txt_01 = "1/2(화) 개강"
                    tit_02 = "접수 현황"
                    txt_02 = "전반 마감 [대기자 접수 마감]"
                    graph_con = "not-graph-con"
                    regular_url ="https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1480"
                    endText = "전반 마감<br>[대기자 접수 마감]"

    Case "CD0250": txtCampus = "러셀 부천"   '부천
                    campusName = "russel_bc"
                    campusName02 = "cont_bc"
                    tit_01 = "개강일"
                    txt_01 = "2차 개강 : 2/19(월)"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 접수"
                    tit_03 = "입학 문의"
                    txt_03 = "<a href='https://pf.kakao.com/_sFgGxj' class='bt-gray-s'>온라인 상담</a> <br> <span class='comment'>전화 상담 032.2651.1010</span>"
                    graph_con = "not-graph-con"
                    regular_url ="https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1481"
                    special_txt = "12월 특강 단과 시간표 바로가기"
                    special_url = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1512"

	Case "CD0244": txtCampus = "러셀 분당"   '분당
                    campusName = "russel_bd"
                    campusName02 = "cont_bd"
                    tit_01 = "개강일"
                    txt_01 = "2024년 1월 2일(화)"
                    tit_02 = "접수 기간"
                    txt_02 = "11/20(월)~1/31(수)"
                    txt_02_1 = "11/20(월)~1/31(수)<br>*모집요강 지원자격 해당자 순 접수"
                    tit_03 = "접수 방법"
                    txt_03 = "온라인 원서접수"
                    graph_con = "not-graph-con"
                    regular_url ="https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1482"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelbd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163';"

	Case "CD0246": txtCampus = "러셀 센텀"   '센텀
                    campusName = "russel_ct"
                    campusName02 = "cont_ct"
                    tit_01 = "개강일"
                    txt_01 = "12월 26일(화)부터 순차 개강"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 또는 온라인 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    graph_con = "not-graph-con"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelct.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163';"
                    regular_url ="https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1487"
                    regular_txt = "2월 정규&middot;특강 단과 시간표 바로가기"

    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
                    campusName02 = "cont_yt"
                    tit_01 = "개강일"
                    txt_01 = "1차 개강 : 2/1(목) <br> 2차 개강 : 2/19(월)"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 접수"
                    graph_con = "not-graph-con"
                    regular_url ="https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1483"

    Case "CD0257": txtCampus = "러셀 중계"   '중계
                    campusName = "russel_jg"
                    campusName02 = "cont_jg"
                    tit_01 = "개강일"
                    txt_01 = "1차 1/1(월), 2차 1/15(월)"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 접수"
                    graph_con = "not-graph-con"
                    regular_url ="https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1484"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russeljg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163';"

	Case "CD0248": txtCampus = "러셀 평촌"   '평촌
                    campusName = "russel_pc"
                    campusName02 = "cont_pc"
                    tit_01 = "개강일"
                    txt_01 = "2월 2차 : 2/17(토) 개강"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 접수"
                    graph_con = "not-graph-con"
                    regular_url ="https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1485"

	Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
                    campusName = "core_gj"
                    campusName02 = "cont_gj"
                    tit_01 = "개강일"
                    txt_01 = "1월 1일(월)"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 또는 온라인 접수"
                    graph_con = "not-graph-con"
                    regular_url ="https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1488"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coregj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163';"

	Case "CD0341": txtCampus = "러셀CORE 대전"   '코어대전
                    campusName = "core_dj"
                    campusName02 = "cont_dj"
                    tit_01 = "개강일"
                    txt_01 = "2024년 1월 1일"
                    tit_02 = "접수 방법"
                    txt_02 = "11월 말 현장 또는 온라인 접수"
                    graph_con = "not-graph-con"
                    regular_url ="https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1489"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163';"

    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "cont_dg"
                    tit_01 = "개강일"
                    txt_01 = "1월 1일(월) 개강"
                    tit_02 = "접수 방법"
                    txt_02 = "온라인 접수"
                    graph_con = "graph-con"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163';"
                    regular_url ="https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1486"
                    endText = "전석 마감"

    Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "cont_us"
                    tit_01 = "개강일"
                    txt_01 = "2024년 1월 개강"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 또는 온라인 접수"
                    graph_con = "graph-con"
                    regular_url ="https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=1510"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163';"

    Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "cont_wj"
                    tit_01 = "개강일"
                    txt_01 = "1월 2일(화) 개강"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 또는 온라인 접수"
                    graph_con = "graph-con"
                    regular_url ="https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1490"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corewj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163';"

    Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "cont_jj"
                    tit_01 = "개강일"
                    txt_01 = "1월 2일(화) 개강"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 또는 온라인 접수"
                    graph_con = "graph-con"
                    regular_url ="https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1491"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corejj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163';"

    Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "cont_cw"
                    tit_01 = "접수현황"
                    txt_01 = "현재 모집 중"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 또는 온라인 접수"
                    graph_con = "graph-con"
                    regular_txt = "2월 정규&middot;특강 단과 시간표 바로가기"
                    regular_url ="https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1492"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corecw.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163';"


    Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "cont_cj"
                    tit_01 = "개강일"
                    txt_01 = "2월 순차 개강"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 또는 온라인 접수"
                    graph_con = "graph-con"
                    regular_txt = "2월 정규&middot;특강 단과 시간표 바로가기"
                    regular_url ="https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1493"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corecj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163';"

End Select
%>




<div class="visual-wrap">

    <!-- 학원 문자 수신 알리미 -->
    <!-- <a href="javascript:void(0)" class="top-banner" onclick="fncAlarmPop()"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a> -->
    <!-- //학원 문자 수신 알리미 -->


    <div class="visual-area <%=campusName%>">
        <div class="scene03">
            <div class="fadeIn">
                <div class="bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/scene03_bg.png" alt="" /></div>
                <div class="inner">
                    <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/scene03_stit.png" alt="단과 수업과 의무자습을 한방에!" /></p>
                    <h1 class="v-tit-wrap">
                        <p class="<%=campusName%>"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first/scene03_tit01.png" alt="2025 러셀" /></p>
                        <p class="v-tit01 animate__bounceInRight"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/scene03_tit02.png" alt="재수생" /></p>
                        <% If campus_code = "CD0248" Then '평촌 %>
                        <p class="v-tit02 animate__bounceInLeft"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first/scene03_tit03.png" alt="우선선발반" /></p>
                        <% Else %>
                        <p class="v-tit02 animate__bounceInLeft"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/scene03_tit03.png" alt="우선선발반" /></p>
                        <% End If %>
                    </h1>
                    <% If campus_code = "CD0257" Then '중계 %>
                    <p class="v-txt"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first/scene03_stit02.png" alt="안주할 것인가, 도전할 것인가 한발 더 빠른 시작으로 수능 목표 성적과 대학 합격을  쟁취하라!" /></p>
                    <% Else %>
                    <p class="v-txt"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/scene03_stit02.png" alt="안주할 것인가, 도전할 것인가 한발 더 빠른 시작으로 최상위권 대입성공을 쟁취하라!" /></p>
                    <% End If %>

                    <div class="v-info">
                        <div>
                            <% If campus_code <> "CD0346" Then '청주 제외 %>
                            <dl>
                                <dt><%=tit_01%></dt>
                                <dd><%=txt_01%></dd>
                            </dl>
                            <% End If %>
                            <% If campus_code = "CD0249" Then '영통 %>
                            <dl>
                                <dt><%=tit_02%></dt>
                                <dd><%=txt_02%></dd><br>
                            </dl>
                            <span class='comment' style='font-size: 1.5rem;color: #fff;width: 117%;'>※ 모집요강 지원자격 해당자 순 접수</span>
                            <% Else %>
                            <dl>
                                <dt><%=tit_02%></dt>
                                <dd><%=txt_02%></dd>
                            </dl>
                            <% End If %>
                            <% If campus_code = "CD0247" Then '강남 %>
                            <dl>
                                <dt><%=tit_03%></dt>
                                <dd><%=txt_03%></dd>
                            </dl>
                            <% End If %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="scene02">
            <div class="fadeIn">
                <div class="bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/scene02_bg.jpg" alt="" /></div>
                <div class="inner">
                    <div class="l-ribbon slide-out-fwd-left"><img class="" src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/scene02_left_ribbon.png" alt="" /></div>
                    <div class="r-ribbon slide-out-fwd-right"><img class="" src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/scene02_right_ribbon.png" alt="" /></div>
                    <div class="scale-in-center">
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/scene02_txt01.png" alt="한발 더 빠른 시작으로" /></p>
                        <% If campus_code = "CD0257" Then '중계 %>
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first/scene02_txt02.png" alt="수능 목표 성적과 대학 합격을 쟁취하라!" /></p>
                        <% Else %>
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/scene02_txt02.png" alt="최상위권 대입성공을 쟁취하라!" /></p>
                        <% End If %>
    
                    </div>
                </div>
            </div>
        </div>
        <div class="scene01">
            <div class="bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/scene01_bg.jpg" alt="" /></div>
            <div class="inner">
                <p class="l-tit"><img class="slide-in-blurred-top delay" src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/scene01_left_text.png" alt="안주할 것인가," /></p>
                <p class="r-tit"><img class="slide-in-blurred-top delay" src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/scene01_right_text.png" alt="도전할 것인가" /></p>
            </div>
        </div>
	</div>    
</div>