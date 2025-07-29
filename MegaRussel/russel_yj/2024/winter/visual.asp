
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

tit01 = "모집 대상"
txt01 = "25년 고3&middot;고2(미적/기하+과탐)"
tit02 = "개강일"
txt02 = "25년 1월 1일(수) 개강"
tit03 = "문의 전화"
txt03 = "24년 6월~마감 시"
tit04 = "운영 기간"
brochure_url = "javascript:alert(`추후 오픈 예정입니다.`)"
apply_url = "javascript:alert(`추후 오픈 예정입니다.`)"
quickTop = "top:calc(50% - 17px)"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	
    Case "CD0258": txtCampus = "최상위권 남학생 의대전문관"  '사용안함
		campusName = "russel_yj"
        campusName02 = "t_yj"
		imgUrl = img_path_yangji &"/2024/winter"
        txt03 = "031) 512-1010"
        txt04 = "25년 1월 1일(수)~25년 2월 8일(토) <a class='bt-apply' href='https://russelcampus.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=173'>원서접수 바로가기</a> <a class='bt-apply gray' href='/russel/info/qna/qna.asp'>온라인 1:1 상담</a> <a class='bt-apply gray' href='/russel_yj/info/location.asp'>오시는 길</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
        apply_url = "https://russelcampus.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=173"
        
        
	Case "CD0348": txtCampus = "여학생 전문관"  '기숙여
		campusName = "russel_w"
        campusName02 = "t_w"
		imgUrl = img_path_russelw &"/2024/winter"
        txt01 = "25년 고3 미적/기하+과탐"
        txt03 = "031) 512-1010"
        txt04 = "25년 1월 1일(수)~25년 2월 8일(토) <a class='bt-apply gray' href='/russel/info/qna/qna.asp'>온라인 1:1 상담</a> <a class='bt-apply gray' href='/russel_w/info/location.asp'>오시는 길</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
        apply_url = "https://russelw.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=173"
        icoEnd = "마감"

    Case "CD0347": txtCampus = "남학생 전문관"  '기숙남
		campusName = "russel_sm"
        campusName02 = "t_sm"
		imgUrl = img_path_russelsm &"/2024/winter"
        txt01 = "25년 고3&middot;고2(남/사&middot;과탐) *고2는 미적+과탐 선택자"
        txt03 = "031) 513-1010"
        txt04 = "25년 1월 1일(수)~25년 2월 8일(토) <a class='bt-apply' href='https://russelsm.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=173'>원서접수 바로가기</a> <a class='bt-apply gray' href='/russel/info/qna/qna.asp'>온라인 1:1 상담</a> <a class='bt-apply gray' href='/russel_sm/info/location.asp'>오시는 길</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
        apply_url = "https://russelsm.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=173"
        icoEnd = "전반 마감"
        quickTop = "top:calc(50% - 74px)"

End Select
%>

<div class="visual-wrap <%=campusName%>">
    <canvas id='canv'></canvas>
	<div class="visual-area">
        <div class="inner">
            <div class="v-obj"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/v_obj02.png" alt="" /></div>
            <div class="v-txt01"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/v_txt01.png" alt="올 겨울 최상위권으로 도약하기 위한 옳은 방법" /></div>
            <div class="v-tit">
                <div><img src="<%=imgUrl%>/v_tit00.png" alt="" /></div>
                <div class="mt40"><img src="<%=img_path_yangji%>/2024/winter/v_tit02.png" alt="2025" /></div>
                <div class="tit-wrap">
                    <span><img src="<%=img_path_yangji%>/2024/winter/v_tit01_1.png" alt="윈" /></span>
                    <span><img src="<%=img_path_yangji%>/2024/winter/v_tit01_2.png" alt="터" /></span>
                    <span><img src="<%=img_path_yangji%>/2024/winter/v_tit01_3.png" alt="스" /></span>
                    <span><img src="<%=img_path_yangji%>/2024/winter/v_tit01_4.png" alt="쿨" /></span>
                </div>
            </div>
            <div class="v-txt02"><img src="<%=imgUrl%>/v_txt02.png" alt="탁월한 입시 결과로 증명하는 러셀 기숙에서 최상위권 대입성공을 시작하세요!" /></div>
            <div class="v-txt03">
                <img src="<%=imgUrl%>/v_characteristic.png" alt="" />
            </div>
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
                <dl>
                    <dt><%=tit04%></dt>
                    <dd><%=txt04%></dd>
                </dl>
            </div>
            
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <p class="stxt">
                * 모집과 관련된 자세한 내용은 학원별 페이지에서 확인하실 수 있습니다.
            </p>
            <% End If %>
            <!--마감딱지-->
            <% If sCampusCode = "CD0348" Then '여기숙 %>
            <div class="ico-end" style="top:687px;right:calc(50% - 420px); animation: fadeIn ease 1s 3s both"><div><%=icoEnd%></div></div>
            <% ElseIf sCampusCode = "CD0347" Then '서의치 %>
            <div class="ico-end" style="top:510px;right:calc(50% - 219px);animation: fadeIn ease 1s 3s both"><div><%=icoEnd%></div></div>
            <% End If %>
            <!--//마감딱지-->
        </div>
	</div>

	<!-- quick fix배너 -->
	<!-- <div class="quick" style="top: calc(50% - 190px);">
        <a href="javascript:fncAlarmPop();" class="mb10"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/sns_banner.jpg" alt="학원 문자 수신 알리미 신청" /></a>
        <p class="b-tit mt15"><%=quick_tit%></p>
        <a class="q-ban" href="<%=regular_url%>">
            <span><%=regular_stxt%></span>
            <strong><%=regular_txt%></strong>
        </a>
        <a class="q-ban" href="<%=winter_url%>">
            <span>
                겨울방학 단기완성
            </span>
            <strong><%=winter_txt%></strong>
        </a>
	</div> -->
	<!--// quick fix배너 -->
    <!-- quick 플로팅배너 -->
    <div class="f-quick" style="<%=quickTop%>">
        <% If sCampusCode <> "CD0347" Then '서의치 제외 %>
        <a href="<%=brochure_url%>" download class="mb10"><img src="<%=img_path_yangji%>/2024/winter/brochure_banner.jpg" alt="2025 윈터스쿨 브로슈어 다운로드" /></a>
        <% End If %>
        <% If sCampusCode = "CD0348" or sCampusCode = "CD0347" Then '여기숙/서의치 %>
        <a href="<%=apply_url%>" class="mb10"><img src="<%=imgUrl%>/apply_banner.png" alt="2025 윈터스쿨 온라인 접수" /></a>
        <% Else %>
        <a href="<%=apply_url%>" class="mb10"><img src="<%=img_path_yangji%>/2024/winter/apply_banner.jpg" alt="2025 윈터스쿨 온라인 접수" /></a>
        <% End If %>
        <!--수능 모의체험-->
        <!-- <a class="mt15" href="/intro/2024/csat/experience.asp">
            <img src="<%=Application("img_path_russel")%>/intro/2024/winter/exgosa_banner.png" alt="수능 모의체험" />
        </a> -->
        <!--//수능 모의체험-->
    </div>

    <!--// quick 플로팅배너 -->
</div>

<!-- fix-menu -->
<nav class="fix-menu-wrap">
    <div class="fix-menu">
        <div class="menu">
            <a class="on" href="javascript:void(0);"><%=txtCampus%></a>
            <a href="javascript:void(0);">윈터스쿨 프로그램</a>
            <a href="javascript:void(0);">윈터스쿨 입학 안내</a>
            <a href="javascript:void(0);">학습계획표&amp;일과표</a>
        </div>
    </div>
</nav>
<!-- //fix-menu -->
