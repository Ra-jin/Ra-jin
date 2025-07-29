
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

tit01 = "개강일"
txt01 = "3월 순차적 개강"
tit02 = "접수 방법"
txt02 = "현장 또는 온라인 접수"
alignName = "not-vertical"

quick_tit = "수능&내신 대비 단과"
quick_txt01 = "[고3] 정규&middot;특강 단과"
quick_stxt = "내신 1등급을 위한<br>학교별 맞춤 내신 대비"
quick_txt02 = "[고2&middot;고1] <br> 내신 대비 강좌"
regular_url = "/intro/danka/2024/03/go3.asp"
naesin_txt = "javascript:alert('추후 오픈 예정입니다.');"

danka_txt01 = "과목별/수준별/진도별 <br> <strong>수능 및 내신 동시 대비</strong>"
danka_txt02 = "수능/내신 전문 강사진의 <br> <strong>몰입감 높은 현장강의</strong>"

month_txt = "* 고2, 고1 재학생 상담은 학년에 맞춘 입시/학습 상담이 진행됩니다."



Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"

    Case "CD0257": txtCampus = "러셀 중계"  '중계
                    campusName = "russel_jg"
                    campusName02 = "t_jg"
                    tit01 = "개강일"
                    txt01 = "3/1(금)"
                    tit02 = "모집 대상"
                    txt02 = "고3"
                    tit03 = "접수 방법"
                    txt03 = "현장 접수 <br> <span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    alignName = "wrap"
                    
                    regular_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1524"
                    quick_tit = "수능&내신 대비 단과"
                    quick_txt01 = "[고3] 정규&middot;특강 단과"
                    quick_stxt = "내신 목표 성적을 위한<br>학교별 맞춤 내신 대비"
                    quick_txt02 = "[고1&middot;고2] <br> 내신 대비 강좌"
                    danka_txt01 = "과목별/수준별/진도별 <br> <strong>수능 및 내신 동시 대비</strong>"
                    danka_txt02 = "수능/내신 전문 강사진의 <br> <strong>몰입감 높은 현장강의</strong>"
                    month_txt = "* 고2, 고1 재학생 상담은 학년에 맞춘 입시/학습 상담이 진행됩니다."
                    naesin_txt = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=301"



End Select
%>

<div class="visual-wrap">
	<div class="visual-area <%=campusName%>">
        <div class="bg"></div>
        <div class="bg-fade bg-fade01"></div>
        <div class="bg-fade bg-fade02"></div>
        <div class="bg-fade bg-fade03"></div>

        <div class="vis-box">
            <div class="vis-cont">
                <% If sCampusCode = "CD0257" Then '중계 %>
                <p><img src="<%=Application("img_path_russel")%>/russel_jg/2024/regular_go/visual_txt01.png" alt="목표 성적 상승을 위한 재학생 맞춤 시스템" /></p>
                <% Else %>
                <p><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/visual_txt01.png" alt="최상위권을 위한 재학생 맞춤 시스템" /></p>
                <% End If %>
                <p><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go_overall/visual_txt02.png" alt="2025 바른공부 자습전용관" /></p>
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go_overall/visual_txt03.png" alt="재학생 정규반" /></p>
                <div class="txt-cont">
                    <p>
                        재학생을 위한 관리는 달라야 합니다.<br>
                        <strong>
                            <% If sCampusCode = "CD0257" Then '중계 %>대입 레벨이 상승하는 <% Else %>최상위권이 집결하는 <% End If %> <%=txtCampus%>에서 대입성공을 시작하세요.
                        </strong>
                    </p>
                    <div class="v-info">
                        <div class="<%=alignName%>">                    
                            <dl>
                                <dt><%=tit01%></dt>
                                <dd><%=txt01%></dd>
                            </dl>                 
                            <dl>
                                <dt><%=tit02%></dt>
                                <dd><%=txt02%></dd>
                            </dl>
                            <% If sCampusCode = "CD0247" or sCampusCode = "CD0001" or sCampusCode = "CD0245" or sCampusCode = "CD0257" or sCampusCode = "CD0341" or sCampusCode = "CD0340" or sCampusCode = "CD0249" or sCampusCode = "CD0248" or sCampusCode = "CD0344" or sCampusCode = "CD0345" or sCampusCode = "CD0346" or sCampusCode = "CD0246" or sCampusCode = "CD0349" or sCampusCode = "CD0343" Then '강남/대치/목동/중계/코어대전/코어광주/영통/대구/전주/창원/청주/센텀/울산/코어원주 %>
                            <dl>
                                <dt><%=tit03%></dt>
                                <dd><%=txt03%></dd>
                            </dl>
                            <% End If %>       
                            <% If sCampusCode = "CD0342" Then '대구 스케줄링 작업위해 %>
                            <dl>
                                <dt><%=tit03%></dt>
                                <dd>온라인 접수 <a class='bt-apply' <% If curYmdhmin < 202402051000 then %> href='javascript:alert(`추후 오픈 예정입니다.`);' <%else%> href="https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168" <%end if%>>원서접수 바로가기</a></dd>
                            </dl>
                            <% End If %>
                        </div>                   
                    </div>

                    <% If sCampusCode = "INTRO" Then '인트로 %>
                    <p class="comment">* 모집과 관련된 자세한 내용은 학원별 페이지에서 확인하실 수 있습니다.</p>
                    <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                    <p class="comment">
                        *2025 재학생(고3) 정규반은 윈터스쿨 재원생 우선 접수 후 잔여석에 한해 모집합니다. <br>
                        - 우선 접수 종료 후 지원자격 해당자 순 개별 연락 드립니다. (잔여석이 없을 경우 자동 대기자 등록됩니다.)
                    </p>
                    <% End If %>
                </div>
            </div>
        </div>
	</div>

	<!--마감딱지-->
	<!-- <div class="ico-end red" style="top:400px;right:calc(50% - 760px);"><div><%=icoEnd%></div></div> -->
	<!--//마감딱지-->

	<!-- quick 플로팅배너 -->
	<div class="quick">
        <p class="b-tit"><%=quick_tit%></p>
        <a class="q-ban" href="<%=regular_url%>">
            <span>
                수능까지 체계적인 <br>
                과목별/수준별 커리큘럼
            </span>
            <strong><%=quick_txt01%></strong>
        </a>
        
        <% If sCampusCode <> "CD0001" and sCampusCode <> "CD0245" and sCampusCode <> "CD0341" and sCampusCode <> "CD0340" and sCampusCode <> "CD0244" and sCampusCode <> "CD0344" and sCampusCode <> "CD0345" and sCampusCode <> "CD0346" and sCampusCode <> "CD0250" Then '대치/목동/코어대전/코어광주/분당/코어전주/코어창원/코어청주/부천 제외 %>
        <a class="q-ban mb25" href="<%=naesin_txt%>">
            <span><%=quick_stxt%></span>
            <strong><%=quick_txt02%></strong>
        </a>
        <% end if %>

        <% If sCampusCode = "CD0244" Then '분당 %>
        <a href="javascript:fncAlarmPop02();" class="mt15"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/sns_banner.jpg" alt="학원 문자 수신 알리미 신청" /></a>
        <% ElseIf sCampusCode = "CD0250" Then '부천 %>
        <a href="javascript:fncAlarmPop03();" class="mt15"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/sns_banner.jpg" alt="학원 문자 수신 알리미 신청" /></a>
        <a href="https://pf.kakao.com/_sFgGxj" target="_blank" class="mt15"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/chat_banner.png" alt="채팅상담" /></a>
        <% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
        <a href="https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=306" class="mt15"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/math_banner.jpg" alt="수학 내신 현장수업" /></a>
        <% ElseIf sCampusCode = "CD0247" Then '강남 %>
        <a href="https://russelgn.megastudy.net/russel/event/2020/megapass/megapass.asp" class="mt25"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/banner_megapass.png" alt="메가패스" /></a>
        <% end if %>
	</div>
	<!--// quick 플로팅배너 -->
</div>

<!-- fix-menu -->
<nav class="fix-menu-wrap">
    <div class="fix-menu <%=campusName%>">
        <% If sCampusCode = "INTRO" Then '인트로 %>
        <div class="menu">
            <a class="on" href="javascript:void(0);">최상위권 집결, 러셀</a>
            <a href="javascript:void(0);">재학생에 최적화된 시스템</a>
            <a href="javascript:void(0);">학원별 모집안내</a>          
        </div>
        <% Else %>
        <div class="menu">
            <a class="on" href="javascript:void(0);"><%=txtCampus%> 모집요강 및 <% If sCampusCode = "CD0244" or sCampusCode = "CD0257" or sCampusCode = "CD0250" Then '분당/중계/부천 %>지원혜택<% Else %>장학혜택<% End If %></a>
            <a href="javascript:void(0);">
                <% If sCampusCode = "CD0344" or sCampusCode = "CD0345" or sCampusCode = "CD0346" or sCampusCode = "CD0349" or sCampusCode = "CD0343" Then '전주/창원/청주/울산/원주 %>
                최상위권 집결, 러셀
                <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                성적 향상과 대학 합격을 위한, <%=txtCampus%>
                <% Else %>
                최상위권 집결, <%=txtCampus%>
                <% End If %>
            </a>
            <a href="javascript:void(0);">재학생에 최적화된 시스템</a>          
        </div>
        <% End If %>
    </div>
</nav>
<!-- //fix-menu -->
