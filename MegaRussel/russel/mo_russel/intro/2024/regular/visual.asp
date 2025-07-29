<%
txtCampus = "러셀"
campusName = "intro"
campusCom = "russel_com"

tit_01 = "개강일"
txt_01 = "매월 순차 개강"

tit_02 = "접수 방법"
txt_02 = "현장 또는 온라인 접수"

menuTab02 = "최상위권 집결,"

apply_txt = "원서접수 바로가기"
apply_url = "alert('추후 오픈 예정입니다.')" 

regular_url = "/intro/danka/2024/07/go3.asp"
danka_url = "/intro/danka/2024/08/am.asp"
danka_txt = "AM단과"

bt_txt = "목표하는 최상위권 대입성공을<br>쟁취할 수 있습니다."
apply_alert = "원서접수는 PC 페이지에서 이용 가능합니다."

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    
    Case "CD0247": txtCampus = "러셀 강남"  '강남
                campusName = "russel_gn"
                campusName02 = "cont_gn"
                txt_01 = "매월 1일 또는 <br> 매주 월/목 중 입학 가능"
                txt_02 = "온라인 접수 <br> <span class='comment' style='font-size: 1.3rem;'>※ 모집요강 지원자격 <br>&nbsp;&nbsp;&nbsp;&nbsp;해당자 순 접수</span>"
                txt_02_02 = "온라인 접수 <br> <span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                tel = "02-6954-1010"
                regular_url = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1626"
                apply_url = "https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164"
                apply_txt = "온라인 원서접수"
                danka_url = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1679"
                danka_txt = "AM 단과"

    Case "CD0001": txtCampus = "러셀 대치"  '대치
                campusName = "russel"
                campusName02 = "cont_dc"
                tel = "02-2138-1010"
                txt_01 = "모집요강 지원자격 <br> 해당자순 입학(매주 월/수/금)"
                txt_02 = "학원으로 문의(02-2138-1010)"
                txt_02_02 = "학원으로 문의(02-2138-1010)"
                regular_url = "https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1699"
                apply_url = "https://russeldc.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164"
                danka_url = "https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1767"
                apply_txt = "원서접수 바로가기"
                endText = "전반마감 <br>대기자 접수 중"
                apply_alert = "원서접수는 PC 페이지에서 이용 가능합니다."

    Case "CD0245": txtCampus = "러셀 목동"  '목동
                campusName = "russel_md"
                campusName02 = "cont_md"
                tel = "02-6932-1010"
                tit_01 = "접수 현황"
                txt_01 = "전석 마감 (대기자 접수 중)"
                txt_02 = "온라인 대기자 접수"
                txt_02_02 = "온라인 대기자 접수"
                regular_url = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1700"
                apply_url = "https://russelmd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164"
                danka_url = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1768"
                apply_txt = "대기자 접수 바로가기"
                endText = "전석 마감<br>(대기자 접수 중)"
                apply_alert = "대기자 접수는 PC 페이지에서 이용 가능합니다."
                
    Case "CD0250": txtCampus = "러셀 부천"  '부천
                campusName = "russel_bc"
                campusName02 = "cont_bc"
                tel = "032-265-1010"
                txt_01 = "매월 초 순차 개강"
                txt_02 = "현장 접수ㅣ<br>모집요강 지원자격 해당자 순 접수"
                txt_02_02 = "현장 접수ㅣ모집요강 지원자격 해당자 순 접수"
                tit_03 = "입학문의"
                txt_03 = "전화 상담 032.265.1010<br>온라인 상담<a href='https://pf.kakao.com/_sFgGxj' class='bt-gray-s ml10'>바로가기</a>"
                regular_url = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1629"
                danka_url = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1682"

    Case "CD0244": txtCampus = "러셀 분당"  '분당
                campusName = "russel_bd"
                campusName02 = "cont_bd"
                txt_02 = "온라인 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 <br>&nbsp;&nbsp;&nbsp;&nbsp;해당자 순 접수"
                txt_02_02 = "온라인 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 해당자 순 접수</span>"
                tel = "031-629-1010"
                regular_url = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1702"
                apply_txt = "원서접수 바로가기"
                apply_alert = "원서접수는 PC 페이지에서 이용 가능합니다."
                apply_url = "https://russelbd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164"
                danka_url = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1770"
                
    Case "CD0246": txtCampus = "러셀 센텀"  '센텀
                campusName = "russel_ct"
                campusName02 = "cont_ct"
                tel = "051-715-1010"
                txt_01 = "3월 1일 (금) 개강"
                txt_02 = "현장 또는 온라인 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 <br>&nbsp;&nbsp;&nbsp;&nbsp;해당자 순 접수</span>"
                txt_02_02 = "현장 또는 온라인 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 해당자 순 접수</span>"
                regular_url = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1635"
                apply_url = "https://russelct.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164"
                danka_url = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1688"
    
    Case "CD0249": txtCampus = "러셀 영통"  '영통
                campusName = "russel_yt"
                campusName02 = "cont_yt"
                tel = "031-251-1010"
                txt_01 = "매월 초 순차 개강"
                txt_02 = "현장 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 <br>&nbsp;&nbsp;&nbsp;&nbsp;해당자 순 접수</span>"
                txt_02_02= "현장 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 해당자 순 접수</span>"
                regular_url = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1631"
                danka_url = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1684"

    Case "CD0257": txtCampus = "러셀 중계"  '중계
                campusName = "russel_jg"
                campusName02 = "cont_jg"
                tel = "02-6316-1010"
                menuTab02 = "수능 목표 성적과 <br>대학합격을 위한"
                txt_01 = "매월 초 개강"
                txt_02 = "현장 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 <br>&nbsp;&nbsp;&nbsp;&nbsp;해당자 순 접수</span>"
                txt_02_02 = "현장 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 해당자 순 접수</span>"
                regular_url = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1632"
                danka_url = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1685"
                bt_txt = "목표 대학 합격의 기쁨을<br>쟁취할 수 있습니다."

    Case "CD0248": txtCampus = "러셀 평촌"  '평촌
                campusName = "russel_pc"
                campusName02 = "cont_pc"
                tel = "031-341-6500"
                txt_01 = "7월 1일(월)"
                txt_02 = "현장 및 유선 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 <br>&nbsp;&nbsp;&nbsp;&nbsp;해당자 순 접수</span>"
                txt_02_02 = "현장 및 유선 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 해당자 순 접수</span>"
                regular_url = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1633"
                danka_url = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1686"
                
    Case "CD0342": txtCampus = "러셀 대구"  '대구
                campusName = "russel_dg"
                campusName02 = "cont_dg"
                campusCom = "russel_com"
                txt_01 = "10월 초 순차 개강"
                tel = "053-291-1010"
                txt_02 = "온라인 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 <br>&nbsp;&nbsp;&nbsp;&nbsp;해당자 순 접수</span>"
                txt_02_02 = "온라인 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 해당자 순 접수</span>"
                regular_url = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1706"
                danka_url = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1774"
                apply_url = "https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164"
                endText = "연고대/블루반<br>마감(대기접수中)"

    Case "CD0349": txtCampus = "러셀 울산"  '울산
                campusName = "russel_us"
                campusName02 = "cont_us"
                campusCom = "russel_com"
                txt_01 = "10월 순차 개강"
                txt_02 = "현장 또는 온라인 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 <br>&nbsp;&nbsp;&nbsp;&nbsp;해당자 순 접수</span>"
                txt_02_02 = "현장 또는 온라인 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 해당자 순 접수</span>"
                tel = "052-913-1010"
                regular_url = "https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=1708"
                danka_url = "https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=1776"
                apply_url = "https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164"

    Case "CD0340": txtCampus = "러셀CORE 광주"  '광주
                campusName = "core_gj"
                campusName02 = "cont_gj"
                tel = "062-462-1010"
                tit_01 = "접수 현황"
                txt_01 = "현재 모집 중 [마감 임박]"
                txt_02 = "현장 또는 온라인 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 <br>&nbsp;&nbsp;&nbsp;&nbsp;해당자 순 접수</span>"
                txt_02_02 = "현장 또는 온라인 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 해당자 순 접수</span>"
                regular_url = "https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1709"
                danka_url = "https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1777"
                apply_txt = "온라인 원서접수"
                apply_url = "https://coregj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164"

    Case "CD0341": txtCampus = "러셀CORE 대전"  '대전
                campusName = "core_dj"
                campusName02 = "cont_dj"
                tel = "042-381-2020"
                txt_01 = "매월 초 순차 개강"
                txt_02 = "현장 또는 온라인 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 <br>&nbsp;&nbsp;&nbsp;&nbsp;해당자 순 접수</span>"
                txt_02_02 = "현장 또는 온라인 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 해당자 순 접수</span>"
                regular_url = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1638"
                danka_url = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1691"
                apply_url = "https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164"

    Case "CD0343": txtCampus = "러셀CORE 원주"  '원주
                campusName = "core_wj"
                campusName02 = "cont_wj"
                campusCom = "russel_com"
                tel = "033-901-2020"
                txt_01 = "매월 초 순차 개강"
                txt_02 = "현장 또는 온라인 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 <br>&nbsp;&nbsp;&nbsp;&nbsp;해당자 순 접수</span>"
                txt_02_02 = "현장 또는 온라인 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 해당자 순 접수</span>"
                regular_url = "https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1711"
                danka_url = "https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1779"
                apply_url = "https://corewj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164"

    Case "CD0344": txtCampus = "러셀CORE 전주"  '전주
                campusName = "core_jj"
                campusName02 = "cont_jj"
                campusCom = "russel_com"
                tel = "063-905-3030"
                txt_01 = "매월 초 순차 개강"
                txt_02 = "현장 또는 온라인 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 <br>&nbsp;&nbsp;&nbsp;&nbsp;해당자 순 접수</span>"
                txt_02_02 = "현장 또는 온라인 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 해당자 순 접수</span>"
                regular_url = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1712"
                danka_url = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1780"
                apply_url = "https://corejj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164"


    Case "CD0345": txtCampus = "러셀CORE 창원"  '창원
                campusName = "core_cw"
                campusName02 = "cont_cw"
                campusCom = "russel_com"
                tel = "055-605-1010"
                txt_01 = "매월 초 순차 개강"
                txt_02 = "현장 또는 온라인 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 <br>&nbsp;&nbsp;&nbsp;&nbsp;해당자 순 접수</span>"
                txt_02_02 = "현장 또는 온라인 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 해당자 순 접수</span>"
                regular_url = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1713"
                danka_url = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1781"
                apply_url = "https://corecw.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164"

    Case "CD0346": txtCampus = "러셀CORE 청주"  '청주
                campusName = "core_cj"
                campusName02 = "cont_cj"
                campusCom = "russel_com"
                tel = "043-908-1010"
                txt_01 = "매월 초 개강"
                txt_02 = "현장 또는 온라인 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 <br>&nbsp;&nbsp;&nbsp;&nbsp;해당자 순 접수</span>"
                txt_02_02 = "현장 또는 온라인 접수 <br> <span class='comment' style='font-size: 1.5rem;'>※ 모집요강 지원자격 해당자 순 접수</span>"
                regular_url = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1642"
                danka_url = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1695"
                apply_txt = "온라인 원서접수"
                apply_url = "https://corecj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164"

End Select
%>

<div class="visual-wrap <%=campusName%>">
    <div class="visual">
        <div class="bg-fade bg-fade01"></div>
        <div class="bg-fade bg-fade02"></div>
        <div class="bg-fade bg-fade03"></div>

        <div class="v-content">
            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/v-stit.png" alt="" /></p>
            <% If campus_code = "CD0249" OR campus_code = "CD0245" Then '영통/목동 %>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/v-tit.png" alt="" /></p>
            <% Else %>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/v-tit.png" alt="" /></p>
            <% End If %>
            <% If isCore = 1 Then '코어 일경우 %>
            <p><strong>최상위권이 집결하는 <%=txtCampus%></strong>에서<br> 경쟁하는 것이 <strong>대입성공의 경쟁력</strong>입니다.</p>
            <% ElseIf campus_code = "CD0257" Then '중계 %>
            <p><strong>대입 레벨이 상승하는 <%=txtCampus%></strong>에서 경쟁하는 것이<br><strong>대입성공의 경쟁력</strong>입니다.</p>
            <% Else %>
            <p><strong>최상위권이 집결하는 <%=txtCampus%></strong>에서 경쟁하는 것이<br><strong>대입성공의 경쟁력</strong>입니다.</p>
            <% End If %>
            <div class="info-box">
                <% If campus_code <> "CD0246" and campus_code <> "CD0244" Then '센텀 제외 %>     
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
                <p>* 모집과 관련된 자세한 내용은<br>학원별 페이지에서 확인하실 수 있습니다.</p>
                <% End If %>   
            </div>
        </div>
    </div>
</div>