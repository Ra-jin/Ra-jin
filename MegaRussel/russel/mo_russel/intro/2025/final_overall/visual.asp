<%
txtCampus = "러셀"
campusName = "intro"

tit01 = "모집 대상"
txt01 = ""
tit02 = "개강일"
txt02 = ""
tit03 = "접수 방법"
txt03 = "온라인 접수 <br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"

apply_txt = "원서접수 바로가기"
apply_url = "alert('추후 오픈 예정입니다.')"

tab_txt01 = "모집 요강 & 지원 혜택"
tab_txt02 = "파이널 종합반 프로그램"

danka_txt01 = "<strong>러셀 강남&middot;대치&middot;기숙</strong> 및<br><strong>메가스터디 인강</strong> 출강"
danka_txt02 = "종합반 전 과목<br><strong>현장 강의 진행</strong>"
danka_txt03 = "과목별 성취도에 맞춘<br><strong>수준별 맞춤 수업</strong>"
danka_txt04 = "<strong>1:1 맞춤 관리</strong> 및<br><strong>질의응답 직접 진행</strong>"

result_btn = "자세히 보기"
result_btn_url = "/perfect/2025/susi/index.asp"

tab_navi04 = "자체 식당<br>운영"
baja_txt = "급식(식당)"
baja_txt02 = "자체 식당"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")

    Case "CD0250": txtCampus = "러셀 부천"   '부천
                    campusName = "russel_bc"
                    campusName02 = "cont_bc"
                    txt01 = "N수"
                    txt02 = "매월 1일부터 순차적 개강"
                    baja_txt = "급식"

    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
                    campusName02 = "cont_yt"
                    txt01 = "N수"
                    txt02 = "9월 개강"
                    baja_txt = "급식"

    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "cont_dg"
                    txt01 = "N수"
                    txt02 = "9월 순차 개강"
                    baja_txt = "자체 식당"

    Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "cont_us"
                    txt01 = "N수"
                    txt02 = "9월 1일(월) 개강"
                    tab_txt01 = "모집 요강 & 장학 혜택"
                    danka_txt02 = "종합반 주요 과목<br><strong>현장 강의 진행</strong>"

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "cont_gj"
                    txt01 = "N수"
                    txt02 = "9월 순차 개강"
                    baja_txt = "자체 식당"
                    
	Case "CD0341": txtCampus = "러셀 대전"   '러셀 대전
                    campusName = "core_dj"
                    campusName02 = "cont_dj"
                    txt01 = "N수"
                    txt02 = "9/8(월) 개강"
                    tab_txt01 = "모집 요강"
                    baja_txt = "자체 식당"

End Select
%>


<!-- <a href="javascript:void(0)" onclick="fncAlarmPop()" class="top-banner"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a> -->

<div class="visual-wrap <%=campusName%>">
    <div class="v-obj-wrap">
        <div class="v-obj"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final_overall/v-obj.png" alt=""></div>
    </div>
	<div class="visual-area">
        <div class="v-txt">
            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/visual_txt.png" alt="최상위권 목표를 향한 마지막 기회"></p>
        </div>
        <div class="v-tit01">
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final_overall/visual_tit01.png" alt="2026 파이널">
        </div>
        <div class="v-tit02">
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final_overall/visual_tit02.png" alt="종합반">
        </div>
        <% If russelCore = "1" Then '코어 %>
        <p class="v-txt02">최후의 1분 1초까지 전략적으로,<br>
            <strong><%=txtCampus%> 종합반에서 <br>
            최상위권 대입 성공을 달성하세요!</strong></p>
        <% Else %>
        <p class="v-txt02">최후의 1분 1초까지 전략적으로,<br>
            <strong><%=txtCampus%> 종합반에서 <br>
                최상위권 대입 성공을 달성하세요!</strong></p>
        <% End If %>
        
        
        <div class="v-info">
            <div>
                <dl>
                    <dt><%=tit01%></dt>
                    <dd><%=txt01%></dd>
                </dl>
                <dl>
                    <dt><%=tit02%></dt>
                    <dd><%=txt02%></dd>
                </dl>
            </div>
        </div>
        <p class="v-stxt">*모집 요강 지원 자격 해당자 순 접수</p>
	</div>
    <div class="v-obj02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final_overall/v-obj02.png" alt="총알"></div>
    <div class="v-obj-wrap02">
        <div class="v-obj03">
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/v-obj03.png" alt="">
        </div>
        <div class="v-obj04">
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/v-obj04.png" alt="">
        </div>
    </div>
</div>