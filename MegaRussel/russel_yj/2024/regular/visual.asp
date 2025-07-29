
<%
title01 = "개강일"
txt01 = "2월 17일(토) 개강"
title02 = "문의 전화"
txt02 = "031) 512-1010"
title03 = "접수 방법"
txt03 = "온라인 접수 <a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`);'>원서접수 바로가기</a>"
regular_url = "https://russel.megastudy.net/intro/danka/2024/01/go3.asp"
vInfoWidth = "635px"
brochure_url = "javascript:alert('추후 오픈 예정입니다.');"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	
    Case "CD0258": txtCampus = "최상위권 남학생 의대전문관"  '기숙남
		campusName = "russel_yj"
		imgUrl = img_path_yangji &"/2024/regular"
        txt03 = "온라인 접수 <a class='bt-apply' href='https://russelcampus.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=164'>원서접수 바로가기</a>"
        apply_url = "https://russelcampus.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=164"
        brochure_url = "./brochure_yj_03.pdf"

    Case "CD0347": txtCampus = "서연고&middot;의치대 전문관"  '서의치
		campusName = "russel_sm"
		imgUrl = img_path_russelsm &"/2024/regular"
        txt02 = "031)513-1010"
        txt03 = "온라인 접수 <a class='bt-apply' href='https://russelsm.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=164'>원서접수 바로가기</a>"
        apply_url = "https://russelsm.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=164"
        brochure_url = "./brochure_sm_02.pdf"
        icoEnd = "전반 마감"

	Case "CD0348": txtCampus = "최상위권 여학생 의대전문관"  '기숙여
		campusName = "russel_w"
		imgUrl = img_path_russelw &"/2024/regular"
        txt02 = "031)526-6787"
        txt03 = "온라인 접수 <a class='bt-apply' href='https://russelw.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=164'>원서접수 바로가기</a>"
        apply_url = "https://russelw.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=164"
        brochure_url = "./brochure_w.pdf"

End Select
%>

<div class="visual-wrap <%=campusName%>">
    <div class="visual-area">
        <div class="bg"></div>
        <div class="bg-fade bg-fade01"></div>
        <div class="bg-fade bg-fade02"></div>
        <% If sCampusCode = "CD0347" Then '서의치 %>
        <div class="bg-fade bg-fade03"></div>
        <% End If %>
        <div class="vis-box">
            <div class="vis-content">
                <p><img src="<%=imgUrl%>/visual_txt01.png" alt="2025 바른공부 자습 전용관" /></p>
                <p>
                    <% If sCampusCode = "CD0347" Then '서의치 %>
                    <img src="<%=img_path_russelsm%>/2024/regular/visual_txt02.png" alt="N수 정규반" />
                    <% Else %>
                    <img src="<%=img_path_yangji%>/2024/regular/visual_txt02.png" alt="N수 정규반" />
                    <% End if %>
                </p>
                <p><strong>러셀 기숙</strong>에서 경쟁하는 것이 바로 <strong>대입성공의 경쟁력</strong>입니다.</p>
                <p class="mt20 last"><img src="<%=imgUrl%>/visual_txt03.png" alt="2025 바른공부 자습 전용관" /></p>

                <div class="v-info last">
                    <div style="width:<%=vInfoWidth%>">
                        <% If sCampusCode <> "CD0347" Then '서의치 제외 %>
                        <dl>
                            <dt><%=title01%></dt>
                            <dd><%=txt01%></dd>
                        </dl>
                        <% End if %>
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

    <!--마감딱지-->
    <% If sCampusCode = "CD0347" Then '서의치 %>
    <div class="ico-end" style="top:672px;right:calc(50% - 780px);"><div><strong class="fz34"><%=icoEnd%></strong></div></div>
    <% End If %>
    <!--//마감딱지-->

    <!-- quick fix배너 -->
    <div class="quick <%=campusName%>">
        <% If sCampusCode = "CD0348" Then '여기숙 %>
        <a href="javascript:fncAlarmPop02();" class="mb16">
            <img src="<%=img_path_yangji%>/2024/regular/sns_banner02.png" alt="" />
        </a>
        <a href="<%=brochure_url%>" download="" class="mb16">
            <img src="<%=img_path_yangji%>/2024/regular/brochure_banner.png" alt="2025 N수 정규반 브로슈어 다운로드" />
        </a> 
        <a href="<%=apply_url%>">
            <img src="<%=img_path_russelw%>/2024/regular/apply_banner.png" alt="" />
        </a>
        <% End If %>
        <% If sCampusCode = "CD0258" Then '남기숙 %>
        <a href="<%=brochure_url%>" download="" class="mb16"><img src="<%=img_path_yangji%>/2024/regular/brochure_banner.png" alt="2025 재수생 우선선발반 브로슈어 다운로드" /></a>
        <a href="javascript:fncAlarmPop();" class="mb16"><img src="<%=img_path_yangji%>/2024/regular/sns_banner.png" alt="학원 문자 수신 알리미 신청" /></a>
        <% ElseIf sCampusCode = "CD0347" or sCampusCode = "CD0258" Then '서의치 %>
        <a href="<%=brochure_url%>" download=""  class="mb16"><img src="<%=img_path_yangji%>/2024/regular/brochure_banner.png" alt="2025 재수생 우선선발반 브로슈어 다운로드" /></a>
        <a href="javascript:fncAlarmPop02();" class="mb16"><img src="<%=img_path_yangji%>/2024/regular/sns_banner.png" alt="학원 문자 수신 알리미 신청" /></a>
        <% End If %>
        <!-- <a href="javascript:fncAlarmPop();" class="mb16"><img src="<%=img_path_yangji%>/2024/regular/sns_banner.png" alt="학원 문자 수신 알리미 신청" /></a> -->
    </div>
    <!--// quick fix배너 -->
    <!-- quick 플로팅배너 -->
    <% If sCampusCode = "CD0258" Then '남기숙 %>
    <div class="f-quick">
        <a href="<%=apply_url%>" class="mb16"><img src="<%=img_path_russelsm%>/2024/regular/apply_banner.png" alt="2025학년도 우선선발반 온라인 원서접수" /></a>
    </div>
    <% ElseIf sCampusCode = "CD0347" Then '서의치 %>
    <div class="f-quick">
        <a href="<%=apply_url%>" class="mb16"><img src="<%=img_path_russelsm%>/2024/regular/apply_banner.png" alt="2025학년도 우선선발반 온라인 원서접수" /></a>
    </div>
    <% End If %>
    <!--// quick 플로팅배너 -->
</div>

<!-- fix-menu -->

<nav class="fix-menu-wrap">
    <div class="fix-menu">
        <div class="menu">
            <a class="on" href="javascript:void(0);"><%=txtCampus%></a>
            <a href="javascript:void(0);">정규반 시스템</a>
            <a href="javascript:void(0);">입학 안내</a>
            <a href="javascript:void(0);">학습계획표&amp;일과표</a>
        </div>
    </div>
</nav>
<!-- //fix-menu -->

