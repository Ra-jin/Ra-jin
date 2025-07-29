<%
txtCampus = "러셀"
campusName = "intro"

tit_01 = "개강일"
txt_01 = "4월 순차적 개강"

tit_02 = "접수 방법"
txt_02 = "현장 또는 온라인 접수<br><span class='comment'>* 모집과 관련된 자세한 내용은<br>학원별 페이지에서 확인하실 수 있습니다.</span>"

tab_txt01 = "모집요강 및<br>지원혜택"

susi_txt = "2024학년도 대입 합격 결과"
susi_url = "https://mrussel.megastudy.net/perfect/2024/susi/index.asp"

apply_txt = "원서접수 바로가기"
apply_url = "alert('추후 오픈 예정입니다.')"

visual_txt = "최상위권 대입 결과"
fix_txt02 = "최상위권 집결"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")

    Case "CD0250": txtCampus = "러셀 부천"   '부천
                    campusName = "russel_bc"
                    campusName02 = "cont_bc"
                    tit_01 = "개강일"
                    txt_01 = "매월 초 순차 개강"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 접수<br><span class='comment02'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    tit_03 = "입학문의"
                    txt_03 = "온라인 상담<a href='https://pf.kakao.com/_sFgGxj' class='bt-gray-s ml10'>바로가기</a><br>전화 상담 032.265.1010"

    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
                    campusName02 = "cont_yt"
                    tit_01 = "개강일"
                    txt_01 = "매월 초 순차 개강"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    tel = "031-251-1010"

    Case "CD0257": txtCampus = "러셀 중계"   '중계
                    campusName = "russel_jg"
                    campusName02 = "cont_jg"
                    tit_01 = "개강일"
                    txt_01 = "매월 초 개강"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    tel = "02-6316-1010"
                    visual_txt = "목표 대학 합격 결과"
                    fix_txt02 = "결과로 증명하는<br>러셀 중계"
                    susi_url = "https://mrusseljg.megastudy.net/board/notice_view.asp?code=29722"

	Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
                    campusName = "core_gj"
                    campusName02 = "cont_gj"
                    tit_01 = "접수 현황"
                    txt_01 = "현재 모집 중 [마감 임박]"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    tel = "062-462-1010"
                    susi_url = "javascript:alert('추후 오픈 예정입니다.');"
                    

    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "cont_dg"
                    tit_01 = "개강일"
                    txt_01 = "10월 초 순차 개강"
                    tit_02 = "접수 방법"
                    txt_02 = "온라인 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    tel = "053-291-1010"
                    susi_url = "https://mrusseldg.megastudy.net/russel/event/2024/interview/index.asp"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=170'"
                    endText ="연고대 마감<br>(대기접수中)"

    Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "cont_us"
                    tit_01 = "개강일"
                    txt_01 = "10월 7일(월)"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 또는 온라인 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    tel = "052-913-1010"

End Select
%>




<div class="visual-wrap">

    <!-- 학원 문자 수신 알리미 -->
    <!-- <a href="javascript:void(0)" class="top-banner" onclick="fncAlarmPop()"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a> -->
    <!-- //학원 문자 수신 알리미 -->


    <div class="visual-area <%=campusName%>">
        <div class="bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/visual_bg.jpg" alt="" /></div>
        <% If campus_code = "CD0257" Then '중계 %>
        <div class="v-tit01"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half_overall/v-tit01.png" alt="최상위권 이과전문관N/서연고 문과전문관" /></div>
        <% Else %>
        <div class="v-tit01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/v-tit01.png" alt="최상위권 이과전문관N" /></div>
        <% End if %>
        <div class="v-tit02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/v-tit02.png" alt="2025" /></div>
        <div class="v-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/v-img.png" alt="" /></div>
        <div class="v-tit03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/v-tit03.png" alt="재수종합반[반수]" /></div>
        
        <% If campus_code = "CD0250" Then '부천 %>
        <p class="v-txt">
            <strong><%=txtCampus%> 재수종합반</strong>에서 경쟁하는 것이<br>
            <strong>대입성공의 경쟁력</strong>입니다.
        </p>
        <% Else %>
        <p class="v-txt">
            <%=visual_txt%>가 증명하는 러셀 종합반 시스템 <br>
            <strong><%=txtCampus%> 재수종합반에서 <br>
            반수 성공에 도전하세요.</strong></p>
        <% End if %>
        <div class="v-info">
            <div>
                <dl>
                    <dt><%=tit_01%></dt>
                    <dd><%=txt_01%></dd>
                </dl>
                <dl>
                    <dt><%=tit_02%></dt>
                    <dd><%=txt_02%></dd>
                </dl>
                <% If campus_code = "CD0250" Then '부천 %>
                <dl>
                    <dt><%=tit_03%></dt>
                    <dd><%=txt_03%></dd>
                </dl>
                <% End if %>
            </div>
        </div>
	</div>    
</div>