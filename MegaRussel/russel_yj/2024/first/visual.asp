
<%
title01 = "개강일"
txt01 = "2023년 12월 31일(일)"
title02 = "문의 전화"
txt02 = "031)512-1010"
title03 = "접수 방법"
txt03 = "온라인 접수 <a class='bt-apply' href='javascript:alert(`준비 중 입니다.`);'>원서접수 바로가기</a>"
regular_url = "https://russel.megastudy.net/intro/danka/2024/01/go3.asp"
vInfoWidth = "635px"
brochure_url = "javascript:alert('준비 중입니다.');"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	
    Case "CD0258": txtCampus = "최상위권 남학생 의대전문관"  '기숙남
		campusName = "russel_yj"
		imgUrl = img_path_yangji &"/2024/first"
        txt03 = "온라인 접수 <a class='bt-apply' href='https://russelcampus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163'>원서접수 바로가기</a>"
        apply_url = "https://russelcampus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163"
        brochure_url = "./brochure_yj.pdf"

    Case "CD0347": txtCampus = "서연고&middot;의치대 전문관"  '서의치
		campusName = "russel_sm"
		imgUrl = img_path_russelsm &"/2024/first"
		txt01 = "12월 31일(일)"
        txt02 = "031)513-1010"
        txt03 = "온라인 접수 <a class='bt-apply' href='https://russelsm.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=163'>원서접수 바로가기</a>"
        apply_url = "https://russelsm.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=163"
        icoEnd = "여학생 마감 대기 접수 중<br>남학생 마감 임박"

	Case "CD0348": txtCampus = "최상위권 여학생 의대전문관"  '기숙여
		campusName = "russel_w"
		imgUrl = img_path_russelw &"/2024/first"
        txt02 = "031)526-6787"
        txt03 = "온라인 접수 <a class='bt-apply' href='https://russelw.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163'>원서접수 바로가기</a>"
        apply_url = "https://russelw.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163"

End Select
%>

<div class="visual-wrap <%=campusName%>">
    <div class="visual-area">
        <div class="scene03">
            <div class="fadeIn">
                <div class="bg"><img src="<%=img_path_yangji%>/2024/first/scene03_bg.png" alt="" /></div>
                <div class="b-l-light"><img src="<%=img_path_yangji%>/2024/first/scene03_left_speed.png" alt="" /></div>
                <div class="b-r-light"><img src="<%=img_path_yangji%>/2024/first/scene03_right_speed.png" alt="" /></div>
                <div class="inner">
                    <p><img src="<%=imgUrl%>/scene03_stit.png" alt="단과 수업과 의무자습을 한방에!" /></p>
                    <h1 class="v-tit-wrap">
                        <p><img src="<%=img_path_yangji%>/2024/first/scene03_tit01.png" alt="2025" /></p>
                        <p class="v-tit01 animate__bounceInRight">
                            <% If sCampusCode = "CD0347" Then '서의치 %>
                            <img src="<%=img_path_russelsm%>/2024/first/scene03_tit02.png" alt="재수생" />
                            <% Else %>
                            <img src="<%=img_path_yangji%>/2024/first/scene03_tit02.png" alt="재수생" />
                            <% end if %>
                        </p>
                        <p class="v-tit02 animate__bounceInLeft"><img src="<%=img_path_yangji%>/2024/first/scene03_tit03.png" alt="우선선발반" /></p>
                        <div class="t-light flicker-1"><img src="<%=img_path_yangji%>/2024/first/scene03_light.png" alt="" /></div>
                    </h1>
                    <p class="v-txt"><img src="<%=img_path_yangji%>/2024/first/scene03_stit01.png" alt="한발 더 빠른 시작으로 최상위권 대입성공을 쟁취하라!" /></p>
                    <p class="v-txt02"><img src="<%=imgUrl%>/scene03_stit02.png" alt="" /></p>
                    <div class="v-info">
                        <div style="width:<%=vInfoWidth%>">
                            <dl>
                                <dt><%=title01%></dt>
                                <dd><%=txt01%></dd>
                            </dl>
                            <dl>
                                <dt><%=title02%></dt>
                                <dd><%=txt02%></dd>
                            </dl>
                            <dl>
                                <dt><%=title03%></dt>
                                <dd><%=txt03%></dd>
                            </dl>
                            <ul>
                                <li><a href='/russel/info/qna/qna.asp'>온라인 1:1 상담</a></li>
                                <li><a href='/<%=campusName%>/info/location.asp'>오시는 길</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="scene02">
            <div class="fadeIn">
                <div class="bg"><img src="<%=img_path_yangji%>/2024/first/scene02_bg.jpg" alt="" /></div>
                <div class="inner">
                    <div class="l-ribbon slide-out-fwd-left"><img class="" src="<%=img_path_yangji%>/2024/first/scene02_left_ribbon.png" alt="" /></div>
                    <div class="r-ribbon slide-out-fwd-right"><img class="" src="<%=img_path_yangji%>/2024/first/scene02_right_ribbon.png" alt="" /></div>
                    <div class="scale-in-center">
                        <p><img src="<%=img_path_yangji%>/2024/first/scene02_txt01.png" alt="한발 더 빠른 시작으로" /></p>
                        <p class="mt40"><img src="<%=img_path_yangji%>/2024/first/scene02_txt02.png" alt="최상위권 대입성공을 쟁취하라!" /></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="scene01">
            <div class="bg"><img src="<%=img_path_yangji%>/2024/first/scene01_bg.jpg" alt="" /></div>
            <div class="inner">
                <p class="l-tit"><img class="slide-in-blurred-top" src="<%=img_path_yangji%>/2024/first/scene01_left_text.png" alt="안주할 것인가," /></p>
                <p class="r-tit"><img class="slide-in-blurred-top" src="<%=img_path_yangji%>/2024/first/scene01_right_text.png" alt="도전할 것인가" /></p>
            </div>
        </div>
    </div>

    <!--마감딱지-->
    <% If sCampusCode = "CD0347" Then '서의치 %>
    <div class="ico-end red" style="top:440px;right:calc(50% - 460px);"><div class="fz20"><%=icoEnd%></div></div>
    <% End If %>
    <!--//마감딱지-->

    <!-- quick fix배너 -->
    <div class="quick <%=campusName%>">
        <% If sCampusCode = "CD0348" Then '여기숙 %>
        <a class="q-ban" href="<%=apply_url%>">
            <span>
                재도전을 결심했다면 <br>
                지금이 바로 도약의 기회!
            </span>
            <strong>
                2025 <br> 
                재수생 우선선발반
            </strong>
        </a>
        <p class="b-tit mb16">온라인 원서접수</p>
        <% End If %>
        <a href="<%=brochure_url%>" download class="mb16"><img src="<%=img_path_yangji%>/2024/first/brochure_banner.png" alt="2025 재수생 우선선발반 브로슈어 다운로드" /></a>
        <!-- <a href="javascript:fncAlarmPop();" class="mb16"><img src="<%=img_path_yangji%>/2024/first/sns_banner.png" alt="학원 문자 수신 알리미 신청" /></a> -->
    </div>
    <!--// quick fix배너 -->
    <!-- quick 플로팅배너 -->
    <% If sCampusCode = "CD0347" or sCampusCode = "CD0258" Then '서의치/남기숙 %>
    <div class="f-quick" style="top:calc(50% + 107px)">
        <a href="<%=apply_url%>" class="mb16"><img src="<%=img_path_russelsm%>/2024/first/apply_banner.png" alt="2025학년도 우선선발반 온라인 원서접수" /></a>
    </div>
    <% End If %>
    <!--// quick 플로팅배너 -->
</div>

<!-- fix-menu -->
<nav class="fix-menu-wrap">
    <div class="fix-menu">
        <div class="menu">
            <a class="on" href="javascript:void(0);"><%=txtCampus%></a>
            <a href="javascript:void(0);">재수생 우선선발반 시스템</a>
            <a href="javascript:void(0);">입학 안내</a>
            <a href="javascript:void(0);">학습계획표&amp;일과표</a>
        </div>
    </div>
</nav>
<!-- //fix-menu -->