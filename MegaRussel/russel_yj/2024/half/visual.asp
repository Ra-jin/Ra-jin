
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

tit01 = "개강일"
txt01 = "1차 개강 6/23(일)<br>2차 개강 6/29(토)"
tit02 = "문의 전화"
txt02 = "031)512-1010"
tit03 = "접수 방법"
txt03 = "온라인 접수 <a class='bt-apply' href='https://russelcampus.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=170'>원서접수 바로가기</a>"
curriculum_txt = "실전모의고사 및<br>기학/확통 특강"
content_url = "/russel_yj/2024/h_quality/index.asp"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	
    Case "CD0258": txtCampus = "최상위권 남학생 의대전문관"  '기숙남
		campusName = "russel_yj"
        campusName02 = "t_yj"
		imgUrl = img_path_yangji &"/2024/half"
        apply_url ="https://russelcampus.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=170"
        curriculum_txt = "실전모의고사"
        brochure_url = "./brochure_yj.pdf"
        
	Case "CD0348": txtCampus = "최상위권 여학생 의대전문관"  '기숙여
		campusName = "russel_w"
        campusName02 = "t_w"
		imgUrl = img_path_russelw &"/2024/half"
        txt01 = "1차 : 6월 23일(일) 개강 <br>2차 : 6월 29일(토) 개강"
        txt02 = "031) 526-6787"
        txt03 = "온라인 접수 <a class='bt-apply' href='https://russelw.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=170'>원서접수 바로가기</a>"
        apply_url = "https://russelw.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=170"
        content_url = "/russel_w/2024/h_quality/index.asp"
        brochure_url = "./brochure_w.pdf"

    Case "CD0347": txtCampus = "서연고&middot;의치대 전문관"  '서의치
		campusName = "russel_sm"
        campusName02 = "t_sm"
		imgUrl = img_path_russelsm &"/2024/half"
        txt01 = "6월 23일(일)<br>6월 29일(토)"
        txt02 = "031) 513-1010"
        txt03 = "온라인 접수 <a class='bt-apply' href='https://russelsm.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=170'>원서접수 바로가기</a>"
        apply_url ="https://russelsm.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=170"
        content_url = "/russel_sm/2024/h_quality/index.asp"
        brochure_url = "./brochure_sm.pdf"

End Select
%>

<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="inner">
            <div class="v-tit">
                <div><img src="<%=imgUrl%>/v-tit01.png" alt="" /></div>
                <div><img src="<%=img_path_yangji%>/2024/half/v-tit02.png" alt="2025" /></div>
                <div><img src="<%=img_path_yangji%>/2024/half/v-tit03.png" alt="" /></div>
                <% If sCampusCode = "CD0347" Then '서의치기숙 %>
                <div><img src="<%=imgUrl%>/v-tit04.png" alt="반수반" /></div>
                <% Else %>
                <div><img src="<%=img_path_yangji%>/2024/half/v-tit04.png" alt="반수반" /></div>
                <% End If %>
                <div><img src="<%=imgUrl%>/v-img.png" alt="" /></div>
            </div>

            <p class="v-txt">최상위권 대입 결과가 증명하는 러셀 기숙 시스템<br>
                <strong>러셀 기숙에서 최상위권 대입 합격에 도전하세요.</strong></p>

            <div class="v-info">
                <dl>
                    <dt><%=tit01%></dt>
                    <dd><%=txt01%></dd>
                    <dt><%=tit02%></dt>
                    <dd><%=txt02%></dd>
                </dl>
                <dl class="mt30">
                    <dt><%=tit03%></dt>
                    <dd><%=txt03%></dd>
                </dl>
                <ul>
                    <li><a href='/russel/info/qna/qna.asp'>온라인 1:1 상담</a></li>
                    <li><a href='/<%=campusName%>/info/location.asp'>오시는 길</a></li>
                </ul>
                <p class="stxt">※ 모집요강 지원자격 해당자 순 접수</p>
            </div>
            

        </div>
        <div class="bg"><img src="<%=img_path_yangji%>/2024/half/visual_bg.jpg" alt="" /></div>
	</div>

	<!-- quick 플로팅배너 -->
	<div class="quick">
        <a class="q-ban" href="javascript:fncAlarmPop();"><img src="<%=img_path_yangji%>/2024/half/sns_banner.png" alt="학원 문자 수신 알리미 신청" /></a>
        <a class="q-ban" href="<%=brochure_url%>" download><img src="<%=img_path_yangji%>/2024/half/brochure_banner.png" alt="2025 반수반 브로슈어 다운로드" /></a>
        <a class="q-ban" href="<%=apply_url%>"><img src="<%=img_path_yangji%>/2024/half/apply_banner.png" alt="2025 반수반 온라인 접수" /></a>
	</div>
	<!--// quick 플로팅배너 -->
</div>

<!-- fix-menu -->
<nav class="fix-menu-wrap">
    <div class="fix-menu">
        <div class="menu">
            <a class="on" href="javascript:void(0);"><%=txtCampus%></a>
            <a href="javascript:void(0);">러셀 기숙 시스템</a>
            <a href="javascript:void(0);">입학 안내</a>
            <a href="javascript:void(0);">학습계획표&일과표</a>
        </div>
    </div>
</nav>
<!-- //fix-menu -->
