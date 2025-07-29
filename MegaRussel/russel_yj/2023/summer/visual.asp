
<%
tit01 = "모집대상"
tit02 = "개강일"
tit03 = "문의전화"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")

    Case "CD0347": campusName = "russel_sm"  '기숙서의치관
                    txt01 = "고3, 고2"
                    txt02 = "7월 22일 (토)"
                    txt03 = "031) 513-1010 "
                    url_loca = "/russel_sm/info/location.asp"
                    applyUrl = "https://russelsm.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=154"

    Case "CD0348": campusName = "russel_w"  '기숙여최상위권
                    txt01 = "고3"
                    txt02 = "7월 22일(토)"
                    txt03 = "031) 526-6787"
                    url_loca = "/russel_w/info/location.asp"
                    applyUrl = "https://russelw.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=154"
                    
    Case "CD0258": campusName = "russel_yj"  '기숙남최상위권
                    txt01 = "고3"
                    txt02 = "7월 22일(토)"
                    txt03 = "031) 512-1010"
                    url_loca = "/russel_yj/info/location.asp"
                    applyUrl = "https://russelcampus.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=154"
End Select
%>


<!-- visual -->
<div class="visual-area">

    <div class="v-left">
        <span>
            <img src="<%=img_path_russelw%>/2023/summer/visual_left.png" alt="" />
        </span>
        <span class="bubble01">
            <img src="<%=img_path_russelw%>/2023/summer/bubble01.png" alt="" />
        </span>
        <span class="bubble02">
            <img src="<%=img_path_russelw%>/2023/summer/bubble02.png" alt="" />
        </span>
        <span class="bubble03">
            <img src="<%=img_path_russelw%>/2023/summer/bubble03.png" alt="" />
        </span>
        <span class="bubble04">
            <img src="<%=img_path_russelw%>/2023/summer/bubble04.png" alt="" />
        </span>
    </div>
    <div class="v-right"><img src="<%=img_path_russelw%>/2023/summer/visual_right.png" alt="" /></div>

    <canvas id="bubble"></canvas>

    <div class="inner">
        <!-- <p><img src="<%=img_path_russelw%>/2023/summer/v_txt01.png" alt="압도적인 학습량과 몰입을 통한 최상위권으로 도약" /></p> -->
        <p class="mt60 bounceAni"><img src="<%=img_path_russelw%>/2023/summer/v_txt02.png" alt="2023 썸머스쿨" /></p>
        <% If sCampusCode = "CD0347" Then '서의치 %>
        <div class="badge-go3" style="top:295px;right:130px;"><img src="<%=img_path_russelw%>/2023/summer/badge_go3_sm.png" alt="" /></div>
        <!-- <p class="mt40"><img src="<%=img_path_russelw%>/2023/summer/v_txt03_sm.png" alt="" /></p> -->
        <% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
        <div class="badge-go3"><img src="<%=img_path_russelw%>/2023/summer/badge_go3.png" alt="고3" /></div>
        <!-- <p class="mt40"><img src="<%=img_path_russelw%>/2023/summer/v_txt03.png" alt="" /></p> -->
        <% ElseIf sCampusCode = "CD0258" Then '남기숙 %>
        <div class="badge-go3"><img src="<%=img_path_russelw%>/2023/summer/badge_go3.png" alt="고3" /></div>
        <!-- <p class="mt40"><img src="<%=img_path_russelw%>/2023/summer/v_txt03_yj.png" alt="" /></p> -->
        <% End If%>
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
            <div>
                <a href="/russel/info/qna/qna.asp">온라인 1:1 상담</a>ㅣ
                <a href="<%=url_loca%>">오시는 길</a>
            </div>
        </div>
        <% If sCampusCode = "CD0347" Then '서의치 %>
        <div class="ico-end" style="top:67%;right:-130px;"><div>고2, 고3 남 마감<br>고3 여 약간명 모집</div></div>
        <% End If%>
    </div>
    <!-- quick 플로팅배너 -->
    <div class="quick">
        <a href="<%=applyUrl%>">
            <% If sCampusCode = "CD0347" Then '서의치 %>
            <img src="<%=img_path_russelw%>/2023/summer/summer_banner_sm.png" alt="2023 썸머스쿨 온라인 원서접수" />
            <% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
            <img src="<%=img_path_russelw%>/2023/summer/summer_banner.png" alt="2023 썸머스쿨 온라인 원서접수" />
            <% ElseIf sCampusCode = "CD0258" Then '남기숙 %>
            <img src="<%=img_path_yangji%>/2023/summer/summer_banner.png" alt="2023 썸머스쿨 온라인 원서접수" />
            <% End If%>
        </a>
        <a href="javascript:void(0);" onclick="fn_eventGo('https://russel.megastudy.net/russel_yj/popup/2023/popup_0221.asp')" class="mt20">
            <img src="<%=img_path_russelw%>/2023/summer/sms_banner.png" alt="문자 수신 알리미 신청하기" />
        </a>
        <!-- <% If sCampusCode <> "CD0348" Then '서의치 %>
        <a href="/russel_yj/2023/summer/brochure_summer_sm.pdf" target="_blank" class="mt20">
            <img src="<%=img_path_russelw%>/2023/summer/brochure.png" alt="브로슈어 다운로드" />
        </a>
        <% End If %> -->
    </div>
</div>
<!-- visual -->

<!-- fix-menu -->
<nav class="fix-menu-wrap" style="display: none;">
    <div class="fix-menu type01 js-fix-menu">
        <div class="menu">
            <a class="on" href="javascript:void(0);">검증된 1등,<br>러셀 기숙학원</a>
            <a href="javascript:void(0);">썸머스쿨 안내</a>
            <a href="javascript:void(0);">입학안내</a>
            <!-- <% If sCampusCode <> "CD0347" Then '서의치제외 %>
            <a href="javascript:void(0);">장학제도</a>
            <% End If %> -->
            <a href="javascript:void(0);">학습계획표&amp;일과표</a>
        </div>
    </div>
</nav>
<!-- //fix-menu -->