
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

tit01 = "개강일"
tit02 = "문의 전화"
tit03 = "접수 방법"

quick_tit = "2026 수능 대비 단과"
go3_stxt = "수능까지<br>과목별/수준별 맞춤 단과"
go3_txt = "정규&middot;특강 단과"

am_url = "javascript:alert('추후 오픈 예정입니다.');"
am_stxt = "N수생을 위한<br>평일 오전&middot;오후 단과"
am_txt = "AM단과"

apply_url = "javascript:alert('추후 오픈 예정입니다.');"

brochure = "javascript:alert('추후 오픈 예정입니다.');"

pass_btn = "대입 합격 결과 자세히 보기"
pass_url = "javascript:alert('추후 오픈 예정입니다.');"

baja_txt = "급식"

q_top01 = "calc(50% + 70px)"
q_top02 = "calc(50% - 82px)"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	

    Case "CD0347":  '남학생 전문관
                    txtCampus = "남학생 전문관"
                    txtCampus02 = "남학생 전문관 러셀 기숙학원"
                    campusName = "russel_sm"
                    campusName02 = "t_sm"
                    imgUrl = img_path_russelsm &"/2025/half"
                    txt01 = "6월 28일(토)"
                    txt02= "031) 513-1010"
                    txt03 = "온라인 접수 <a class='bt-apply' href='https://russelsm.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=187'>대기접수 바로가기</a> <a class='bt-apply key-color' href='/russel/info/qna/qna.asp'>온라인 1:1 상담</a> <a class='bt-apply key-color' href='/russel_sm/info/location.asp'>오시는 길</a>"
                    apply_url = "https://russelsm.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=187"
                    consulting_url = "https://russelsm.megastudy.net/event/2026/gisuk_half_pre/index.asp"
                    brochure = "./brochure_sm.pdf"
                    icoEnd = "전반 마감"


    Case "CD0348":  '여학생 전문관
                    txtCampus = "여학생 전문관"
                    txtCampus02 = "여학생 전문관 러셀 기숙학원"
                    campusName = "russel_w"
                    campusName02 = "t_w"
                    imgUrl = img_path_russelw &"/2025/half"
                    txt01 = "2025년 6월 28일(토)"
                    txt02= "031) 512-1010"
                    txt03 = "온라인 접수 <a class='bt-apply' href='https://russelw.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=187'>원서접수 바로가기</a> <a class='bt-apply key-color' href='/russel/info/qna/qna.asp'>온라인 1:1 상담</a> <a class='bt-apply key-color' href='/russel_w/info/location.asp'>오시는 길</a>"
                    apply_url = "https://russelw.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=187"
                    consulting_url = "https://russelw.megastudy.net/event/2026/gisuk_half_pre/index.asp"


End Select
%>
<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="inner">
            <p class="v-tit01"><img src="<%=Application("img_path_russel")%>/intro/2025/half/v_stit.png" alt="더 빠르게, 더 높은 목표에 도달하는 반수 성공 공식" /></p>
            <p class="v-tit02"><img src="<%=Application("img_path_russel")%>/intro/2025/half/v_tit01.png" alt="2026" /></p>
            <p class="v-tit03"><img src="<%=Application("img_path_russel")%>/intro/2025/half/v_tit02.png" alt="반수반" /></p>
            <p class="v-obj01"><img src="<%=Application("img_path_russel")%>/intro/2025/half/v_arr_btm.png" alt="" /></p>
            <p class="v-obj02"><img src="<%=Application("img_path_russel")%>/intro/2025/half/v_arr_top.png" alt="" /></p>
            <p class="v-txt">불필요한 수업은 <strong>줄이고,</strong> 꼭 필요한 시간은 <strong>최대로!</strong></p>
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
                    <p class="stxt">※ 모집요강 지원자격 해당자 순 접수</p>
                </div>
            </div>
            <% If sCampusCode = "CD0347" Then '남기숙 %>
            <!--마감딱지-->
            <div class="ico-end" style="top:515px;right:calc(50% - 500px);"><div><%=icoEnd%></div></div>
            <!--//마감딱지-->
            <% End If %>
        </div>
	</div>

    <!-- quick 플로팅배너 -->
    <div class="quick">
        <!--첫번째 퀵배너-->
        <a class="q-ban" href="<%=apply_url%>">
            <img src="<%=img_path_russelsm%>/2025/half/q_banner01.png" alt="">
        </a>
        <!--//첫번째 퀵배너-->

        <!--두번째 퀵배너-->
        <a class="q-ban mt10" href="<%=brochure%>" download>
            <img src="<%=img_path_russelsm%>/2025/half/q_banner02.png" alt="">
        </a>
        <!--두번째 퀵배너-->

        <!--최상위/남녀기숙 공통 배너-->
        <!-- <div class="q-ban mt10" href="" >
            <img src="<%=img_path_russelsm%>/2025/half/q_banner03.png" alt="">
            <ul class="in-wrap">
                <li><a href="javascript:void(0)" onclick="openPop('https://russel.megastudy.net/russel/popup/popup_admission_exp_2017_n.asp?cd=79')">5/23(금) 19시 대구</a></li>
                <li><a href="javascript:void(0)" onclick="openPop('https://russel.megastudy.net/russel/popup/popup_admission_exp_2017_n.asp?cd=78')">5/24(토) 11시 대전</a></li>
                <li><a href="javascript:void(0)" onclick="openPop('https://russel.megastudy.net/russel/popup/popup_admission_exp_2017_n.asp?cd=81')">5/24(토) 11시 부산</a></li>
                <li><a href="javascript:void(0)" onclick="openPop('https://russel.megastudy.net/russel/popup/popup_admission_exp_2017_n.asp?cd=80')">5/25(일) 14시 광주</a></li>
                <li><a href="javascript:void(0)" onclick="openPop('https://russel.megastudy.net/russel/popup/popup_admission_exp_2017_n.asp?cd=82')">6/14(토) 14시 서울</a></li>
            </ul>
        </div> -->
        <!--//최상위/남녀기숙 공통 배너-->

        <!--최상위/남녀기숙 공통 배너(2차)-->
        <% if curYmdhmin < 202506141500 then %>
        <!--6/14 토 오후 3시 이후 제거-->
        <a class="q-ban mt10" href="<%=consulting_url%>" >
            <img src="<%=img_path_russelsm%>/2025/half/q_banner04.png" alt="">
        </a>
        <% end if %>
        <!--//최상위/남녀기숙 공통 배너(2차)-->
	</div>
	<!--// quick 플로팅배너 -->
</div>
