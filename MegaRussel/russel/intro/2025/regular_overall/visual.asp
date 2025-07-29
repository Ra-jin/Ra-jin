
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

tit01 = "개강일"
txt01 = "2월 순차 개강"
tit02 = "접수 방법"
txt02 = "현장 또는 온라인 접수"
tit03 = "입학 문의"

f_quick_top = "top:calc(50%)"

fix_02 = "최상위권 집결"
apply_url = "javascript:alert('추후 공개 예정입니다.');"

pass_btn = "대입 합격 결과 자세히 보기"
pass_url = "/russel/event/2024/interview/index.asp"

baja_txt = "급식"
study_hall = "https://russel.megastudy.net/russel/study_hall/default.asp"
danka_txt01 = "<strong>러셀 강남&middot;대치&middot;기숙</strong> 및<br><strong>메가스터디 인강</strong> 출강"
danka_txt02 = "종합반 전 과목<br><strong>현장강의 진행</strong>"
danka_txt03 = "과목별 성취도에 맞춘<br><strong>수준별 맞춤 수업</strong>"
danka_txt04 = "<strong>1:1 맞춤 관리</strong> 및<br><strong>질의응답 직접 진행</strong>"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")

    Case "CD0250": txtCampus = "러셀 부천"  '부천
                    campusName = "russel_bc"
                    campusName02 = "t_bc"
                    txt01 = "매월 1일 순차적 개강"
                    txt02 = "현장 접수"
                    txt03 = "온라인 상담<a class='bt-apply' href='https://pf.kakao.com/_sFgGxj'>바로가기</a> ㅣ 전화 상담 032.265.1010"
                    pass_url = "/russel/event/2025/interview/index.asp"
                    study_hall = "/russel_bc/info/study_hall/study_hall.asp"
                    danka_txt01 = "러셀 출강 강사진의<br><strong>몰입감 높은 현장강의</strong>"
                    danka_txt03 = "학생의 과목별 성취도에 맞춘<br><strong>전 과목 수준별 맞춤 수업</strong>"
                    danka_txt04 = "현강 강사진의<br><strong>수업 전후 학습관리</strong>"

    Case "CD0249": txtCampus = "러셀 영통"  '영통
                    campusName = "russel_yt"
                    campusName02 = "t_yt"
                    txt01 = "매월 초 개강"
                    txt02 = "현장 접수"
                    study_hall = "/russel_yt/info/study_hall/study_hall.asp"
                    
	Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "t_dg"
                    txt01 = "현재 모집 중"
                    txt02 = "온라인 접수<a class='bt-apply' href='https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=181'>원서접수 바로가기</a>"
                    baja_txt = "자체 식당"
                    study_hall = "/russel_dg/info/study_hall/study_hall.asp"
                    apply_url = "https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=181"
                    pass_url = "https://russeldg.megastudy.net/russel/event/2025/interview/index.asp"

	Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "t_us"
                    txt01 = "6월 30일(월) 개강"
                    txt02 = "현장 또는 온라인 접수<a class='bt-apply' href='https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=181'>원서접수 바로가기</a>"
                    baja_txt = "자체 식당"
                    study_hall = "/russel_us/info/study_hall/study_hall.asp"
                    pass_btn = "러셀 대입 합격 결과 자세히 보기"
                    pass_url = "https://russel.megastudy.net/perfect/2024/susi/index.asp"
                    apply_url = "https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=181"


	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"
                    txt01 = "매월 순차 개강"
                    txt02 = "현장 및 온라인 접수<a class='bt-apply' href='https://coregj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=181'>원서접수 바로가기</a>"
                    pass_url = "/russel/event/2025/interview/index.asp"
                    baja_txt = "자체 식당"
                    study_hall = "/core_gj/info/study_hall/study_hall.asp"
                    apply_url = "https://coregj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=181"

	Case "CD0341": txtCampus = "러셀 대전"  '대전
                    campusName = "core_dj"
                    campusName02 = "t_dj"
                    txt01 = "8월 순차 개강<br>*매주 (월) 입학 가능"
                    txt02 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=181'>원서접수 바로가기</a>"
                    f_quick_top = "top:calc(50% + 140px)"
                    study_hall = "/core_dj/info/study_hall/study_hall.asp"
                    baja_txt = "자체 식당"
                    apply_url = "https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=181"
                    pass_url = "https://coredj.megastudy.net/russel/event/2025/interview/index.asp"

End Select
%>

<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="bg-wrap">
            <div class="swiper-container visual-slide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/v_bg01.jpg" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/v_bg02.jpg" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/v_bg03.jpg" alt="" /></div>
                </div>
            </div>
            <div class="light"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/v_light.png" alt="" /></div>
        </div>
        <div class="inner">
            <div class="tit-wrap">
                <% If sCampusCode = "CD0250" Then '부천 %>
                <h2><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/v_stit.png" alt="2026 N수" /></h2>
                <h1><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/v_tit.png" alt="국영수 종합반" /></h1>
                <% ElseIf sCampusCode = "CD0249" or sCampusCode = "CD0340" or sCampusCode = "CD0341" or sCampusCode = "CD0342" or sCampusCode = "CD0349" Then '영통/코어광주/대전/대구/울산 %>
                <h2><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/v_stit.png" alt="2026 N수" /></h2>
                <h1><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/v_tit.png" alt="재수 종합반" /></h1>
                <% Else %>
                <h2><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/v_stit.png" alt="2026 최상위권 이과전문관 N" /></h2>
                <h1><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/v_tit.png" alt="재수 종합반" /></h1>
                <% End If %>
            </div>
            <p class="v-txt"><%=txtCampus%> 재수종합반에서 경쟁하는 것이<br>바로 <strong>대입성공의 경쟁력</strong>입니다.</p>
            <div class="v-chr"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/v_chr.png" alt="" /></div>
            <div class="v-info">
                <div>
                    <dl>
                        <dt><%=tit01%></dt>
                        <dd><%=txt01%></dd>
                    </dl>
                </div>
                <div>
                    <dl>
                        <dt><%=tit02%></dt>
                        <dd><%=txt02%></dd>
                    </dl>
                    <p class="stxt">※ 모집요강 지원자격 해당자 순 접수
                    </p>
                </div>
                <% If sCampusCode = "CD0250" Then '부천 %>
                <div>
                    <dl>
                        <dt><%=tit03%></dt>
                        <dd><%=txt03%></dd>
                    </dl>
                </div>
                <% End If %>
            </div>
            <!--마감딱지-->
            <!-- <div class="ico-end" style="top:310px;right:calc(50% - 500px);"><div><%=icoEnd%></div></div> -->
            <!--//마감딱지-->
        </div>
	</div>

	<!-- quick 플로팅배너 -->
	<!-- <div class="quick">

        <p class="b-tit mt15"><%=quick_tit%></p>
        <a class="q-ban" href="<%=go3_url%>">
            <span><%=go3_stxt%></span>
            <strong><%=go3_txt%></strong>
        </a>
        <a class="q-ban" href="<%=am_url%>">
            <span><%=am_stxt%></span>
            <strong><%=am_txt%></strong>
        </a>
        <a href="javascript:fncAlarmPop();"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/quick_sms.png" alt="학원 문자 수신 알리미 신청" /></a>
	</div> -->
	<!--// quick 플로팅배너 -->

    <% If sCampusCode = "CD0342" OR sCampusCode = "CD0349" OR sCampusCode = "CD0340" OR sCampusCode = "CD0341" Then '대구/울산/코어광주/코어대전 %>
    <!-- quick fix배너 -->
    <div class="f-quick" style="<%=f_quick_top%>">
        <a href="<%=apply_url%>" class="mt15"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/quick_apply.png" alt="" /></a>
    </div>
    <!-- //quick fix배너 -->
    <% End If %>
</div>
