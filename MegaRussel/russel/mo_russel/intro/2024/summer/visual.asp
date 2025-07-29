<%
txtCampus = "러셀"
campusName = "intro"

tit_01 = "모집 대상"
txt_01 = "고3&middot;고2&middot;고1"

tit_02 = "개강일"
txt_02 = "7월 순차적 개강"

tit_03 = "접수 방법"
txt_03 = "현장 또는 온라인 접수"

tab_txt01 = "모집요강 및<br>지원혜택"
tab_txt02 = "최상위권 집결"

comment = "* 모집과 관련된 자세한 내용은 학원별 페이지에서 확인하실 수 있습니다."

danka_summer_url = "/intro/danka/2024/07/summer.asp"
danka_regular_url = "/intro/danka/2024/07/go3.asp"

susi_url = "https://mrussel.megastudy.net/perfect/2024/susi/index.asp"
susi_txt = "2024학년도 대입 합격 결과"
chart_minute = "770분"

visual_txt = "최상위권 대입 결과"
bottom_txt = "최상위권 대입성공"

apply_txt = "원서접수 바로가기"
apply_url = "alert('추후 오픈 예정입니다.')"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로
                campusName = "intro"
                danka_am_url = "/intro/danka/2024/04/am.asp"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "cont_gn"
                    txt_01 = "고3&middot;고2"
                    tit_02 = "운영기간"
                    txt_02 = "7/20(토) ~ 8/18(일)"
                    txt_03 = "전반마감 | 대기자 접수중"
                    comment = ""
                    apply_url = "alert('대기자 원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166'"
                    danka_regular_url = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1626"
                    danka_summer_url = "https://mrusselgn.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=315"
                    danka_summer_url02 ="https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1610"
                    summer_btn = "고2 바로가기"
                    summer_btn02 = "고3&middot;N수 바로가기"
                    endText = "전반마감 <br> 대기자 접수중"
                    apply_txt = "대기자 원서접수 바로가기"


    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
                    campusName02 = "cont_dc"
                    txt_01 = "고3"
                    tit_02 = "운영기간"
                    txt_02 = "7/20(토) ~ 8/18(일)"
                    txt_03 = "전반마감"
                    comment = ""
                    tel = "02-2138-1010"
                    danka_regular_url = "https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1627"
                    danka_summer_url = "https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1611"
                    endText = "전반마감"

    Case "CD0245": txtCampus = "러셀 목동"   '목동
                    campusName = "russel_md"
                    campusName02 = "cont_md"
                    txt_01 = "고3"
                    tit_02 = "운영 기간"
                    txt_02 = "7/22(월) ~ 8/18(일)"
                    txt_03 = "온라인 전형 접수"
                    comment = "※ 모집요강 지원자격 해당자 순 접수"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelmd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166'"
                    tel = "02-6932-1010"
                    danka_regular_url = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1628"
                    danka_summer_url = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1612"
                    endText = "전석 마감<br>(전형별 대기자 연락 중)"

    Case "CD0250": txtCampus = "러셀 부천"   '부천
                    campusName = "russel_bc"
                    campusName02 = "cont_bc"
                    txt_01 = "고3&middot;고2&middot;고1 <br>※ 중3 학생은 종합반으로 진행"
                    txt_02 = "7/20(토) 개강 [4주]"
                    txt_03 = "사전예약 마감/본등록 진행 중"
                    tel = "032-265-1010"
                    apply_txt = "중3 종합반 바로가기"
                    apply_url = "location.href='https://mrusselbc.megastudy.net/russel_bc/2022/top_mid/index.asp'"
                    danka_regular_url = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1629"
                    danka_summer_url = "https://mrusselbc.megastudy.net/russel_bc/2022/top_mid/index.asp"
                    danka_summer_url03 = "https://mrusselbc.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=316"
                    danka_summer_url02 = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1613"
                    summer_btn = "중3 종합반 <br> 바로가기 "
                    summer_btn02 = "고3<br> 바로가기"
                    summer_btn03 = "고2&middot;고1 <br> 바로가기"

	Case "CD0244": txtCampus = "러셀 분당"   '분당
                    campusName = "russel_bd"
                    campusName02 = "cont_bd"
                    txt_01 = "고3&middot;고2"
                    tit_02 = "기간"
                    txt_02 = "7/20(토)~8/18(일)"
                    tit_03 = "접수 상태"
                    txt_03 = "마감, 대기자 접수 中"
                    comment = "※ 모집요강 지원자격 해당자 순 접수"
                    apply_txt = "대기 접수 바로가기"
                    apply_url = "alert('대기 접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelbd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166'"
                    tel = "031-629-1010"
                    danka_regular_url = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1630"
                    danka_summer_url = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1614"
                    endText = "전석 마감, <br> 대기자 접수 中"

	Case "CD0246": txtCampus = "러셀 센텀"   '센텀
                    campusName = "russel_ct"
                    campusName02 = "cont_ct"
                    txt_02 = "1차 개강 - 7/15(월) <br> 2차 개강 - 7/20(토)"
                    comment = "※ 모집요강 지원자격 해당자 순 접수"
                    txt_03 = "온라인 대기 접수"
                    tel = "051-715-1010"
                    apply_txt = "대기접수 바로가기"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166'"
                    danka_summer_url = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1618"
                    danka_regular_url = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1635"
                    endText = "전학년 마감<br>(대기 접수 중)"

    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
                    campusName02 = "cont_yt"
                    txt_02 = "7/20(토)"
                    txt_03 = "사전접수 마감"
                    comment = "※ 모집요강 지원자격 해당자 순 접수"
                    apply_txt = "온라인 대기 바로가기"
                    apply_url = "alert('4/22(월) 오후 2시부터 선착순 접수입니다. *팝업해제 필수*')"
                    tel = "031-251-1010"
                    danka_regular_url = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1631"
                    danka_summer_url = "https://mrusselyt.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=317"
                    endText = "사전접수전체마감<br><span style='color: #222;'>온라인대기접수중</span>"


    Case "CD0257": txtCampus = "러셀 중계"   '중계
                    campusName = "russel_jg"
                    campusName02 = "cont_jg"
                    txt_01 = "고1&middot;고2&middot;고3"
                    tit_02 = "기간"
                    txt_02 = "7/20(토)~8/18(일) [4주]"
                    txt_03 = "전학년 마감, 대기자 접수 中"
                    comment = "※ 모집요강 지원자격 해당자 순 접수 <br> ※ 학원 문의 (☎ 02)6316-1010)"
                    comment_02 = "<b>※ 모집요강 지원자격 해당자 순 접수"
                    apply_url = "alert('신규생 썸머스쿨 사전예약은 4/29(월) 14시부터 가능합니다.')"
                    tel = "02-6316-1010"
                    danka_summer_url = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1615"
                    danka_regular_url = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1632"
                    endText = "전학년 마감<br>대기자 접수 中"


	Case "CD0248": txtCampus = "러셀 평촌"   '평촌
                    campusName = "russel_pc"
                    campusName02 = "cont_pc"
                    txt_01 = "고3 &middot; 고2 &middot; 고1 &middot; 중3"
                    tit_02 = "운영 기간"
                    txt_02 = "7/19(금) ~ 8/18(일)"
                    txt_03 = "현장, 온라인 접수 마감<br>대기 접수도 마감되었습니다."
                    comment = "※ 모집요강 지원자격 해당자 순 접수"
                    tel = "031-341-6500"
                    tab_txt01 = "모집요강 및<br>장학혜택"
                    apply_txt = "사전예약/대기자 접수 바로가기"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelpc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166'"
                    danka_regular_url = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1633"
                    danka_summer_url = "https://mrusselpc.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=318"
                    danka_summer_url02 = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1616"
                    summer_btn = "고2&middot;고1 바로가기"
                    summer_btn02 = "고3 바로가기"
                    endText = "전학년 마감"
    
    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "cont_dg"
                    txt_01 = "고3&middot;고2"
                    tit_02 = "기간"
                    txt_02 = "7/20(토)~8/15(목)"
                    txt_03 = "온라인 접수"
                    comment = "※ 모집요강 지원자격 해당자 순 접수"
                    apply_url = "alert('4/30(화) 10시 부터 가능합니다.')"
                    tel = "053-291-1010"
                    danka_summer_url = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1617"
                    danka_regular_url = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1634"
                    endText = "고2마감(대기접수)<br>고3HS반 마감임박"

    Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "cont_us"
                    txt_01 = "고1&middot;고2&middot;고3"
                    txt_02 = "7월 순차 개강"
                    comment = "※ 모집요강 지원자격 해당자 순 접수"
                    tel = "052-913-1010"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166'"
                    danka_regular_url = "https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=1636"
                    danka_summer_url = "https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=1619"
                    endText = "고1(남), 고2,3<br>마감[대기접수중]" 

	Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
                    campusName = "core_gj"
                    campusName02 = "cont_gj"
                    txt_02 = "7월 20일 (토)"
                    txt_03 = "유선 및 방문 접수<br>062) 462-1010"
                    comment = ""
                    tel = "062-462-1010"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coregj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166'"
                    danka_regular_url = "https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1637"
                    danka_summer_url = "https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1620"
                    endText = "전석 마감<br> 대기 접수 중"

	Case "CD0341": txtCampus = "러셀CORE 대전"   '코어대전
                    campusName = "core_dj"
                    campusName02 = "cont_dj"
                    txt_01 = "고3&middot;고2"
                    txt_02 = "7/20(토) 개강"
                    txt_03 = "현재 모집 중 (현장 또는 온라인 접수)"
                    comment = "※ 모집요강 지원자격 해당자 순 접수"
                    tel = "042-381-2020"
                    tab_txt01 = "반수반 모집요강"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166'"
                    danka_regular_url = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1638"
                    danka_summer_url = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1621"
                    endText = "고3/고2 전석 마감<br>대기자 접수중"

    Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "cont_wj"
                    txt_02 = "7월 19일(금) 개강"
                    comment = "※ 모집요강 지원자격 해당자 순 접수"
                    tel = "033-901-2020"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corewj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166'"
                    danka_regular_url = "https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1639"
                    danka_summer_url = "https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1622"
                    endText = "전석 마감<br>대기자 접수 중"

    Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "cont_jj"
                    txt_02 = "7월 20일(토) 개강"
                    comment = "※ 모집요강 지원자격 해당자 순 접수"
                    tel = "063-905-3030"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corejj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166'"
                    danka_regular_url = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1640"
                    danka_summer_url = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1623"
                    endText = "전석 마감<br> 대기자 접수 중"

    Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "cont_cw"
                    txt_02 = "1차 개강 : 7/19(금) <br> 2차 개강 : 7/26(금)"
                    comment = "※ 모집요강 지원자격 해당자 순 접수"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corecw.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166'"
                    tel = "055-605-1010"
                    danka_regular_url = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1641"
                    danka_summer_url = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1624"
                    endText = "고2&middot;고1 마감임박"

    Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "cont_cj"
                    txt_02 = "7/20(토) 개강"
                    comment = "※ 모집요강 지원자격 해당자 순 접수"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corecj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166'"
                    tel = "043-908-1010"
                    danka_regular_url = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1642"
                    danka_summer_url = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1625"
                    endText = "고1~3 전석마감<br>대기자 접수 중"



End Select
%>

<div class="visual-wrap <%=campusName%>">

    <!-- 학원 문자 수신 알리미 -->
    <!-- <a href="javascript:void(0)" class="top-banner" onclick="fncAlarmPop()"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a> -->
    <!-- //학원 문자 수신 알리미 -->

    <div class="visual-area">
        <div class="bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/visual_bg.jpg" alt="" /></div>

        <div class="v-tit01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/v_tit01.png" alt="재학생 여름방학 맞춤 시스템" /></div>
        <div class="v-tit02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/v_tit02.png" alt="바른공부 자습전용관" /></div>
        <div class="v-tit03">
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/v_tit03.png" alt="2024 썸머스쿨" />
        </div>
        <div class="v-img01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/v_img01.png" alt="물방울" /></div>
        <div class="object">
            <div class="v-img02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/v_img02.png" alt="공" /></div>
            <div class="v-img03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/v_img03.png" alt="튜브" /></div>
        </div>
        
        <p class="v-txt">
            성공적인 여름방학을 위해 <br>
            <strong><% If campus_code = "CD0257" Then '중계 %>대학 레벨이 상승하는 <% Else %>최상위권이 집결하는 <% End If %><%=txtCampus%>에서 경쟁</strong>해야 합니다.
        </p>

        <div class="v-info">
            <div>
                <dl>
                    <dt><%=tit_01%></dt>
                    <dd><%=txt_01%></dd>
                </dl>
                <% If campus_code <> "CD0246" Then '센텀 제외 %>
                <dl>
                    <dt><%=tit_02%></dt>
                    <dd><%=txt_02%></dd>
                </dl>
                <% End If %>
                <% If campus_code = "INTRO" Then '인트로 %>
                <dl>
                    <dt><%=tit_03%></dt>
                    <dd><%=txt_03%></dd>
                </dl>
                <% End If %>
            </div>
            <% If campus_code = "CD0250" Then '부천 %>
            <% ElseIf campus_code = "CD0257" Then '중계 %>
            <p class="comment <%=campusName%>"><%=comment_02%></p>
            <% Else %>
            <p class="comment <%=campusName%>"><%=comment%></p>
            <% End If %>
        </div>
	</div>    
</div>