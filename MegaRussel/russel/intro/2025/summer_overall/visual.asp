
<%

tit01 = "모집 대상"
txt01 = "고2, 고3"
tit02 = "개강일"
txt02 = "7월 순차 개강"
tit03 = "접수 방법"
txt03 = "현장 또는 온라인 접수"

apply_url = "javascript:alert('추후 오픈 예정입니다.');"

danka_txt01 = "<strong>러셀 강남&middot;대치&middot;기숙</strong> 및<br><strong>메가스터디 인강</strong> 출강"
danka_txt02 = "종합반 전 과목<br><strong>현장 강의 진행</strong>"
danka_txt03 = "과목별 성취도에 맞춘<br><strong>수준별 맞춤 수업</strong>"
danka_txt04 = "<strong>1:1 맞춤 관리</strong> 및<br><strong>질의응답 직접 진행</strong>"

meal = "급식(식당)"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
	Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "t_dg"
                    txt01 = "고2, 고3"
                    txt02 = "7월 중순 개강"
                    txt03 = "온라인 접수<a class='bt-apply' href='https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=190'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    icoEnd = "고3 마감임박<br>고2 마감(대기)"

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"
                    txt01 = "고3"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`);'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"

End Select
%>

<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <svg width="0" height="0"
        xmlns="http://www.w3.org/2000/svg"
        xmlns:xlink="http://www.w3.org/1999/xlink">
        <filter id="water">
            <feTurbulence type="fractalNoise" baseFrequency=".02 .02" numOctaves="1" result="noise1"></feTurbulence>
            <feColorMatrix in="noise1" type="hueRotate" values="0" result="noise2">
            <animate attributeName="values" from="0" to="360" dur="1s" repeatCount="indefinite"/>
            </feColorMatrix>
            <feDisplacementMap xChannelSelector="R" yChannelSelector="G" scale="20" in="SourceGraphic" in2="noise2" />
        </filter>
        </svg>
        <div class="v-bg"><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/v_bg.jpg" alt=""></div>
        <div class="v-bg01"><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/v_obj03.png" alt=""></div>
        <div class="v-bg02"><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/v_obj04.png" alt=""></div>
        <div class="inner">
            <div class="v-tit">
                <% If sCampusCode = "CD0342" Then '대구 %>
                <span><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer_overall/v_tit.png" alt="바른공부 자습전용관 2025 썸머스쿨"></span>
                <% Else %>
                <span><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/v_tit.png" alt="바른공부 자습전용관 2025 썸머스쿨"></span>
                <% End If %>
                <span class="v-shadow"><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/v_shadow.png" alt=""></span>
                <span class="v-wave01"><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/v_wave01.png" alt=""></span>
                <span class="v-wave02"><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/v_wave02.png" alt=""></span>
            </div>
            <div class="v-bubble"><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/v_bubble.png" alt="최상위권 도약을 위한 재학생 맞춤 시스템"></div>
            <div class="v-obj01"><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/v_obj01.png" alt=""></div>
            <div class="v-obj02"><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/v_obj02.png" alt=""></div>
            <p class="v-stit">
                올여름, N수생과 격차를 좁히는 방법<br>
                <strong>최상위권이 되고자 한다면, 최상위권이 집결하는 <%=txtCampus%> 종합반에서!</strong>
            </p>
            <div class="v-info">
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
		    <% If sCampusCode = "CD0342" Then '대구 %>
            <!--마감딱지-->
            <div class="ico-end" style="top:470px;right:calc(50% - 590px);"><div><%=icoEnd%></div></div>
            <!--//마감딱지-->
            <% End If %>
        </div>
	</div>

    <!-- quick 배너 -->
	<!-- <div class="quick">
        <p class="b-tit"><%=quick_tit%></p>
        <a class="q-ban" href="<%=summer_url%>">
            <span><%=summer_stxt%></span>
            <strong><%=summer_txt%></strong>
        </a>
        <a class="q-ban" href="<%=go3_url%>">
            <span><%=go3_stxt%></span>
            <strong><%=go3_txt%></strong>
        </a>
        <a href="javascript:CastPopup('https://tv.naver.com/v/74149532')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/quick_thumb.png" alt="영상보기"></a>
	</div> -->
	<!--// quick 배너 -->
</div>
