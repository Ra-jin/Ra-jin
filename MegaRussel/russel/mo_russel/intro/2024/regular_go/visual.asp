<%
txtCampus = "러셀"
campusName = "intro"
campusCom = "russel_com"

tit_01 = "개강일"
txt_01 = "매월 순차적 개강"

tit_02 = "접수 방법"
txt_02 = "현장 또는 온라인 접수"
tit_03 = "모집 대상"
txt_03 = "고3 &middot; 고2 &middot; 고1"

menuTab01 = "장학혜택"
menuTab02 = "최상위권 집결,"

apply_txt = "원서접수 바로가기"
apply_url = "javascript:alert('추후 오픈 예정입니다.');"

regular_url = "/intro/danka/2024/05/go3.asp"
danka_url = "alert('추후 오픈 예정입니다.')"

mjinfo_tit = ""

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                campusName = "russel_gn"
                campusName02 = "cont_gn"
                txt_01 = "매월 1일 또는 매주 월/목 입학"
                txt_02 = "현장 또는 온라인 접수 <br> <span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                tit_03 = "모집 대상"
                txt_03 = "고2 &middot; 고1"
                tel = "02-6954-1010"
                mjinfo_tit = "재학생 최상위권반"
                regular_url = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1478"
                apply_url = "https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168"

    Case "CD0001": txtCampus = "러셀 대치"  '대치
                campusName = "russel"
                campusName02 = "cont_dc"
                tel = "02-2138-1010"
                txt_01 = "모집요강 지원자격 <br> 해당자순 입학(매주 월/수/금)"
                tit_02 = "접수 현황"
                txt_02 = "학원으로 문의(02-2138-1010)"
                tit_03 = "모집 대상"
                txt_03 = "고3"
                regular_url = "https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1479"
                apply_url = "https://russeldc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168"
                endText = "전반마감<br>대기자 접수중"
                apply_txt = "원서접수 바로가기"

    Case "CD0245": txtCampus = "러셀 목동"  '목동
                campusName = "russel_md"
                campusName02 = "cont_md"
                tel = "02-6932-1010"
                tit_01 = "접수 현황"
                txt_01 = "현재 모집 중 (마감 임박)"
                tit_02 = "접수 방법"
                txt_02 = "온라인 원서 접수"
                txt_03 = "고3"
                mjinfo_tit = "파이널 재학생 정규반"
                regular_url = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1480"
                apply_url = "https://russelmd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168"
                apply_txt = "온라인 원서접수"
                endText = "마감 임박"
                
                
    Case "CD0250": txtCampus = "러셀 부천"  '부천
                campusName = "russel_bc"
                campusName02 = "cont_bc"
                tel = "032-265-1010"
                txt_01 = "매월 초 순차 개강"
                txt_02 = "현장 접수 <br> <span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                mjinfo_tit = "고3 정규반"
                regular_url = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1481"

    Case "CD0244": txtCampus = "러셀 분당"  '분당
                campusName = "russel_bd"
                campusName02 = "cont_bd"
                endText = "전석 마감,<br>대기자 접수 中"
                txt_02 = "전석마감/대기 접수"
                tel = "031-629-1010"
                menuTab01 = "지원혜택"
                mjinfo_tit = "재학생(고3) 정규반"
                regular_url = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1482"
                apply_url = "https://russelbd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168"
                apply_txt = "대기 접수 바로가기"
                
    Case "CD0246": txtCampus = "러셀 센텀"  '센텀
                campusName = "russel_ct"
                campusName02 = "cont_ct"
                tel = "051-715-1010"
                txt_01 = "3월 1일(금) 순차 개강"
                txt_02 = "현장 또는 온라인 접수 <br> <span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                regular_url = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1487"
    
    Case "CD0249": txtCampus = "러셀 영통"  '영통
                campusName = "russel_yt"
                campusName02 = "cont_yt"
                tel = "031-251-1010"
                txt_01 = "매월 초 순차 개강"
                txt_02 = "현장 접수 <br> <span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                regular_url = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1483"

    Case "CD0257": txtCampus = "러셀 중계"  '중계
                campusName = "russel_jg"
                campusName02 = "cont_jg"
                tel = "02-6316-1010"
                menuTab01 = "지원혜택"
                menuTab02 = "성적 향상과 <br>대학합격을 위한"
                txt_01 = "매월 초 개강"
                txt_02 = "현장 접수 <br> <span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                txt_03 = "고3"
                regular_url = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1484"

    Case "CD0248": txtCampus = "러셀 평촌"  '평촌
                campusName = "russel_pc"
                campusName02 = "cont_pc"
                tel = "031-341-6500"
                txt_01 = "매월 초 순차적 개강"
                txt_02 = "현장/유선 접수 <br> <span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                regular_url = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1485"
                
    Case "CD0342": txtCampus = "러셀 대구"  '대구
                campusName = "russel_dg"
                campusName02 = "cont_dg"
                campusCom = "russel_com"
                tel = "053-291-1010"
                txt_01 = "10월 초 순차 개강"
                txt_02 = "온라인 접수 <br> <span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                txt_03 = "고1&middot;고2&middot;고3"
                regular_url = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1486"
                endText = "고3HS 마감임박<br>고2전반 마감임박"

    Case "CD0349": txtCampus = "러셀 울산"  '울산
                campusName = "russel_us"
                campusName02 = "cont_us"
                campusCom = "russel_com"
                txt_01 = "12월 순차 개강"
                txt_02 = "현장 또는 온라인 접수 <br> <span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                tel = "052-913-1010"
                regular_url = "https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=1510"
                apply_url = "https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168"

    Case "CD0340": txtCampus = "러셀CORE 광주"  '광주
                campusName = "core_gj"
                campusName02 = "cont_gj"
                tel = "062-462-1010"
                tit_01 = "접수 현황"
                txt_01 = "현재 모집 중 [마감 임박]"
                txt_02 = "현장 또는 온라인 접수 <br> <span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"

                txt_03 = "고1&middot;고2&middot;고3"
                regular_url = "https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1488"
                apply_url = "https://coregj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164"

    Case "CD0341": txtCampus = "러셀CORE 대전"  '대전
                campusName = "core_dj"
                campusName02 = "cont_dj"
                tel = "042-381-2020"
                txt_01 = "매월 초 순차 개강"
                txt_02 = "현장 또는 온라인 접수 <br> <span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                txt_03 = "고3 &middot; 고2"
                regular_url = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1489"
                apply_url = "https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168"
                endText = "남학생 전석마감<br>여학생 마감임박"

    Case "CD0343": txtCampus = "러셀CORE 원주"  '원주
                campusName = "core_wj"
                campusName02 = "cont_wj"
                campusCom = "russel_com"
                tel = "033-901-2020"
                txt_01 = "매월 초 순차 개강"
                txt_02 = "현장 또는 온라인 접수 <br> <span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                txt_03 = "고2 &middot; 고1"
                regular_url = "https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1490"
                apply_url = "https://corewj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168"

    Case "CD0344": txtCampus = "러셀CORE 전주"  '전주
                campusName = "core_jj"
                campusName02 = "cont_jj"
                campusCom = "russel_com"
                tel = "063-905-3030"
                txt_01 = "매월 초 순차 개강"
                txt_02 = "현장 또는 온라인 접수 <br> <span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"                               
                regular_url = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1491"
                apply_url = "https://corejj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168"

    Case "CD0345": txtCampus = "러셀CORE 창원"  '창원
                campusName = "core_cw"
                campusName02 = "cont_cw"
                campusCom = "russel_com"
                tel = "055-605-1010"
                txt_01 = "매월 초 순차 개강"
                txt_02 = "현장 또는 온라인 접수 <br> <span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"      
                regular_url = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1492"
                apply_url = "https://corecw.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168"

    Case "CD0346": txtCampus = "러셀CORE 청주"  '청주
                campusName = "core_cj"
                campusName02 = "cont_cj"
                campusCom = "russel_com"
                tel = "043-908-1010"
                txt_01 = "매월 초 개강"
                txt_02 = "현장 또는 온라인 접수 <br> <span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                txt_03 = "고2 &middot; 고1"
                regular_url = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1493"
                apply_url = "https://corecj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168"
                endText = "전석 마감 <br> 대기자 접수 중"

End Select
%>

<div class="visual-wrap <%=campusName%>">
    <div class="bg">
        <% If campus_code = "CD0247" or campus_code = "CD0244" Then '강남/분당 %>
        <img src="<%=Application("img_path_russel")%>/m_russel/russel_gn/2024/regular_go/visual_bg.png" alt="" />
        <% ElseIf campus_code = "CD0245" Then '목동 %>
        <img src="<%=Application("img_path_russel")%>/m_russel/russel_md/2024/regular_go/visual_bg.png" alt="" />
        <% Else %>
        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/visual_bg.png" alt="" />
        <% End If %> 
    </div>
    <div class="bg-fade bg-fade01"></div>
    <div class="bg-fade bg-fade02"></div>
    <div class="bg-fade bg-fade03"></div>
    
    <div class="visual">
        <div class="v-content">           
            <% If campus_code = "CD0247" or campus_code = "CD0244" or campus_code = "CD0257" or campus_code = "CD0250" or campus_code = "CD0245" Then '강남/분당/중계/부천/목동 %>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go/v-title.png" alt="2025 바른공부 자습전용관 재학생 정규반" /></p>
            <% Else %>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/v-title.png" alt="2025 바른공부 자습전용관 재학생 정규반" /></p>
            <% End If %> 
            <% If isCore = 1 Then '코어 일경우 %>
            <p>재학생을 위한 관리는 달라야 합니다.<br>
                <strong>최상위권이 집결하는 <%=txtCampus%></strong>에서 <br> 대입성공을 시작하세요.
            </p>
            <% ElseIf campus_code = "CD0257" Then '중계 %>
            <p>재학생을 위한 관리는 달라야 합니다.<br>
                <strong>대입 레벨이 상승하는  <%=txtCampus%></strong>에서 대입성공을 시작하세요.
            </p>

            <% Else %>
            <p>재학생을 위한 관리는 달라야 합니다.<br>
                <span><strong>최상위권이 집결하는 <%=txtCampus%></strong>에서 대입성공을 시작하세요.</span>
            </p>
            <% End If %>         
            <div class="info-box">
                <% If campus_code <> "CD0246" and campus_code <> "CD0244" Then '센텀/분당 제외 %>
                <dl>
                    <dt><%=tit_01%></dt>
                    <dd><%=txt_01%></dd>
                </dl>
                <% End If %> 
                <dl>
                    <dt><%=tit_02%></dt>
                    <dd><%=txt_02%></dd>
                </dl>

                <% If campus_code = "INTRO" Then '인트로 %>
                <p>* 모집과 관련된 자세한 내용은<br>&nbsp;&nbsp;학원별 페이지에서 <br>&nbsp;&nbsp;확인하실 수 있습니다.</p>
                <% ElseIf campus_code = "CD0244" Then '분당 %>
                <p>
                    *모집요강 지원자격 해당자 순 접수 <br>
                    *현재 반별 마감 현황 확인하기 <br>
                    <a href="https://mrusselbd.megastudy.net/board/notice_view.asp?code=30918" class="bt-gray-s mt5" style="z-index: 2;">바로가기</a>
                </p>
                <% End If %>     
            </div>
        </div>
    </div>
</div>