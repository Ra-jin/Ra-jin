<%
txtCampus = "러셀"
campusName = "intro"

tit01 = "개강일"
tit02 = "접수 방법"
txt01 = "3월 개강"
txt02 = "현장 접수"

apply_txt = "원서접수 바로가기"
apply_url = "alert('추후 오픈 예정입니다.')"

result_btn = "대입 합격 결과 자세히 보기" 
result_btn_url = "/perfect/2024/susi/index.asp"

studyHall_btn = "바른공부 자습전용관 자세히 보기" 
studyHall_btn_url = "/study_hall/study_hall.asp"

food_txt = "한 건물 내에서 강의실-바자관-급식(식당)을 <br> 한번에 해결"

danka_list01 = "<strong>러셀 강남&middot;대치&middot;기숙</strong> 및 <br> <strong>메가스터디 인강</strong> 출강"
danka_list02 = "종합반 전 과목 <br><strong>현장강의 진행</strong>"
danka_list03 = "과목별 성취도에 맞춘 <br><strong>수준별 맞춤 수업</strong>"
danka_list04 = "<strong>1:1 맞춤 관리</strong> 및<br> <strong>질의응답 직접 진행</strong>"

num = "2~3회"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"


    Case "CD0250": txtCampus = "러셀 부천"   '부천
                    campusName = "russel_bc"
                    campusName02 = "cont_bc"
                    txt01 = "매월 1일 순차적 개강"
                    txt02 = "현장 접수"
                    result_btn_url = "/russel/event/2025/interview/index.asp"
                    studyHall_btn_url = "https://mrusselbc.megastudy.net/russel_bc/info/2022/study_hall/index.asp"
                    food_txt = "한 건물 내에서 강의실-바자관-급식을 한번에 <br> 해결"
                    danka_list01 = "러셀 출강 강사진의 <br> <strong>몰입감 높은 현장강의</strong>"
                    danka_list03 = "학생의 <br>과목별 성취도에 맞춘 <br><strong>전 과목 수준별 맞춤 수업</strong>"
                    danka_list04 = "현강 강사진의 <br><strong>수업 전후 학습관리</strong>"



    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
                    campusName02 = "cont_yt"
                    txt01 = "매월 초 개강"
                    txt02 = "현장 접수"
                    result_btn_url = "https://mrusselyt.megastudy.net/russel/event/2024/interview/index.asp"
                    studyHall_btn_url = "https://mrusselyt.megastudy.net/russel_yt/info/2022/study_hall/index.asp"
                    food_txt = "한 건물 내에서 강의실-바자관-급식을 한번에 <br> 해결"


    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "cont_dg"
                    txt01 = "현재 모집 중"
                    txt02 = "온라인 접수"
                    result_btn_url = "https://mrusseldg.megastudy.net/russel/event/2025/interview/index.asp"
                    studyHall_btn_url = "https://mrusseldg.megastudy.net/russel_dg/info/2022/study_hall/index.asp"
                    food_txt = "한 건물 내에서 강의실-바자관-자체 식당을 <br> 한번에 해결"

    Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "cont_us"
                    txt01 = "6월 30일(월) 개강"
                    txt02 = "현장 또는 온라인 접수"
                    result_btn_url = "https://mrussel.megastudy.net/perfect/2024/susi/index.asp"
                    studyHall_btn_url = "https://mrusselus.megastudy.net/russel_us/info/2022/study_hall/index.asp"
                    food_txt = "한 건물 내에서 강의실-바자관-자체 식당을 <br> 한번에 해결"
                    result_btn = "러셀 대입 합격 결과 자세히 보기" 

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "cont_gj"
                    txt01 = "매월 순차 개강"
                    txt02 = "현장 또는 온라인 접수"
                    result_btn_url = "/russel/event/2025/interview/index.asp"
                    studyHall_btn_url = "https://mcoregj.megastudy.net/core_gj/info/2022/study_hall/index.asp"
                    food_txt = "한 건물 내에서 강의실-바자관-자체 식당을 <br> 한번에 해결"

	Case "CD0341": txtCampus = "러셀 대전"   '대전
                    campusName = "core_dj"
                    campusName02 = "cont_dj"
                    txt01 = "8월 순차 개강<br>*매주 (월) 입학 가능"
                    txt02 = "현장 또는 온라인 접수"
                    result_btn_url = "https://mcoredj.megastudy.net/russel/event/2025/interview/index.asp"
                    studyHall_btn_url = "https://mcoredj.megastudy.net/core_dj/info/2022/study_hall/index.asp"
                    food_txt = "한 건물 내에서 강의실-바자관-자체 식당을 <br> 한번에 해결"


End Select
%>

<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="bg-wrap">
            <div class="swiper-container visual-slide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_overall/v_bg01.jpg" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_overall/v_bg02.jpg" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_overall/v_bg03.jpg" alt="" /></div>
                </div>
            </div>
        </div>
        <div class="inner">
            <div class="tit-wrap">
                <h2><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/v_stit.png" alt="2026 바른공부 자습전용관" /></h2>
                <h1><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/v_tit.png" alt="재수종합반" /></h1>
            </div>
            <p class="v-txt">
                <%=txtCampus%> 재수종합반에서 경쟁하는 것이<br>
                바로 <strong>대입성공의 경쟁력</strong>입니다.
            </p>
            <h3><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/v_feature.png" alt="" /></h3>
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
            <ul class="list-bullet stxt m0">
                <li>모집요강 지원자격 해당자 순 접수</li>
            </ul>

            <!--마감딱지-->
            <!-- <div class="ico-end" style="top:310px;right:calc(50% - 500px);"><div><%=icoEnd%></div></div> -->
            <!--//마감딱지-->

        </div>
	</div>
</div>