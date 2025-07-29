
<%

tit01 = "모집 대상"
txt01 = "26년 고3&middot;고2&middot;고1"
tit02 = "접수 기간"
txt02 = "2025년 6월 ~ 마감 시"
tit03 = "운영 기간"
txt03 = "25년 12월 ~ 26년 2월 [9주 완성]"
tit04 = "접수 방법"
txt04 = "현장 또는 온라인 접수"

quick_tit = "여름 방학 단과"
winter_url = "javascript:alert('추후 오픈 예정입니다.');"

go3_stxt = "수능까지<br>과목별/수준별 맞춤 단과"
go3_txt = "정규&middot;특강 단과"
go3_url = "javascript:alert('추후 오픈 예정입니다.');"
am_url = "javascript:alert('추후 오픈 예정입니다.');"

apply_url = "javascript:alert('추후 오픈 예정입니다.');"
meal = "급식(식당)"
min = "720분"

omega_top = "103px"
omega_left = "414px"

pass_url = "/russel/event/2025/interview/index.asp"

danka_list01 = "<strong>러셀 강남&middot;대치&middot;기숙 및</strong><br>메가스터디 <strong>인강</strong> 출강"
danka_list02 = "종합반 전 과목<br><strong>현장강의 진행</strong>"
danka_list03 = "과목별 성취도에 맞춘<br><strong>수준별 맞춤 수업</strong>"
danka_list04 = "<strong>1:1 맞춤 관리</strong> 및<br><strong>질의응답 직접 진행</strong>" 

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")

    Case "CD0249": txtCampus = "러셀 영통"  '영통
                    campusName = "russel_yt"
                    campusName02 = "t_yt"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "추후 공지"
                    txt03 = "추후 공지"
                    txt04 = "온라인 사전 접수 → 현장 실등록<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`);'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    meal = "급식"

	Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "t_dg"
                    txt01 = "26년 고3&middot;고2"
                    txt02 = "2025년 8월부터"
                    txt03 = "26년 1월 ~ 26년 2월 [8주 완성]"
                    txt04 = "온라인 접수<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`);'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    meal = "식당"
                    
	Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "t_us"
                    txt01 = "26년 고3&middot;고1"
                    txt02 = "2025년 7월 ~ 마감 시"
                    txt03 = "26년 1월 ~ 26년 2월 [9주 완성]"
                    txt04 = "현장 또는 온라인 접수<a class='bt-apply' href='https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=192'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    meal = "자체 식당"
                    min = "540분"
                    pass_url = "https://russelus.megastudy.net/russel/info/notice/notice_view.asp?Code=32032&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1"

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"
                    txt01 = "26년 고3"
                    txt02 = "사전 예약 중"
                    txt03 = "26년 1~2월 [9주 완성]"
                    txt04 = "현장 또는 온라인 접수<a class='bt-apply' href='https://coregj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=192'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    meal = "자체 식당"
                    min = "540분"

End Select
%>

<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="v-bg"><img src="<%=Application("img_path_russel")%>/intro/2025/winter_overall/v_bg.jpg" alt=""></div>
        <div class="v-bg01"><img src="<%=Application("img_path_russel")%>/intro/2025/winter_overall/v_bg02.jpg" alt=""></div>
        <div class="v-bg02"><img src="<%=Application("img_path_russel")%>/intro/2025/winter_overall/v_bg03.jpg" alt=""></div>

        <div class="inner">
            <!-- 폭죽 -->
            <canvas id="fireworkCanvas" width="150" height="150"></canvas>
            <canvas id="fireworkCanvas02" width="86" height="86"></canvas>

            <div class="v-stit"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter_overall/v_stit.png" alt="Win을 만드는 겨울, 터지는 잠재력! 최상위권으로 도약하는 학습 습관의 완성"></div>
            <div class="v-tit"><img src="<%=Application("img_path_russel")%>/intro/2025/winter_overall/v_tit.png" alt="2026 윈터스쿨"></div>

            <div class="v-obj01"><img src="<%=Application("img_path_russel")%>/intro/2025/winter_overall/v_obj01.png" alt="WIN"></div>
            <div class="v-obj02"><img src="<%=Application("img_path_russel")%>/intro/2025/winter_overall/v_obj02.png" alt=""></div>

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
                <div>
                    <dl>
                        <dt><%=tit03%></dt>
                        <dd><%=txt03%></dd>
                    </dl>
                    <dl>
                        <dt><%=tit04%></dt>
                        <dd><%=txt04%></dd>
                    </dl>
                </div>
            </div>
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <p class="stxt">
                *학원별 일정 및 모집요강은 상이할 수 있으니, 자세한 내용은 학원별 페이지에서 확인 부탁드립니다.
            </p>
            <% End If %>
            <!--마감딱지-->
            <!-- <div class="ico-end" style="top:310px;right:calc(50% - 500px);"><div><%=icoEnd%></div></div> -->
            <!--//마감딱지-->
        </div>
	</div>

    <!-- quick 배너 -->
	<div class="quick">
        <!--학원 문자 수신 알리미 신청-->
        <a href="javascript:void(0)" onclick="fncAlarmPop()"><img src="<%=Application("img_path_russel")%>/intro/2025/winter_overall/quick_sms.jpg" alt="학원 문자 수신 알리미 신청" /></a>
        <!--//학원 문자 수신 알리미 신청-->

        <!--윈터스쿨 홍보영상-->
        <a class="mb10" href="javascript:CastPopup('https://www.youtube.com/embed/Q3xiVSyuXGI')"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/quick_video.png" alt="홍보영상" /></a>
        <!--//윈터스쿨 홍보영상-->
	</div>
	<!--// quick 배너 -->
</div>
