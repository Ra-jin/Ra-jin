<div class="visual-wrap">
	<div class="visual-area">
        <div class="inner">
            <p class="v-tit01"><img src="<%=Application("img_path_russel")%>/intro/2025/half/v_stit.png" alt="더 빠르게, 더 높은 목표에 도달하는 반수 성공 공식" /></p>
            <p class="v-tit02"><img src="<%=Application("img_path_russel")%>/intro/2025/half/v_tit01.png" alt="2026" /></p>
            <p class="v-tit03"><img src="<%=Application("img_path_russel")%>/intro/2025/half/v_tit02.png" alt="반수반" /></p>
            <p class="v-obj01"><img src="<%=Application("img_path_russel")%>/intro/2025/half/v_arr_btm.png" alt="" /></p>
            <p class="v-obj02"><img src="<%=Application("img_path_russel")%>/intro/2025/half/v_arr_top.png" alt="" /></p>
            <p class="v-txt">불필요한 수업은 <strong>줄이고,</strong> 꼭 필요한 시간은 <strong>최대로!</strong></p>
            <div class="v-img">
                <img src="<%=img_path_russelhs%>/2025/half/v_img.png" alt="" />
                <% If sCampusCode = "CD0363" Then '최상위권 전문관 %>
                <div class="ico-v-badge"></div>
                <% End If %>
            </div>
            <div class="v-info">
                <div>
                    <dl>
                        <dt>개강일</dt>
                        <dd>6월 28일(토)</dd>
                    </dl>
                </div>
                <div>
                    <dl>
                        <dt>접수 방법</dt>
                        <dd>온라인 접수 <a class="bt-apply" href="https://russelhs.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=187">원서접수 바로가기</a> <a class="bt-apply key-color" href="/russel/info/qna/qna.asp">온라인 1:1 상담</a> <a class="bt-apply key-color" href="/russel_hs/info/location.asp">오시는 길</a></dd>
                    </dl>
                    <p class="stxt">※ 모집요강 지원자격 해당자 순 접수</p>
                </div>
            </div>
            <!--마감딱지-->
            <div class="ico-end" style="top:428px;right:calc(50% - 540px);"><div>여학생<br>마감임박</div></div>
            <!--//마감딱지-->
        </div>
	</div>

    <!-- quick 플로팅배너 -->
    <div class="quick">
        <!--첫번째 퀵배너-->
        <a class="q-ban"  href="https://russelhs.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=187">
            <img src="<%=img_path_russelsm%>/2025/half/q_banner01.png" alt="">
        </a>
        <!--//첫번째 퀵배너-->

        <!--두번째 퀵배너-->
        <a class="q-ban mt10" download href="./brochure_hs.pdf" >
            <img src="<%=img_path_russelsm%>/2025/half/q_banner02.png" alt="">
        </a>
        <!--두번째 퀵배너-->

        <!--최상위/남녀기숙 공통 배너-->
        <!-- <div class="q-ban mt10">
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
        <a class="q-ban mt10" href="https://russelhs.megastudy.net/event/2026/gisuk_half_pre/index.asp" >
            <img src="<%=img_path_russelsm%>/2025/half/q_banner04.png" alt="">
        </a>
        <% end if %>
        <!--//최상위/남녀기숙 공통 배너(2차)-->

	</div>
	<!--// quick 플로팅배너 -->
</div>

<!-- fix-menu -->
<div class="fix-menu-wrap">
    <nav class="fix-menu">
        <div class="menu">
            <a class="on" href="javascript:void(0);"><strong>최상위권 전문관</strong></a>
            <a href="javascript:void(0);"><strong>합격선배들의 반수성공기</strong></a>
            <a href="javascript:void(0);"><strong>러셀 기숙 시스템</strong></a>
            <a href="javascript:void(0);"><strong>입학 안내</strong></a>
            <a href="javascript:void(0);"><strong>학습계획 및 일과표</strong></a>
        </div>
    </nav>
</div>
<!-- //fix-menu -->
