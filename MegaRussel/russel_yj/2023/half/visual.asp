<%
tit01 = "개강일"
tit02 = "문의전화"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	' method.asp 인클루드 안한 페이지에서 오류날 수 있지만, 안쓰는 페이지가 없을거라 가정
    Case "CD0258": campus_name  = "russel_yj" '기숙 최상위권남
                    campus_txt = "검증된 1등,<br>러셀 기숙학원"
                    tit01 = "입학일"
                    txt01 = "1차 : 6월 25일(일)<br>2차 : 7월 1일 (토)"
                    txt02 = "031) 512-1010"
                    bt_brochure = "https://russelcampus.megastudy.net/russel_yj/apply/brouchure_2024_v1.pdf "
                    bt_apply = "https://russelcampus.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=155"
                    bt_sms = "https://russel.megastudy.net/russel_yj/popup/2023/popup_0221.asp"

    Case "CD0347": campus_name = "russel_sm" '기숙 서의치관
                    campus_txt = "서연고&middot;의치대 전문관"
                    tit01 = "입학일"
                    txt01 = "1차 - 6월 25일(일)<br>2차 - 7월 1일(토)"
                    txt02 = "031) 513-1010"
                    bt_brochure = "https://russelsm.megastudy.net/russel_yj/apply/brochure_sm_230220.pdf"
                    bt_apply = "https://russelsm.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=155"
                    bt_sms = "https://russel.megastudy.net/russel_yj/popup/2023/popup_0221.asp "

	Case "CD0348": campus_name = "russel_w" '기숙 여자
                    campus_txt = "최상위권 여학생 전문관"
                    txt01 = "6월 24일(토)"
                    txt02 = "031) 526-6787"
                    bt_brochure = "추후 오픈 예정입니다."
                    bt_apply = "https://russelw.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=155"
                    bt_sms = "https://russel.megastudy.net/russel_yj/popup/2023/popup_0221.asp"
End Select
%>
<!-- Visual -->
<div class="visual-area">
    <div class="inner">
        <% If sCampusCode = "CD0258" Then '남자기숙 %>
        <!-- <p><img src="<%=img_path_yangji%>/2023/half/visual_subtit_yj.png" alt="다시가 아닌, 다르게 해야 성공합니다." /></p> -->
        <% Else %>
        <p><img src="<%=img_path_yangji%>/2023/half/visual_subtit.png" alt="다시가 아닌, 다르게 해야 성공합니다." /></p>
        <% End If %>

        <div class="v-tit">
            <p class="wobble-hor-bottom"><img src="<%=img_path_yangji%>/2023/half/visual_tit01.png" alt="2024 반수반" /></p>
            <div class="img-arrowhead slide-in-blurred-tr"><img src="<%=img_path_yangji%>/2023/half/visual_img01.png" alt="" /></div>
            <p class="v-img01 wobble-hor-bottom"><img src="<%=img_path_yangji%>/2023/half/visual_tit02.png" alt="" /></p>
        </div>
        <% If sCampusCode = "CD0258" Then '남자기숙 %>
        <!-- <p><img src="<%=img_path_yangji%>/2023/half/visual_img03_yj.png" alt="" /></p> -->
        <% elseIf sCampusCode = "CD0347" Then '서의치기숙 %>
        <!-- <p class="v-txt01"><img src="<%=img_path_yangji%>/2023/half/v_txt.png" alt="" /></p>
        <p><img src="<%=img_path_yangji%>/2023/half/visual_img03_sm.png" alt="" /></p> -->
        <% Else %>
        <!-- <p><img src="<%=img_path_yangji%>/2023/half/visual_img03.png" alt="" /></p> -->
        <% End If %>
        <div class="visual-info">
            <dl>
                <dt><%=tit01%></dt>
                <dd><%=txt01%></dd>
            </dl>
            <dl>
                <dt><%=tit02%></dt>
                <dd><%=txt02%></dd>
            </dl>
            <div>
                <a href="<%=bt_apply%>">온라인 원서접수 확인</a>
                <!-- <% If sCampusCode = "CD0258" Then '남자기숙 %>
                <a href="https://russelcampus.megastudy.net/russel_yj/2023/half/gisuk_m_half_v2.pdf" target="_blank">브로슈어 다운로드</a>
                <% ElseIf sCampusCode = "CD0347" Then '서의치관기숙 %>
                <a href="/russel_sm/2023/half/brochure_half_sm.pdf" target="_blank">브로슈어 다운로드</a>
                <% Else %>
                <a href="javascript:void(0)" onclick="alert('추후 오픈 예정입니다.')">브로슈어 다운로드</a>
                <% End If %> -->
            </div>
            <ul>
                <li><a href="/russel/info/qna/qna.asp">온라인 1:1 상담</a></li>
                <li><a href="/<%=campus_name%>/info/location.asp">오시는길</a></li>
            </ul>
        </div>
        <div class="v-img02"><img src="<%=img_path_yangji%>/2023/half/visual_img02.png" alt="" /></div>
    </div>
    <!--quick 우측플로팅배너-->
    <div class="quick">
        <!-- <a href="/event/2023/gisuk_pre/index.asp"><img src="<%=img_path_yangji%>/2023/half/right_banner03.png" alt="최상위권 설명회" /></a> -->
        <% If sCampusCode = "CD0258" Then '남자기숙 %>
        <a href="<%=bt_apply%>"><img src="<%=img_path_yangji%>/2023/half/right_banner02_yj.png" alt="2024 반수반" /></a>
        <% ElseIf sCampusCode = "CD0347" Then '서의치기숙 %>
        <a href="<%=bt_apply%>"><img src="<%=img_path_yangji%>/2023/half/right_banner02_sm.png" alt="2024 반수반" /></a>
        <% Else %>
        <a href="<%=bt_apply%>"><img src="<%=img_path_yangji%>/2023/half/right_banner02_w.png" alt="2024 반수반" /></a>
        <% End If %>
        <a href="javascript:void(0)" onclick="fn_eventGo('<%=bt_sms%>')"><img src="<%=img_path_yangji%>/2023/half/right_banner01.png" alt="문자 수신 알리미 신청하기" /></a>
    </div>
    <!--//quick 우측플로팅배너-->
</div>
<!-- //Visual -->
    
<!-- fix-menu -->
<nav class="fix-menu-wrap">
    <div class="fix-menu js-fix-menu">
        <div class="menu">
            <a class="on" href="javascript:void(0);"><%=campus_txt%></a>
            <a href="javascript:void(0);">반수반 안내</a>
            <a href="javascript:void(0);">입학 안내</a>
            <a href="javascript:void(0);">장학제도</a>
            <a href="javascript:void(0);">학습계획표&amp;일과표</a>
        </div>
        
    </div>
</nav>
<!-- //fix-menu -->
