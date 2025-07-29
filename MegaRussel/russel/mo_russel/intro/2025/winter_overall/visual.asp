<%
txtCampus = "러셀"
campusName = "intro"

tit01 = "모집 대상"
txt01 = ""
tit02 = "운영 기간"
txt02 = ""
tit03 = "접수 기간"
txt03 = "2025년 6월 ~ 마감 시"
tit04 = "접수 방법"
txt04 = "온라인 접수 <br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"

tab_txt01 = "윈터스쿨<br>모집 안내"
tab_txt02 = "러셀 종합반<br>시스템"
tab_txt03 = "러셀의<br>윈터스쿨"
tab_txt04 = "최상위권<br>대입 결과"

bubble = "bubble_6"

apply_txt = "원서접수 바로가기"
apply_url = "alert('추후 오픈 예정입니다.')"

regular_url = "javascript:alert('추후 오픈 예정입니다.')"
am_url = "javascript:alert('추후 오픈 예정입니다.')"

baja_txt = "급식(식당)"
baja_txt02 = "720"

danka_txt01 = "<strong>러셀 강남&middot;대치&middot;기숙</strong> 및<br>메가스터디 <strong>인강</strong> 출강"
danka_txt02 = "종합반 전 과목<br><strong>현장강의 진행</strong>"
danka_txt03 = "과목별 성취도에 맞춘<br><strong>수준별 맞춤 수업</strong>"
danka_txt04 = "<strong>1:1 맞춤 관리</strong> 및<br><strong>질의응답 직접 진행</strong>"

result_btn = "2025학년도 대입 합격 결과"
result_btn_url = "/perfect/2025/susi/index.asp"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")

    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
                    campusName02 = "cont_yt"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "추후 공지"
                    bubble = "bubble_8"
                    result_btn_url = "/russel/event/2025/interview/index.asp"


    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "cont_dg"
                    txt01 = "26년 고3&middot;고2"
                    txt02 = "26년 1월 ~ 26년 2월 [8주 완성]"
                    txt03 = "2025년 8월부터"
                    bubble = "bubble_8"
                    baja_txt = "식당"
                    result_btn_url = "/russel/event/2025/interview/index.asp"    
                  
                   
    Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "cont_us"
                    txt01 = "26년 고3&middot;고1"
                    txt02 = "26년 1월 ~ 26년 2월 [9주 완성]"
                    bubble = "bubble_7"
                    baja_txt = "자체 식당"
                    result_btn_url = "https://mrusselus.megastudy.net/board/notice_view.asp?code=32032"

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "cont_gj"
                    txt01 = "26년 고3"
                    txt02 = "26년 1~2월 [9주 완성]"
                    bubble = "bubble_8"
                    baja_txt = "자체 식당"
                    result_btn_url = "/russel/event/2025/interview/index.asp"

End Select
%>


<a href="javascript:void(0)" onclick="fncAlarmPop()" class="top-banner"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a>

<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="v-txt">
            <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/visual_txt.png" alt="Win을 만드는 겨울, 터지는 잠재력! 최상위권으로 도약하는 학습 습관의 완성">
        </div>
        <div class="v-tit">
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/visual_tit.png" alt="2026 윈터스쿨">
        </div>
        
        <!-- 폭죽 -->
        <canvas id="fireworkCanvas" width="150" height="150"></canvas>
        <canvas id="fireworkCanvas02" width="86" height="86"></canvas>
        
        <div class="v-snow"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/visual_snow.png" alt=""></div>
        <div class="v-obj">
            <div class="v-trophy"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/visual_trophy.png" alt=""></div>
            <div class="v-fire"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/visual_fire.png" alt=""></div>
            <div class="v-win"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/visual_win.png" alt=""></div>
        </div>

        <!--윈터스쿨 홍보영상-->
        <div class="v-play-wrap">
            <a href="javascript:CastPopup('https://tv.naver.com/v/78773287')" class="v-play">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/v_play.png" alt="윈터스쿨 홍보영상" />
            </a>
        </div>
        <!--//윈터스쿨 홍보영상-->

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
	</div>
</div>