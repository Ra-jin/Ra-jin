<%
txtCampus = "러셀"
campusName = "intro"
tit_01 = "개강일"
txt_01 = "2월 중순 순차 개강"
tit_02 = "접수 방법"
txt_02 = "현장 또는 온라인 접수"
regular_url = ""
apply_url = "javascript:alert('추후 공개됩니다.');"
time_txt = "21"
time_txt02 = "21"
monthly = "월간<br>장영진<br>모의고사"
tabTxt03 = "모집 안내"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")

    Case "CD0257": txtCampus = "러셀 중계"  '중계
                campusName = "russel_jg"
                campusName02 = "cont_jg"
                txt_01 = "매월 초 개강"
                txt_02 = "방문 접수<br> <span class='comment'>※ 모집요강 지원자격 <br>&nbsp;&nbsp;&nbsp;&nbsp;해당자 순 접수</span>"
                monthly = "월간<br>학습지<br>모의고사"

    Case "CD0342": txtCampus = "러셀 대구"  '대구
                campusName = "russel_dg"
                campusName02 = "cont_dg"
                txt_01 = "10월 초 순차 개강"
                txt_02 = "온라인 접수 <br> <span class='comment'>※ 모집요강 지원자격 <br>&nbsp;&nbsp;&nbsp;&nbsp;해당자 순 접수</span>"
                time_txt = "17.5"
                time_txt02 = "17.5"
                monthly = "월간<br>학습지<br>모의고사"
                tabTxt03 = "모집요강"
                apply_url = "https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=169"
                endText = "연고대/블루반<br>마감(대기접수中)"

    Case "CD0349": txtCampus = "러셀 울산"  '울산
                campusName = "russel_us"
                campusName02 = "cont_us"
                txt_01 = "10월 7일(월)"
                txt_02 = "현장 또는 온라인 접수 <br> <span class='comment'>※ 모집요강 지원자격 <br>&nbsp;&nbsp;&nbsp;&nbsp;해당자 순 접수</span>"
                time_txt = "21"
                time_txt02 = "21"
                tabTxt03 = "모집요강"
                apply_url = "https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=169"

    Case "CD0340": txtCampus = "러셀CORE 광주"  '광주
                campusName = "core_gj"
                campusName02 = "cont_gj"
                tit_01 = "접수 현황"
                txt_01 = "현재 모집 중 [마감 임박]"
                txt_02 = "현장 접수 <br> <span class='comment'>※ 모집요강 지원자격 <br>&nbsp;&nbsp;&nbsp;&nbsp;해당자 순 접수</span>"
                monthly = "월간<br>학습지<br>(월간 장<br>영진)"
                tabTxt03 = "모집요강"

    Case "CD0249": txtCampus = "러셀 영통"  '영통
                campusName = "russel_yt"
                campusName02 = "cont_yt"
                txt_01 = "매월 초 순차 개강"
                txt_02 = "현장 접수 <br> <span class='comment'>※ 모집요강 지원자격 <br>&nbsp;&nbsp;&nbsp;&nbsp;해당자 순 접수</span>"
                monthly = "월간<br>학습지<br>모의고사"
                
End Select
%>

<div class="visual-wrap <%=campusName%>">
    <div class="bg"></div>
    <div class="bg-fade bg-fade01"></div>
    <div class="bg-fade bg-fade02"></div>
    <div class="bg-fade bg-fade03"></div>
    
    <div class="visual">
        <% If campus_code = "CD0257" Then '중계 %>
        <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/v-tit.png" alt="" /></p>
        <% Else %>
        <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/v-tit.png" alt="" /></p>
        <% End If %>
        <p class="stit">
            <strong><%=txtCampus%> 재수종합반</strong>에서 경쟁하는 것이<br>
            바로 <strong>대입성공의 경쟁력</strong>입니다.
        </p>
        <div class="info-box">
            <dl>
                <dt><%=tit_01%></dt>
                <dd><%=txt_01%></dd>
            </dl>
            <dl>
                <dt><%=tit_02%></dt>
                <dd><%=txt_02%></dd>
            </dl>
        </div>
    </div>
</div>