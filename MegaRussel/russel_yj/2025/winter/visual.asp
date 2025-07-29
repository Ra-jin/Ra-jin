
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

tit01 = "모집 대상"
tit02 = "개강일"
tit03 = "문의 전화"
tit04 = "운영 기간"

quick_tit = "여름 방학 단과"
winter_url = "javascript:alert('추후 오픈 예정입니다.');"

go3_stxt = "수능까지<br>과목별/수준별 맞춤 단과"
go3_txt = "정규&middot;특강 단과"
go3_url = "javascript:alert('추후 오픈 예정입니다.');"
am_url = "javascript:alert('추후 오픈 예정입니다.');"

apply_url = "javascript:alert('추후 오픈 예정입니다.');"
meal = "급식(식당)을"
min = "720분"
meal02 = "자체 식당"

omega_top = "103px"
omega_left = "414px"

pass_url = "/perfect/2025/gisuk_pass/index.asp"

danka_list01 = "러셀 강남&middot;대치 및<br><strong>메가스터디 인강</strong> 출강"
danka_list02 = "<strong>겨울방학 단기 집중 완성</strong><br>현장강의 진행"
danka_list03 = "과목별 성취도에 맞춘<br><strong>수준별 맞춤 수업</strong>"
danka_list04 = "<strong>1:1 맞춤 관리</strong> 및<br><strong>질의응답 직접 진행</strong>" 

q_top01 = "calc(50% + 70px)"
q_top02 = "calc(50% - 82px)"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	

    Case "CD0347":  '남학생 전문관
                    txtCampus = "남학생 전문관"
                    txtCampus02 = "남학생 전문관 러셀 기숙"
                    campusName = "russel_sm"
                    campusName02 = "t_sm"
                    imgUrl = img_path_russelsm &"/2025/winter"
                    txt01 = "고2, 고3"
                    txt02 = "2025년 12월 27일(토)"
                    txt03 = "031)513-1010"
                    txt04 = "2025년 12월 27일(토) ~ 2026년 2월 7일(토) <a class='bt-apply' href='https://russelsm.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=191'>원서접수 바로가기</a> <a class='bt-apply key-color' href='/russel/info/qna/qna.asp'>온라인 1:1 상담</a> <a class='bt-apply key-color' href='/russel_sm/info/location.asp'>오시는 길</a>"
                    danka_list02 = "과목별 성취도에 맞춘<br><strong>수준별 맞춤 수업</strong>"
                    danka_list03 = "<strong>대치동 현강 그대로!<br>대치동 현강 컨텐츠 그대로!</strong>"
                    danka_list04 = "<strong>수업 관리 전담 선생님의<br>집중도 높은 수업 진행 관리</strong>"
                    pass_url = "https://russelsm.megastudy.net/russel/info/notice/notice_view.asp?Code=32124&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1" 
                    apply_url = "https://russelsm.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=191"
                    icoEnd = "조기 마감 주의"

    Case "CD0348":  '여학생 전문관
                    txtCampus = "여학생 전문관"
                    txtCampus02 = "여학생 전문관 러셀 기숙"
                    campusName = "russel_w"
                    campusName02 = "t_w"
                    imgUrl = img_path_russelw &"/2025/winter"
                    txt01 = "26년 고2&middot;고3"
                    txt02 = "2025년 12월 27일(토)"
                    txt03 = "031) 512-1010"
                    txt04 = "2025년 12월 27일(토) ~ 2026년 2월 7일(토) <a class='bt-apply' href='https://russelw.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=191'>원서접수 바로가기</a> <a class='bt-apply key-color' href='/russel/info/qna/qna.asp'>온라인 1:1 상담</a> <a class='bt-apply key-color' href='/russel_w/info/location.asp'>오시는 길</a>"
                    apply_url = "https://russelw.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=191"

    Case "CD0363":  '최상위권 전문관
                    txtCampus = "최상위권 전문관"
                    txtCampus02 = "최상위권 전문관 러셀 기숙"
                    campusName = "russel_hs"
                    campusName02 = "t_hs"
                    imgUrl = img_path_russelhs &"/2025/winter"
                    txt01 = "예비 고1·고2·고3"
                    txt02 = "2025년 12월 27일(토) 개강"
                    txt03 = "031)326-5000"
                    txt04 = "2025년 12월 27일(토) ~ 2026년 2월 7일(토) <a class='bt-apply' href='https://russelhs.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=191'>원서접수 바로가기</a> <a class='bt-apply key-color' href='/russel/info/qna/qna.asp'>온라인 1:1 상담</a> <a class='bt-apply key-color' href='/russel_hs/info/location.asp'>오시는 길</a>"
                    apply_url = "https://russelhs.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=191"

End Select
%>
<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="v-bg"><img src="<%=img_path_russelsm%>/2025/winter/v_bg.jpg" alt=""></div>
        <div class="v-bg01"><img src="<%=img_path_russelsm%>/2025/winter/v_bg02.jpg" alt=""></div>
        <div class="v-bg02"><img src="<%=img_path_russelsm%>/2025/winter/v_bg03.jpg" alt=""></div>

        <div class="inner">
            <!-- 폭죽 -->
            <canvas id="fireworkCanvas" width="150" height="150"></canvas>
            <canvas id="fireworkCanvas02" width="86" height="86"></canvas>

            <div class="v-stit"><img src="<%=imgUrl%>/v_stit.png" alt="Win을 만드는 겨울, 터지는 잠재력! 최상위권으로 도약하는 학습 습관의 완성"></div>
            <div class="v-tit"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/v_tit.png" alt="2026 윈터스쿨"></div>

            <div class="v-obj01"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/v_obj01.png" alt="WIN"></div>
            <div class="v-obj02"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/v_obj02.png" alt=""></div>

            <div class="v-img"><img src="<%=imgUrl%>/v_img.png" alt=""></div>

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
                    <dl>
                        <dt><%=tit03%></dt>
                        <dd><%=txt03%></dd>
                    </dl>
                </div>
                <div>
                    <dl>
                        <dt><%=tit04%></dt>
                        <dd><%=txt04%></dd>
                    </dl>
                </div>
            </div>
            <% If sCampusCode = "CD0347" Then '남기숙 %>
            <!--마감딱지-->
            <div class="ico-end" style="top:560px;right:calc(50% - 550px);"><div><%=icoEnd%></div></div>
            <!--//마감딱지-->
            <% End If %>
        </div>
	</div>

    <!-- quick 배너 -->
	<div class="quick">
        <!--학원 문자 수신 알리미 신청-->
        <a href="javascript:void(0)" onclick="fncAlarmPop()"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/quick_sms.jpg" alt="학원 문자 수신 알리미 신청" /></a>
        <!--//학원 문자 수신 알리미 신청-->
        
        <!-- 기숙 브로슈어 -->
        <a class="mt15" href="javascript:alert('추후 오픈 예정입니다.')"><img src="<%=img_path_russelsm%>/2025/winter/quick_brochure.png" alt="기숙 브로슈어" /></a>
        <!--윈터스쿨 원서접수-->
        <a class="mt15" href="<%=apply_url%>"><img src="<%=img_path_russelsm%>/2025/winter/quick_apply.png" alt="원서접수" /></a>
	</div>
	<!--// quick 배너 -->
</div>
