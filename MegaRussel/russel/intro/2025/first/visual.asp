
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

tit01 = "개강"
txt01 = "2월 순차 개강"
tit02 = "접수"
txt02 = "현재 모집 중"


quick_tit = "2026 수능 대비 단과"
go3_stxt = "최상위권을 위한<br>탄탄한 커리큘럼"
go3_txt = "정규&middot;특강 단과"
go3_url = "https://russel.megastudy.net/intro/danka/2025/02/go3.asp"
pass_url = "https://russel.megastudy.net/perfect/2024/susi/index.asp"

food_txt = "급식(자체 식당)을"

success_sub = "* 전체 러셀학원 재수생 우선선발반 재원생 후기 중 일부 발췌"
success_txt = "러셀 대입성공 Story 더보기"
success_url = "/russel/entinfo/notice/2020/success/index.asp"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "t_gn"

                    txt01 = "12월 순차 개강"
                    tit02 = "운영 기간"
                    txt02 = "1차 : 2024년 12월 2일(월) ~ 2024년 12월 31일(화) <br> 2차 : 2025년 1월 2일(목) ~ 2025년 2월 13일(목)"
                    tit03 = "접수 방법"
                    <!-- txt03 = "온라인 접수<a class='bt-apply' href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'>원서접수 바로가기</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>" -->
                    txt03 = "온라인 접수<a class='bt-apply' href='https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179'>원서접수 바로가기</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"

                    go3_stxt = "단계별 연간 커리큘럼"
                    go3_txt = "2월 정규 단과"
                    go3_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1830"

                    go3_stxt02 = "경쟁자보다 빠른 시작"
                    go3_txt02 = "12월 단기 특강"
                    go3_url02 = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1514"

                    food_txt = "급식을"
                    success_sub = "* 러셀 강남 재원생 후기 중 일부 발췌"


    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
                    campusName02 = "t_dc"
                    txt01 = "1월 2일(목) 개강"
                    tit02 = "접수 기간"
                    txt02_before = "12월 초 접수 예정"
                    txt02 = "현재 모집 중"
                    tit03 = "접수 방법"
                    txt03_before = "온라인 접수<br><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    txt03 = "온라인 접수<a class='bt-apply' href='https://russeldc.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179'>원서접수 바로가기</a><br><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    go3_url = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1805"
                    food_txt = "급식을"

    Case "CD0245": txtCampus = "러셀 목동"  '목동
                    campusName = "russel_mokdong"
                    campusName02 = "t_md"

                    txt01 = "1/2(목) 개강"
                    tit02 = "접수 현황"
                    txt02 = "마감 (대기자 접수 중) <br> <p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p><a class='bt-apply' style='margin: 0;' href='https://russelmd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179'>대기자 접수 바로가기</a>"
                    tit03 = "접수 방법"
                    txt03 = "온라인 대기자 접수 후 추후 현장 등록"
                    go3_url = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1832"
                    food_txt = "급식(바자관 자리)을"
                    success_sub = "* 러셀 목동학원 재수생 우선선발반 및 N수 정규반 재원생 후기 중 일부 발췌"
                    success_txt = "러셀 목동 대입 결과"
                    success_url = "https://russelmd.megastudy.net/russel_mokdong/event/2024/interview/index.asp"
                    icoEnd = "마감 <br> (대기자 접수 중)"

    Case "CD0250": txtCampus = "러셀 부천"  '부천
                    campusName = "russel_bc"
                    campusName02 = "t_bc"
                    txt01 = "2/1(토) 개강"
                    tit02 = "접수 방법"
                    txt02 = "현장 접수 <br> <p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    tit03 = "입학 문의"
                    txt03 = "온라인 상담 <a class='bt-apply' href='https://pf.kakao.com/_sFgGxj'>바로가기</a> ㅣ 전화 상담 032.265.1010"
                    go3_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1833"
                    food_txt = "급식을"
                    success_sub = "* 러셀 부천학원 2023년 재원생 후기 중 일부 발췌"
                    success_txt = "러셀 부천 2024학년도 대입 합격 결과"
                    success_url = "https://russelbc.megastudy.net/russel/event/2024/interview/index.asp"

	Case "CD0244": txtCampus = "러셀 분당"  '분당
                    campusName = "russel_bundang"
                    campusName02 = "t_bd"
                    txt01 = "2025년 1월 2일 (목)"
                    tit02 = "모집"
                    txt02 = "현재 모집 中"
                    tit03 = "접수 방법"
                    txt03_before = "온라인 원서 접수<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`)'>온라인 원서 접수하기</a> <br> <p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    txt03 = "온라인 원서 접수<a class='bt-apply' href='https://russelbd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179'>온라인 원서 접수하기</a> <br> <p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    food_txt = "급식(자체 식당)을"
                    go3_url = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1834"

                    success_sub = "* 러셀 분당학원 N수재원생 후기 중 일부 발췌"
                    success_txt = "러셀 분당학원 명예의 전당(대입 결과) 확인하기"
                    success_url = "https://russelbd.megastudy.net/russel/event/2024/interview/index.asp"

	Case "CD0246": txtCampus = "러셀 센텀"  '센텀
                    campusName = "russel_ct"
                    campusName02 = "t_ct"
                    tit01 = "접수 기간"
                    txt01 = "현재 모집 중"
                    tit02 = "접수 방법"
                    txt02 = "현장 방문 접수<p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    food_txt = "급식을"
                    go3_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1839"

                    success_sub = "* 러셀 센텀학원 재원생 후기 중 일부 발췌"
                    success_txt = "러셀 센텀 명예의 전당"
                    success_url = "https://russelct.megastudy.net/russel/event/2024/interview/index.asp"

    Case "CD0249": txtCampus = "러셀 영통"  '영통
                    campusName = "russel_yt"
                    campusName02 = "t_yt"
                    txt01 = "2/1(토) 개강"
                    tit02 = "운영 기간"
                    txt02 = "12/30(월)~2/28(금)"
                    tit03 = "접수 방법"
                    txt03 = "현장 접수<p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    food_txt = "급식을"
                    go3_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1835"

                    success_sub = "* 러셀 영통학원 재수생 재원생 후기 중 일부 발췌"
                    success_txt = "2024학년도 러셀 영통 명예의 전당"
                    success_url = "https://russelyt.megastudy.net/russel/event/2024/interview/index.asp"

    Case "CD0257": txtCampus = "러셀 중계"  '중계
                    campusName = "russel_jg"
                    campusName02 = "t_jg"
                    txt01 = "2/1(토) 개강"
                    tit02 = "접수 방법"
                    txt02 = "현장 접수<p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    food_txt = "급식을"
                    go3_stxt = "수능 고득점을 위한<br>탄탄한 커리큘럼"
                    go3_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1836"

                    success_sub = "* 러셀 중계학원 2024년 재원생 후기 중 일부 발췌"
                    success_txt = "러셀 중계 2024학년도 대입 결과"
                    success_url = "https://russeljg.megastudy.net/russel/event/2024/interview/index.asp"


	Case "CD0248": txtCampus = "러셀 평촌"  '평촌
                    campusName = "russel_pc"
                    campusName02 = "t_pc"

                    txt01 = "2/1(토)"
                    tit02 = "접수 기간"
                    txt02 = "현재 접수 중<br> <p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    tit03 = "접수 방법"
                    txt03 = "현장 접수 및 유선 문의"
                    go3_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1837"
                    success_sub = "* 러셀 평촌학원 재원생 후기 중 일부 발췌"


	Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "t_dg"
                    txt01 = "2월 순차 개강"
                    tit02 = "접수 기간"
                    txt02 = "11월 20일(수) 시작"
                    tit03 = "접수 방법"
                    txt03_before = "온라인 접수<br><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    txt03 = "온라인 접수 <a class='bt-apply' href='https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179'>원서접수 바로가기</a><br><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    food_txt = "급식을"
                    go3_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1838"

                    success_sub = "* 러셀 대구학원 재원생 성적 향상 결과 중 일부 발췌"
                    success_txt = "2024학년도 대입 합격 결과"
                    success_url = "https://russeldg.megastudy.net/russel/event/2024/interview/index.asp"
                    icoEnd = "전반 마감<br>(대기 접수 중)"


	Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "t_us"
                    txt01 = "2월 순차 개강"
                    tit02 = "접수 기간"
                    txt02 = "현재 접수 중"
                    tit03 = "접수 방법"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179'>원서접수 바로가기</a> <br><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    food_txt = "자체 식당을"
                    go3_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1840"
                    success_sub = "* 전체 러셀학원 재수생 우선선발반 재원생 후기 중 일부 발췌"
                    success_txt = "러셀 대입성공 Story 더보기"
                    success_url = "https://russel.megastudy.net/russel/entinfo/notice/2020/success/index.asp"


	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"

                    txt01 = "2월 순차 개강"
                    tit02 = "접수 기간"
                    txt02 = "현재 접수 중 <br> <p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    tit03 = "접수 방법"
                    txt03 = "현장 또는 온라인 접수"

                    go3_url = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1841"

                    success_sub = "* 러셀CORE 광주학원 재수생 우선선발반 재원생 후기 중 일부 발췌"
                    success_txt = "러셀CORE 광주 명예의 전당 바로가기"
                    success_url = "https://coregj.megastudy.net/core_gj/event/2024/interview/index.asp"

	Case "CD0341": txtCampus = "러셀 대전"  '대전
                    campusName = "core_dj"
                    campusName02 = "t_dj"

                    txt01 = "매주 (월/수) 입학"
                    tit02 = "접수 기간"
                    txt02 = "현재 접수 중 <br> <p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    tit03 = "접수 방법"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179'>원서접수 바로가기</a>"

                    go3_url = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1842"

                    food_txt = "자체 식당을"

                    success_sub = "* 러셀 대전 재원생 후기 중 일부 발췌"
                    success_txt = "2024 대입 합격 결과 바로가기"
                    success_url = "https://coredj.megastudy.net/russel/event/2024/interview/index.asp"


	Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "t_wj"
                    txt01 = "1월 순차 개강"
                    tit02 = "접수 기간"
                    txt02 = "현재 접수 중 <br> <p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    tit03 = "접수 방법"
                    txt03 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://corewj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179'>원서접수 바로가기</a>"
                    food_txt = "자체 식당을"
                    go3_url = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1843"

                    success_sub = "* 러셀CORE 원주 재원생 후기 중 일부 발췌"
                    success_txt = "러셀CORE 원주 명예의 전당"
                    success_url = "https://corewj.megastudy.net/russel/event/2024/interview/index.asp"

	Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "t_jj"
                    tit01 = "접수 기간"
                    txt01 = "현재 접수 중"
                    tit02 = "접수 방법"
                    txt02 = "현장 또는 온라인 접수<a class='bt-apply' href='https://corejj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179'>온라인 원서 접수하기</a><br> <p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    food_txt = "자체 식당을"
                    go3_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1844"

                    success_sub = "* 러셀CORE 전주학원 재수생 우선선발반 재원생 후기 중 일부 발췌"
                    success_txt = "2024 대입 합격 결과"
                    success_url = "https://corejj.megastudy.net/russel/event/2024/interview/index.asp"


	Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "t_cw"
                    txt01 = "2월 순차 개강"
                    tit02 = "접수 기간"
                    txt02 = "현재 모집 중"
                    tit03 = "접수 방법"
                    txt03 = "온라인 접수<a class='bt-apply' href='https://corecw.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179'>온라인 원서 접수하기</a><br> <p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    food_txt = "자체 식당을"
                    go3_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1845"

                    success_sub = "* 러셀CORE 창원학원 N수 정규반 재원생 후기 중 일부 발췌"
                    success_txt = "러셀CORE 창원 2024 대입 합격 결과"
                    success_url = "https://corecw.megastudy.net/russel/event/2024/interview/index.asp"

	Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "t_cj"
                    txt01 = "[1차] 12월 1일(일) <br> [2차] 12월 30일(월)"
                    tit03 = "접수 기간"
                    txt03 = "현재 접수 중<br> <p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    tit02 = "접수 방법"
                    txt02 = "현장 또는 온라인 접수<a class='bt-apply' href='https://corecj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179'>원서 접수 바로가기</a>"
                    food_txt = "자체 식당을"
                    go3_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1846"

                    success_sub = "* 러셀CORE 청주 재원생 후기 중 일부 발췌"
                    success_txt = "러셀CORE 청주 2024 대입 합격 결과"
                    success_url = "https://corecj.megastudy.net/russel/event/2024/interview/index.asp"

End Select
%>

<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="inner">
            <div class="v-txt txt01"><img src="<%=Application("img_path_russel")%>/intro/2025/first/v_txt01.png" alt="단과 수업과 의무자습을 한방에!" /></div>
            <div class="v-txt txt02"><img src="<%=Application("img_path_russel")%>/intro/2025/first/v_txt02.png" alt="2026" /></div>
            <% If sCampusCode = "CD0249" Then '영통 %>
            <div class="v-txt txt03 slide-right"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/v_txt03.png" alt="재수생 우선선발반" /></div>
            <% Else %>
            <div class="v-txt txt03 slide-right"><img src="<%=Application("img_path_russel")%>/intro/2025/first/v_txt03.png" alt="재수생 우선선발반" /></div>
            <% End If %>
            <div class="v-txt txt04">
                <% If sCampusCode = "CD0257" Then '중계 %>
                <p>나의 경쟁력을 높이는 한발 빠른 시작, <br> <strong><%=txtCampus%>에서 목표 성적과 대학 합격을 위한 성공을 선점</strong>하세요!</p>
                <% Else %>
                <p>나의 경쟁력을 높이는 한발 빠른 시작, <br> <strong><%=txtCampus%>에서 최상위권 대입성공을 선점</strong>하세요!</p>
                <% End If %>
            </div>

            <div class="v-info">
                <div>
                    <% If sCampusCode <> "CD0346" Then '청주 제외 %>
                    <dl>
                        <dt><%=tit01%></dt>
                        <dd><%=txt01%></dd>
                    </dl>
                    <% End If %>
                    <% If sCampusCode <> "INTRO" and sCampusCode <> "CD0257" and sCampusCode <> "CD0246" and sCampusCode <> "CD0344" Then '인트로/중계/센텀/전주 제외 %>
                    <dl>
                        <dt><%=tit03%></dt>
                        <dd><%=txt03%></dd>
                    </dl>
                    <% End If %>
                </div>
                <div>
                    <dl>
                        <dt><%=tit02%></dt>
                        <dd><%=txt02%></dd>
                    </dl>
                    <% If sCampusCode = "INTRO" Then '인트로 %>
                    <p class="stxt">* 자세한 내용은 학원별 모집 요강 참조</p>
                    <% End If %>
                </div>
            </div>

            <div class="v-obj"><img src="<%=Application("img_path_russel")%>/intro/2025/first/obj_img.png" alt="" /></div>

            <!--마감딱지-->
            <% If sCampusCode = "CD0245" Then '목동 %>
            <div class="ico-end" style="top:690px;right:calc(35% - 450px);"><div><%=icoEnd%></div></div>
            <% ElseIf sCampusCode ="CD0342" Then '대구 %>
            <div class="ico-end" style="top:575px;right:calc(50% - 450px);"><div><%=icoEnd%></div></div>
            <% End If %>
            <!--//마감딱지-->
        </div>
	</div>

	<!-- quick 플로팅배너 -->
	<div class="quick">
        <!--학원 문자 수신 알리미 신청-->
        <% If sCampusCode = "INTRO" or sCampusCode = "CD0245" or sCampusCode = "CD0250" or sCampusCode = "CD0244" Then '인트로/목동/부천/분당 %>
        <a href="javascript:fncAlarmPop();"><img src="<%=Application("img_path_russel")%>/intro/2025/first/sns_banner.jpg" alt="학원 문자 수신 알리미 신청" /></a>
        <!--//학원 문자 수신 알리미 신청-->
        <% End If %>

        <p class="b-tit mt15"><%=quick_tit%></p>
        <% If sCampusCode = "CD0247" Then '강남 %>
        <a class="q-ban" href="<%=go3_url02%>">
            <span><%=go3_stxt02%></span>
            <strong><%=go3_txt02%></strong>
        </a>
        <% End If %>
        <a class="q-ban" href="<%=go3_url%>">
            <span><%=go3_stxt%></span>
            <strong><%=go3_txt%></strong>
        </a>

        <!--수능 모의체험-->
        <!-- <a class="mt15" href="/intro/2024/csat/experience.asp">
            <img src="<%=Application("img_path_russel")%>/intro/2025/first/exgosa_banner.png" alt="수능 모의체험" />
        </a> -->
        <!--//수능 모의체험-->
	</div>
	<!--// quick 플로팅배너 -->
</div>

<!-- fix-menu -->
<nav class="fix-menu-wrap">
    <div class="fix-menu">
        <div class="menu">
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <a class="on" href="javascript:void(0);">최상위권 집결, 러셀</a>
            <a href="javascript:void(0);">재수생 맞춤 시스템</a>
            <a href="javascript:void(0);">학원별 모집안내</a>
            <% Else %>
            <a class="on" href="javascript:void(0);">모집안내</a>
            <% If sCampusCode = "CD0257" Then '중계 %>
            <a href="javascript:void(0);">결과로 증명하는 러셀 중계</a>
            <% Else %>
            <a href="javascript:void(0);">최상위권 집결</a>
            <% End If %>
            <a href="javascript:void(0);">재수생 맞춤 시스템</a>
            <% End If %>
        </div>
    </div>
</nav>
<!-- //fix-menu -->
