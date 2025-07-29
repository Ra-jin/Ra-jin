<%
txtCampus = "러셀"
campusName = "intro"

tit_01 = "개강일"
tit_02 = "접수 기간"
review_btn = "러셀 대입성공 Story 더보기" 
review_btn_url = "/russel/event/2024/interview/index.asp"

apply_txt = "원서접수 바로가기"
apply_url = "alert('추후 오픈 예정입니다.')"

baja_txt ="한 건물 내에서<br>강의실-바자관-급식(자체 식당)"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")

    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
                    campusName02 = "cont_yt"
                    txt_01 = "2/3(월) 개강 <br> <span class='f12'>※ 2/1(토) 입학 시, 2/1(토)~2(일) 자습관 비용 전액 지원</span>"
                    tit_02 = "운영기간"
                    txt_02 = "12/30(월)~3/2(일)"
                    review_btn = "2024학년도 러셀 영통 명예의 전당"
                    baja_txt = "한 건물 내에서 강의실-바자관-급식"
    
    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "cont_dg"
                    txt_01 = "2월 순차 개강"
                    txt_02 = "11월 20일(수) 시작"
                    review_btn = "2024학년도 대입 합격 결과"
                    baja_txt = "한 건물 내에서 강의실-바자관-급식"

    Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "cont_us"
                    txt_01 = "2월 순차 개강"
                    txt_02 = "현재 접수 중"
                    baja_txt = "한 건물 내에서 강의실-바자관-자체식당"
                    apply_txt = "온라인 원서 접수하기"

	Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
                    campusName = "core_gj"
                    campusName02 = "cont_gj"
                    txt_01 = "2월 순차 개강"
                    txt_02 = "현재 접수 중"
                    review_btn = "러셀CORE 광주 명예의 전당 바로가기"
                    review_btn_url = "/core_gj/event/2024/interview/index.asp"

	Case "CD0341": txtCampus = "러셀 대전"   '대전
                    campusName = "core_dj"
                    campusName02 = "cont_dj"
                    txt_01 = "매주 (수) 입학"
                    txt_02 = "현재 접수 중"
                    review_btn = "2024 대입 합격 결과 바로가기"
                    baja_txt = "한 건물 내에서 강의실-바자관-자체 식당"

End Select
%>


<div class="visual-wrap <%=campusName%>">
    <!-- 학원 문자 수신 알리미 -->
    <!-- <a href="javascript:void(0)" class="top-banner" onclick="fncAlarmPop()"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first_overall/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a> -->
    <!-- //학원 문자 수신 알리미 -->

    <p class="bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first_overall/visual_bg.jpg" alt=""></p>
    <div class="inner">
        <% If campus_code = "CD0249" Then '영통 %>
        <p class="v-txt"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first_overall/v-txt.png" alt="" /></p>
        <% Else %>
        <p class="v-txt"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first_overall/v-txt.png" alt="단과 수업과 의무자습을 한방에!" /></p>
        <% End If %>
        <p class="v-tit01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first_overall/v-tit01.png" alt="2026" /></p>
        <p class="v-tit02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first_overall/v-tit02.png" alt="재수생 우선선발반" /></p>
        <p class="v-stxt">나의 경쟁력을 높이는 한발 빠른 시작,<br>
            <strong><%=txtCampus%>에서 <br>
                최상위권 대입성공을 선점</strong>하세요!</p>

        <div class="v-info">
            <div>
                <dl>
                    <dt><%=tit_01%></dt>
                    <dd><%=txt_01%></dd>
                </dl>
                <dl class="mt10">
                    <dt><%=tit_02%></dt>
                    <dd><%=txt_02%></dd>
                </dl>
            </div>
        </div>
    </div>
</div>