
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

fix_menu02 = "최상위권의 선택"
tit01 = "모집 대상"
txt01 = "25년 고3&middot;고2&middot;고1"
tit02 = "운영 기간"
txt02 = "24년 12월~25년 2월 [9주 완성]"
tit03 = "접수 기간"
txt03 = "24년 6월~마감 시"
tit04 = "접수 방법"
txt04 = "현장 또는 온라인 접수"
quick_tit = "겨울방학 단과"
regular_stxt = "최상위권을 위한<br>탄탄한 커리큘럼"
regular_txt = "정규 단과 [고3]"
regular_url = "javascript:alert('추후 오픈 예정입니다.');"
winter_txt = "윈터특강<br>[고3&middot;고2&middot;고1]"
winter_url = "javascript:alert('추후 오픈 예정입니다.');"
pass_url = "https://russel.megastudy.net/perfect/2024/susi/index.asp"
food_txt = "급식(식당)"
tab01_txt = "충분한 자습시간"
tab04_txt = "포트폴리오"
endTop = "725px"
endRight = "330px"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	

    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "t_dg"
                    txt01 = "25년 고1, 고3"
                    txt02 = "25년 1월 초 개강 (8주 과정)"
                    txt03 = "24년 8월 12일(월) 부터"
                    <!-- txt04 = "온라인 접수<p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>" -->
                    food_txt = "급식실"
                    txt04_before = "온라인 접수<a class='bt-apply' href='javascript:alert(`8/12(월) 오전10시 오픈 예정입니다.`);'>원서접수 바로가기</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    txt04_dev = "온라인 접수 <a class='bt-apply' href='https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=174'>원서접수 바로가기</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    txt04 = "온라인 접수 <a class='bt-apply' href='https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=174'>원서접수 바로가기</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    icoEnd = "전반 마감"
                    endTop = "639px"
                    endRight = "225px"

	Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "t_us"
                    txt01 = "25년 고3&middot;고1"
                    txt02 = "2025년 2월 [4주 과정]"
                    txt03 = "현재 모집 중"
                    txt04 = "현장 또는 온라인 접수<a class='bt-apply' href='https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=174'>원서접수 바로가기</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    tab04_txt = "가정통신문"
                    food_txt = "자체 식당"
                    icoEnd = "전 학년<br>대기자 접수"

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"
                    txt01 = "25년 고3"
                    txt03 = "현재 접수 중"
                    txt04 = "현장 또는 온라인 접수<a class='bt-apply' href='https://coregj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=174'>원서접수 바로가기</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    food_txt = "자체 식당"

End Select
%>

<div class="visual-wrap <%=campusName%>">
    <canvas id='canv'></canvas>
	<div class="visual-area">
        <div class="inner">
            <div class="v-obj"><img src="<%=Application("img_path_russel")%>/intro/2024/winter_overall/v_obj02.png" alt="" /></div>
            <div class="v-txt01"><img src="<%=Application("img_path_russel")%>/intro/2024/winter_overall/v_txt01.png" alt="올 겨울 최상위권으로 도약하기 위한 옳은 방법" /></div>
            <div class="v-tit">
                <p><img src="<%=Application("img_path_russel")%>/intro/2024/winter_overall/v_tit03.png" alt="최상위권 이과전문관" /></p>
                <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter_overall/v_tit02.png" alt="2025" /></div>
                <div class="tit-wrap">
                    <span><img src="<%=Application("img_path_russel")%>/intro/2024/winter_overall/v_tit01_1.png" alt="윈" /></span>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2024/winter_overall/v_tit01_2.png" alt="터" /></span>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2024/winter_overall/v_tit01_3.png" alt="스" /></span>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2024/winter_overall/v_tit01_4.png" alt="쿨" /></span>
                </div>
                <div class="tit-wrap type02">
                    <span><img src="<%=Application("img_path_russel")%>/intro/2024/winter_overall/v_tit01_5.png" alt="종" /></span>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2024/winter_overall/v_tit01_6.png" alt="합" /></span>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2024/winter_overall/v_tit01_7.png" alt="반" /></span>
                </div>
            </div>
            <div class="v-txt02"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter_overall/v_txt02.png" alt="역대 가장 탁월한 입결이 증명하는 러셀에서 최상위권 대입성공을 시작하세요!" /></div>

            <div class="v-info">
                <!-- 2줄 type -->
                <div>
                    <dl>
                        <dt><%=tit01%></dt>
                        <dd><%=txt01%></dd>
                    </dl>
                    <dl>
                        <dt><%=tit03%></dt>
                        <dd><%=txt03%></dd>
                    </dl>
                </div>
                <div class="ml20">
                    <dl>
                        <dt><%=tit02%></dt>
                        <dd><%=txt02%></dd>
                    </dl>
                    <dl>
                        <dt><%=tit04%></dt>
                        <% if sCampusCode = "CD0342" Then '대구 %>
                            <!-- 대구 원서접수 바로가기 8월 12일 오전 10시전 -->
                            <% if curYmdhmin < 202408121000 then %>
                                <dd><%=txt04_before%></dd>
                            <% else %>
                            <!--  대구 8월 12일 오전 10시 후 반영 --> 
                                <% If InStr(LCase(fncRequestVariables("HTTP_HOST")) ,"dev.megastudy.net") > 0 Then 'next server%>
                                <!-- 개발 서버 -->
                                    <dd><%=txt04_dev%></dd>
                                <% Else %> 
                                <!-- 실서버 -->
                                    <dd><%=txt04%></dd>
                                <% End If %>
                            <% End If %>    
                        <% Else %>                          
                        <dd><%=txt04%></dd>
                        <% End If %>    
                    </dl>
                </div>
            </div>
            <!--마감딱지-->
            <% if sCampusCode = "CD0342" or sCampusCode = "CD0349" Then '대구/울산 %>
            <div class="ico-end" style="top:<%=endTop%>;right:calc(50% - <%=endRight%>);"><div><%=icoEnd%></div></div>
            <% End If %>   
            <!--//마감딱지-->
        </div>
	</div>

	<!-- quick 플로팅배너 -->
	<!-- <div class="quick">
        <a href="javascript:fncAlarmPop();"><img src="<%=Application("img_path_russel")%>/intro/2024/winter_overall/sns_banner.jpg" alt="학원 문자 수신 알리미 신청" /></a> -->
        <!-- <p class="b-tit mt15"><%=quick_tit%></p>
        <a class="q-ban" href="<%=regular_url%>">
            <span>
                최상위권을 위한<br>
                탄탄한 커리큘럼
            </span>
            <strong><%=regular_txt%></strong>
        </a>
        <a class="q-ban" href="<%=winter_url%>">
            <span>
                겨울방학 단기완성
            </span>
            <strong><%=winter_txt%></strong>
        </a> -->

        <!--수능 모의체험-->
        <!-- <a class="mt15" href="/intro/2024/csat/experience.asp">
            <img src="<%=Application("img_path_russel")%>/intro/2024/winter/exgosa_banner.png" alt="수능 모의체험" />
        </a> -->
        <!--//수능 모의체험-->
	<!-- </div> -->
	<!--// quick 플로팅배너 -->
</div>

<!-- fix-menu -->
<nav class="fix-menu-wrap">
    <div class="fix-menu">
        <div class="menu">
            <a class="on" href="javascript:void(0);">윈터스쿨 모집안내</a>
            <a href="javascript:void(0);">최상위권의 선택</a>
            <a href="javascript:void(0);">신개념 융합형 종합반</a>
            <a href="javascript:void(0);">윈터스쿨 프로그램</a>
        </div>
    </div>
</nav>
<!-- //fix-menu -->
