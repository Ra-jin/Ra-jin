
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

campusName = "INTRO"
title01 = "개강일"
txt01 = "매월 순차 개강"
title02 = "접수 방법"
txt02 = "현장 또는 온라인 접수"
regular_url = "/intro/danka/2024/07/go3.asp"
am_url = "/intro/danka/2024/08/am.asp"
bt_txt = "목표하는 최상위권 대입성공을 쟁취할 수 있습니다."

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	
    Case "CD0247": txtCampus = "러셀 강남"  '강남
		campusName = "russel_gn"
        campusName02 = "t_gn"
        txt01 = "매월 1일 또는 매주 월/목 중 입학 가능"
        txt02 = "온라인 접수 <a class='bt-apply' href='https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164'>원서접수 바로가기</a>"
        regular_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1626"
        am_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1679"

    Case "CD0001": txtCampus = "러셀 대치"  '대치
        campusName = "russel"
        campusName02 = "t_dc"
        txt01 = "모집요강 지원자격 해당자순 입학(매주 월/수/금)"
        txt02 = "학원으로 문의(02-2138-1010)"
        regular_url = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1699"
        am_url = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1767"
        icoEnd = "전반마감 <br>대기자 접수 중"

    Case "CD0245": txtCampus = "러셀 목동"  '목동
        campusName = "russel_mokdong"
        campusName02 = "t_md"
        title01 = "접수 현황"
        txt01 = "전석 마감 (대기자 접수 중)"
        txt02 = "온라인 대기자 접수<br><a class='bt-apply mt10 m0' href='https://russelmd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164'>대기자 접수 바로가기</a>"
        regular_url = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1700"
        am_url = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1768"
        icoEnd = "전석 마감<br>(대기자 접수 중)"

    Case "CD0250": txtCampus = "러셀 부천"  '부천
        campusName = "russel_bc"
        campusName02 = "t_bc"
        txt01 = "매월 초 순차 개강"
        txt02 = "현장 접수ㅣ 모집요강 지원자격 해당자 순 접수"
        title03 = "입학문의"
        txt03 = "온라인 상담 <a class='bt-apply' href='https://pf.kakao.com/_sFgGxj' target='_blank'>바로가기</a> ㅣ 전화 상담 032.265.1010"
        regular_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1629"
        am_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1682"

	Case "CD0244": txtCampus = "러셀 분당"  '분당
        campusName = "russel_bundang"
        campusName02 = "t_bd"
        txt02 = "온라인 접수 <a class='bt-apply' href='https://russelbd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164'>원서접수 바로가기</a>"
        regular_url = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1702"
        am_url = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1770"
        
	Case "CD0246": txtCampus = "러셀 센텀"  '센텀
        campusName = "russel_ct"
        campusName02 = "t_ct"
        txt01 = "3월 1일 (금) 개강"
        txt02 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://russelct.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164'>원서접수 바로가기</a>"
        regular_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1635"
        apply_url = "https://russelct.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164"
        am_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1688"

    Case "CD0249": txtCampus = "러셀 영통"  '영통
        campusName = "russel_yt"
        campusName02 = "t_yt"
        txt01 = "매월 초 순차 개강"
        txt02 = "현장 접수"
        regular_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1631"
        am_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1684"

    Case "CD0257": txtCampus = "러셀 중계"  '중계
        campusName = "russel_jg"
        campusName02 = "t_jg"
        txt01 = "매월 초 개강"
        txt02 = "현장 접수"
        regular_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1632"
        am_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1685"
        bt_txt = "목표 대학 합격의 기쁨을 쟁취할 수 있습니다."
        
	Case "CD0248": txtCampus = "러셀 평촌"  '평촌
        campusName = "russel_pc"
        campusName02 = "t_pc"
        txt01 = "7월 1일(월)"
        txt02 = "현장 및 유선 접수"
        regular_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1633"
        am_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1686"
        
	Case "CD0342": txtCampus = "러셀 대구" '대구
		campusName = "russel_dg"
        campusName02 = "t_dg"
        txt01 = "10월 초 순차 개강"
        txt02 = "온라인 접수 <a class='bt-apply' href='https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164'>원서접수 바로가기</a>"
        regular_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1706"
        am_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1774"
        icoEnd = "연고대/블루반<br>마감(대기접수中)"

	Case "CD0349": txtCampus = "러셀 울산" '울산
		campusName = "russel_us"
        campusName02 = "t_us"
        txt01 = "10월 순차 개강"
        txt02 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164'>원서접수 바로가기</a>"
        regular_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1708"
        am_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1776"
                    

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
        campusName = "core_gj"
        campusName02 = "t_gj"
        title01 = "접수 현황"
        txt01 = "현재 모집 중 [마감 임박]"
        txt02 = "현장 또는 온라인 접수"
        regular_url = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1709"
        am_url = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1777"
        
	Case "CD0341": txtCampus = "러셀CORE 대전"  '코어대전
        campusName = "core_dj"
        campusName02 = "t_dj"
        txt01 = "매월 초 순차 개강"
        txt02 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164'>원서접수 바로가기</a>"
        regular_url = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1638"
        am_url = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1691"

	Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
		campusName = "core_wj"
        campusName02 = "t_wj"
        txt01 = "매월 초 순차 개강"
        txt02 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://corewj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164'>원서접수 바로가기</a>"
        regular_url = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1711"
        am_url = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1779"

	Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
		campusName = "core_jj"
        campusName02 = "t_jj"
        txt01 = "매월 초 순차 개강"
        txt02 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://corejj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164'>원서접수 바로가기</a>"
        regular_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1712"
        am_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1780"

	Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
		campusName = "core_cw"
        campusName02 = "t_cw"
        txt01 = "매월 초 순차 개강"
        txt02 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://corecw.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164'>원서접수 바로가기</a>"
        regular_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1713"
        am_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1781"
        
	Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
		campusName = "core_cj"
        campusName02 = "t_cj"
        txt01 = "매월 초 개강"
        txt02 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://corecj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164'>원서접수 바로가기</a>"
        regular_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1642"
        am_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1695"

End Select
%>

<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="bg"></div>
        <div class="bg-fade bg-fade01"></div>
        <div class="bg-fade bg-fade02"></div>
        <div class="bg-fade bg-fade03"></div>

        <div class="vis-box">
            <div class="vis-content">
                <p><img src="<%=Application("img_path_russel")%>/intro/2024/regular/visual_txt01.png" alt="단기 수업과 의무자습을 한방에!" /></p>
                <p><img src="<%=Application("img_path_russel")%>/intro/2024/regular/visual_txt02.png" alt="2025 바른공부 자습 전용관" /></p>
                <% If sCampusCode = "CD0249" OR sCampusCode = "CD0245" Then '영통/목동 %>
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/visual_txt03.png" alt="N수 정규반" /></p>
                <% Else %>
                <p><img src="<%=Application("img_path_russel")%>/intro/2024/regular/visual_txt03.png" alt="N수 정규반" /></p>
                <% End If %>
                <p class="last">
                    <% If sCampusCode = "CD0257" Then '중계 %>
                    <strong>대입 레벨이 상승하는 <%=txtCampus%></strong>에서 경쟁하는 것이 <br><strong>대입성공의 경쟁력</strong>입니다.
                    <% Else %>
                    <strong>최상위권이 집결하는 <%=txtCampus%></strong>에서 경쟁하는 것이 <br><strong>대입성공의 경쟁력</strong>입니다.
                    <% End If %>   
                </p>

                <div class="v-info last">
                    <% If sCampusCode = "CD0346" or sCampusCode = "CD0345" or sCampusCode = "CD0340" or sCampusCode = "CD0343" or sCampusCode = "CD0344" or sCampusCode = "CD0341" or sCampusCode = "CD0250" or sCampusCode = "CD0247" or sCampusCode = "CD0246" or sCampusCode = "CD0349" or sCampusCode = "CD0257" or sCampusCode = "CD0342" or sCampusCode = "CD0244"  or sCampusCode = "CD0001"  or sCampusCode = "CD0245" Then '코어청주/코어창원/코어광주/코어원주/코어전주/코어대전/부천/강남/센텀/울산/중계/대구/분당/대치/목동 %>
                    <div class="vertical">          
                    <% Else %>
                    <div>  
                    <% End If %>
                        <% If sCampusCode <> "CD0246" and sCampusCode <> "CD0244" Then '센텀 제외 %>                      
                        <dl>
                            <dt><%=title01%></dt>
                            <dd><%=txt01%></dd>
                        </dl>
                        <% End If %>               
                        <dl>
                            <dt><%=title02%></dt>
                            <dd><%=txt02%></dd>
                        </dl>    
                        <% If sCampusCode = "CD0250" Then '부천 %>
                        <dl>
                            <dt><%=title03%></dt>
                            <dd><%=txt03%></dd>
                        </dl> 
                        <% End If %>                        
                    </div>                   
                </div>
                <% If sCampusCode <> "INTRO" AND sCampusCode <> "CD0001" AND sCampusCode <> "CD0245" AND sCampusCode <> "CD0250" Then '인트로/대치/목동/부천 제외 %>
                <p class="fz18 mt10 last"><strong>※ 모집요강 지원자격 해당자 순 접수</strong></p>
                <% End If %> 
                <% If sCampusCode = "INTRO" Then '인트로 %>
                <p class="comment last">* 모집과 관련된 자세한 내용은 학원별 페이지에서 확인하실 수 있습니다.</p>
                <% End If %>

                <!--마감딱지-->
                <% If sCampusCode = "CD0245" Then '목동 %>
                <div class="ico-end last" style="top:558px;right:calc(50% - 565px);"><div><%=icoEnd%></div></div>
                <% ElseIf sCampusCode = "CD0342" Then '대구 %>
                <div class="ico-end" style="top:558px;right:calc(50% - 565px); animation:fadeIn 1s 3.5s both"><div><%=icoEnd%></div></div>
                <% End If %>  
                <!--//마감딱지-->
            </div>
        </div>

	</div>


	<!-- quick 플로팅배너 -->
	<div class="quick">
        <p class="b-tit">2025 수능 대비 단과</p>
        <a class="q-ban" href="<%=regular_url%>">
            <span>
                수능까지 체계적인<br>
                과목별/수준별 맞춤 단과
            </span>
            <strong>정규&middot;특강 단과</strong>
        </a>
        <a class="q-ban mb25" href="<%=am_url%>">
            <span>
                N수생을 위한<br>
                평일 오전&middot;오후 단과
            </span>
            <strong>AM단과</strong>
        </a>
        <% If sCampusCode = "CD0244" Then '분당 %>
        <a href="javascript:fncAlarmPop03();" class="mb16"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/sns_banner.png" alt="학원 문자 수신 알리미 신청" /></a>
        <% ElseIf sCampusCode = "CD0247" Then '강남 %>
        <a href="https://russelgn.megastudy.net/russel/event/2020/megapass/megapass.asp" class="mt25"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/banner_megapass.png" alt="메가패스" /></a>
        <% end if %>
        <% If sCampusCode = "CD0250" Then '부천 %>
        <a href="javascript:fncAlarmPop02();" class="mb16"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/sns_banner.png" alt="학원 문자 수신 알리미 신청" /></a>
        <a href="https://pf.kakao.com/_sFgGxj" target="_blank" class="mb16"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/chat_banner.png" alt="채팅상담" /></a>
        <% end if %>
	</div>
	<!--// quick 플로팅배너 -->
</div>

<!-- fix-menu -->
<nav class="fix-menu-wrap">
    <div class="fix-menu">
        <div class="menu">
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <a class="on" href="javascript:void(0);">최상위권 집결, 러셀</a>
            <a href="javascript:void(0);">수능에 최적화된 시스템</a>
            <a href="javascript:void(0);">학원별 모집안내</a>          
            <% Else %>
            <a class="on" href="javascript:void(0);"><%=txtCampus%> 모집요강 및 지원혜택</a>
            <a href="javascript:void(0);">             
                <% If sCampusCode = "CD0343" or sCampusCode = "CD0344" or sCampusCode = "CD0349" or sCampusCode = "CD0346"  or sCampusCode = "CD0345"  Then '원주/전주/울산/청주/창원 %>
                최상위권 집결, 러셀
                <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                수능 목표 성적과 대학 합격을 위한 <br>  <%=txtCampus%>
                <% Else %>
                최상위권 집결, <%=txtCampus%>
                <% end if %>
            </a>
            <a href="javascript:void(0);">수능에 최적화된 시스템</a>
            <% end if %>
        </div>
    </div>
</nav>
<!-- //fix-menu -->
