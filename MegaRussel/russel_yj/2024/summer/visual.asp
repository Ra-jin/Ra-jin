
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

tit01 = "모집대상"
txt01 = "고3"
tit02 = "개강일"
txt02 = "7월 20일(토) 개강"
tit03 = "문의 전화"
txt03 = ""
tit04 = "접수 방법"

curriculum_txt = "실전모의고사 및<br>기학/확통 특강"
manage_slide_txt = "* 학원 내부 사정에 의해 일정, 내용 등은 변경될 수 있습니다."

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	
    Case "CD0258": txtCampus = "최상위권 남학생 의대전문관"  '기숙남
		campusName = "russel_yj"
        campusName02 = "t_yj"
		imgUrl = img_path_yangji &"/2024/summer"
        txt01 = "고3(미적·기하/과탐)"
        txt03 = "031) 512-1010"
        txt04 = "온라인 접수 <a class='bt-apply' href='https://russelcampus.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=166'>원서접수 바로가기</a>"
        apply_url ="https://russelcampus.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=166"
        curriculum_txt = "실전모의고사"
        brochure_url = "./summer_russel_yj.pdf"
        vInfoWidth = "880px"
        
        
	Case "CD0348": txtCampus = "최상위권 여학생 의대전문관"  '기숙여
		campusName = "russel_w"
        campusName02 = "t_w"
		imgUrl = img_path_russelw &"/2024/summer"
        txt03 = "031) 526-6787"
        txt04 = "온라인 접수 <a class='bt-apply' href='https://russelw.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=166'>원서접수 바로가기</a>"
        apply_url = "https://russelw.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=170"
        brochure_url = "javascript:alert(`추후 오픈 예정입니다.`)"
        vInfoWidth = "750px"

    Case "CD0347": txtCampus = "서연고&middot;의치대 전문관"  '서의치
		campusName = "russel_sm"
        campusName02 = "t_sm"
		imgUrl = img_path_russelsm &"/2024/summer"
        txt01 = "고3(남&middot;여/사&middot;과탐)"
        txt02 = "7월 20일(토) 개강 [4주 과정]"
        txt03 = "031) 513-1010"
        txt04 = "온라인 접수 <a class='bt-apply' href='https://russelsm.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=166'>원서접수 바로가기</a>"
        apply_url ="https://russelsm.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=166"
        brochure_url = "./summer_russel_sm.pdf"
        vInfoWidth = "890px"

End Select
%>

<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="inner02">
            <div class="v-tit01">
                <p><img src="<%=imgUrl%>/v_tit01.png" alt="의대전문관" /></p>
            </div>
            <div class="v-tit02">             
                <div class="wave-title">
                    <img src="<%=img_path_yangji%>/2024/summer/v_tit02.png" alt="2024 썸머스쿨" />
                    <div class="wave">
                        <svg viewBox="0 0 100 18">
                            <defs>
                                <path id="wave" d="M 0,10 C 30,10 30,15 60,15 90,15 90,10 120,10 150,10 150,15 180,15 210,15 210,10 240,10 v 28 h -240 z" />
                            </defs>
                            <use id="wave3" class="e-wave e-wave03" xlink:href="#wave" x="0" y="-5"></use>
                        </svg>
                    </div>
                </div>    
                <% If sCampusCode = "CD0347" Then '서의치 %>
                <div style="position: absolute; top:35px; right:-100px;"><img src="<%=img_path_yangji%>/2024/summer/go3.png" alt="고3" /></div>  
                <% End If %>
            </div>  
            <div class="v-tit03">
                <% If sCampusCode = "CD0258" Then '남기숙 %>
                <p>최상위권 N수생과 경쟁하는 러셀 기숙이 경쟁력이다. </p>
                <% Else %>
                <p>성공적인 여름방학을 위해 최상위권이 집결하는 러셀 기숙에서 경쟁해야 합니다. </p>
                <% End If %>
            </div>   
            <div class="v-tit04">
                <p><img src="<%=imgUrl%>/v_tit04.png" alt="의대전문관" /></p>
            </div>
            <div class="v-info">
                <div style="width:<%=vInfoWidth%>">
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
                    <dl class="mt30">
                        <dt><%=tit04%></dt>
                        <dd><%=txt04%></dd>
                    </dl>
                    <ul>
                        <li><a href='/russel/info/qna/qna.asp'>온라인 1:1 상담</a></li>
                        <li><a href='/<%=campusName%>/info/location.asp'>오시는 길</a></li>
                    </ul>                    
                    <p class="stxt">※ 모집요강 지원자격 해당자 순 접수</p>
                </div>
            </div>

            <!-- 비주얼 오브젝트 -->
            <div class="v-obj01">
                <img src="<%=Application("img_path_russel")%>/intro/2024/summer/v_obj01.png" alt="">
            </div>
            <div class="v-obj02">
                <img src="<%=Application("img_path_russel")%>/intro/2024/summer/v_obj02.png" alt="">
            </div>
            <div class="v-obj03">
                <img src="<%=Application("img_path_russel")%>/intro/2024/summer/v_obj03.png" alt="">
            </div>
            <div class="v-obj04">
                <img src="<%=Application("img_path_russel")%>/intro/2024/summer/v_obj04.png" alt="">
            </div>
        </div>  
        <div class="bg"><img src="<%=img_path_yangji%>/2024/summer/visual_bg.jpg" alt="" /></div>      
	</div>

	<!-- quick 플로팅배너 -->
    <% If sCampusCode <> "CD0348" Then '여기숙 제외 %>
	<div class="quick">
        <a class="q-ban" href="<%=apply_url%>"><img src="<%=imgUrl%>/apply_banner.png" alt="2025 썸머스쿨 온라인 접수" /></a>
        <a class="q-ban" href="javascript:fncAlarmPop();"><img src="<%=img_path_yangji%>/2024/summer/sns_banner.png" alt="학원 문자 수신 알리미 신청" /></a>
        <a class="q-ban" href="<%=brochure_url%>" download><img src="<%=img_path_yangji%>/2024/summer/brochure_banner.png" alt="2025 반수반 브로슈어 다운로드" /></a>

	</div>
    <% End If %>
	<!--// quick 플로팅배너 -->
</div>

<!-- fix-menu -->
<nav class="fix-menu-wrap">
    <div class="fix-menu">
        <div class="menu">
            <a class="on" href="javascript:void(0);"><%=txtCampus%></a>
            <a href="javascript:void(0);">최상위권 도약의 기회</a>
            <a href="javascript:void(0);">썸머스쿨 안내</a>
            <a href="javascript:void(0);">입학 안내</a>            
            <a href="javascript:void(0);">학습계획표&일과표</a>
        </div>
    </div>
</nav>
<!-- //fix-menu -->
