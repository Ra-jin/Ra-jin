
<%
russelCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

tit01 = "모집 대상"
txt01 = ""
tit02 = "개강일"
txt02 = ""
tit03 = "접수 방법"
txt03 = ""
tit04 = ""
txt04 = ""

vInfotxtIntro = "※ 모집과 관련된 자세한 내용은 학원별 페이지에서 확인하실 수 있습니다."
vInfotxt = "*모집 요강 지원 자격 해당자 순 접수"

quick_tit = "2026 수능 대비 단과"

regular_txt = "파이널<br>정규&middot;특강 단과"
regular_url = "javascript:alert(`추후 오픈 예정입니다.`);"

am_txt = "AM 단과"
am_url = "/intro/danka/2025/07/am.asp"

non_txt = "대학별 논술<br>단기 집중 특강"
non_url = "javascript:alert(`추후 오픈 예정입니다.`);"

btn_result = "/perfect/2025/susi/index.asp"

baja_txt01 = "강의실-바자관-급식(식당)을"

danka_txt01 = "최신 출제 경향이 반영된<br>파이널 모의고사"
danka_txt02 = "오직 N수생을 위한<br>평일 오전/오후 단과"
danka_txt03 = "대학별 출제 경향이 반영된 <br> 모의 논술 훈련과 개별 첨삭"

program_box02 = "몰입감이 높고 철저한 관리가<br>진행되는 <strong>현장 강의</strong>"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"
                    txt01 = "고3&middot;N수"
                    txt02 = "9월 순차 개강"
                    regular_url = "https://russel.megastudy.net/intro/danka/2025/08/go3.asp"
                    am_url = "https://russel.megastudy.net/intro/danka/2025/08/am.asp"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "t_gn"
                    regular_txt = "파이널<br>정규 단과"
                    txt01 = "N수, 고3"
                    txt02 = "9월 순차 개강"
                    txt03 = "온라인 접수<a class='bt-apply' href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=194'>원서접수 바로가기</a>"
                    regular_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2054"
                    am_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2040"
                    non_url = "javascript:alert(`추후 오픈 예정입니다.`);"
                    baja_txt01 = "강의실-바자관-급식을"

    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
                    campusName02 = "t_dc"

    Case "CD0245": txtCampus = "러셀 목동"  '목동
                    campusName = "russel_mokdong"
                    campusName02 = "t_md"

    Case "CD0250": txtCampus = "러셀 부천"  '부천
                    campusName = "russel_bc"
                    campusName02 = "t_bc"
                    txt01 = "고3&middot;N수"
                    txt02 = "9월 순차 개강"
                    txt03 = "현장 및 온라인 접수"
                    regular_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2057"
                    am_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2043"
                    non_url = "javascript:alert(`추후 오픈 예정입니다.`);"
                    baja_txt01 = "강의실-바자관-급식을"

	Case "CD0244": txtCampus = "러셀 분당"  '분당
                    campusName = "russel_bundang"
                    campusName02 = "t_bd"
                    txt01 = "고3&middot;N수"
                    txt02 = "10월 순차 개강"
                    txt03 = "온라인 원서 접수<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`)'>원서접수 바로가기</a>"
                    regular_url = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2058"
                    am_url = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2044"
                    non_url = "javascript:alert(`추후 오픈 예정입니다.`);"
                    baja_txt01 = "강의실-바자관-급식(자체 식당)을"

	Case "CD0246": txtCampus = "러셀 센텀"  '센텀
                    campusName = "russel_ct"
                    campusName02 = "t_ct"
                    txt01 = "N수"
                    txt02 = "9월 1일 (월) 개강"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`)'>원서접수 바로가기</a>"
                    regular_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2064"
                    am_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2049"
                    non_url = "javascript:alert(`추후 오픈 예정입니다.`);"
                    baja_txt01 = "강의실-바자관-급식을"


    Case "CD0249": txtCampus = "러셀 영통"  '영통
                    campusName = "russel_yt"
                    campusName02 = "t_yt"
                    txt01 = "고3&middot;N수"
                    txt02 = "9월 개강"
                    txt03 = "현장 접수"
                    regular_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2059"
                    am_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2045"
                    non_url = "javascript:alert(`추후 오픈 예정입니다.`);"
                    baja_txt01 = "강의실-바자관-급식을"

    Case "CD0257": txtCampus = "러셀 중계"  '중계
                    campusName = "russel_jg"
                    campusName02 = "t_jg"
                    txt01 = "고3/N수"
                    txt02 = "9월 초 개강"
                    txt03 = "현장 접수"
                    regular_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2060"
                    am_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2046"
                    non_url = "javascript:alert(`추후 오픈 예정입니다.`);"
                    baja_txt01 = "강의실-바자관-급식을"


	Case "CD0248": txtCampus = "러셀 평촌"  '평촌
                    campusName = "russel_pc"
                    campusName02 = "t_pc"
                    txt01 = "N수"
                    txt02 = "9/1(월)"
                    txt03 = "현장 접수 및 유선 문의"
                    regular_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2061"
                    am_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2047"
                    non_url = "javascript:alert(`추후 오픈 예정입니다.`);"

	Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "t_dg"
                    txt01 = "고3&middot;N수"
                    txt02 = "9월 순차 개강"
                    txt03 = "온라인 접수<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`)'>원서접수 바로가기</a>"
                    regular_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2062"
                    am_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2048"
                    non_url = "javascript:alert(`추후 오픈 예정입니다.`);"
                    baja_txt01 = "강의실-바자관-자체 식당을"


	Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "t_us"
                    txt01 = "고3&middot;N수"
                    txt02 = "9월 순차 개강"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`)'>원서접수 바로가기</a>"
                    regular_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2065"
                    am_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2050"
                    non_url = "javascript:alert(`추후 오픈 예정입니다.`);"
                    baja_txt01 = "강의실-바자관-급식(식당)을"
                    program_box02 = "높은 몰입감과 철저한 관리의<br><strong>현장 강의&대치동 LIVE 강의</strong>"

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"
                    txt01 = "고3&middot;N수"
                    txt02 = "9월 순차 개강"
                    txt03 = "현장 / 온라인 접수<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`)'>원서접수 바로가기</a>"
                    regular_url = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2066"
                    non_url = "javascript:alert(`추후 오픈 예정입니다.`);"
                    baja_txt01 = "강의실-바자관-자체 식당을"

	Case "CD0341": txtCampus = "러셀 대전"  '대전
                    campusName = "core_dj"
                    campusName02 = "t_dj"
                    txt01 = "고2&middot;고3&middot;N수"
                    txt02 = "9/1(월) 개강"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`)'>원서접수 바로가기</a>"
                    regular_url = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2063"
                    non_url = "javascript:alert(`추후 오픈 예정입니다.`);"
                    baja_txt01 = "강의실-바자관-자체 식당을"

	Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "t_wj"
         


	Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "t_jj"
                    txt01 = "고3&middot;N수"
                    txt02 = "9월 순차 개강"
                    txt03 = "온라인 접수<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`)'>원서접수 바로가기</a>"
                    regular_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2068"
                    am_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2051"
                    non_url = "javascript:alert(`추후 오픈 예정입니다.`);"
                    baja_txt01 = "강의실-바자관-급식실을"



	Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "t_cw"
                    txt01 = "N수"
                    txt02 = "9월 순차 개강"
                    txt03 = "현장 및 온라인 원서접수<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`)'>원서접수 바로가기</a>"
                    regular_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2069"
                    am_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2052"
                    non_url = "javascript:alert(`추후 오픈 예정입니다.`);"
                    baja_txt01 = "강의실-바자관-자체 식당(급식)을"


        
	Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "t_cj"
                    txt01 = "고3&middot;N수"
                    txt02 = "9월 순차 개강"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`)'>원서접수 바로가기</a>"
                    regular_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2070"
                    am_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2053"
                    non_url = "javascript:alert(`추후 오픈 예정입니다.`);"
                    baja_txt01 = "강의실-바자관-자체 식당을"


End Select
%>

<div class="visual-wrap <%=campusName%>">
    <div class="obj-wrap02">
        <div class="obj02">
            <img class="" src="<%=Application("img_path_russel")%>/intro/2025/final/v_obj02.png" alt="Final Mission" />
        </div>
    </div>
	<div class="visual-area">
        <div class="inner">
            <% If sCampusCode = "CD0257"  Then '중계 %>
            <div class="v-tit01"><p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/final/v_tit01.png" alt="최종 목표를 향한 마지막 기회" /></p></div>
            <% Else %>
            <div class="v-tit01"><p><img src="<%=Application("img_path_russel")%>/intro/2025/final/v_tit01.png" alt="최상위권 목표를 향한 마지막 기회" /></p></div>
            <% End If %>
            <div class="v-tit02"><p><img src="<%=Application("img_path_russel")%>/intro/2025/final/v_tit02.png" alt="2026 파이널" /></p></div>
            
            <% If sCampusCode = "CD0246"  Then '센텀 %>
            <div class="v-tit03"><p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/final/v_tit03.png" alt="N수 정규반" /></p></div>
            <% Else %>
            <div class="v-tit03"><p><img src="<%=Application("img_path_russel")%>/intro/2025/final/v_tit03.png" alt="정규반" /></p></div>
            <% End If %>
            
            <% If sCampusCode = "CD0257"  Then '중계 %>
            <div class="v-tit04"><p>최후의 1분 1초까지 전략적으로,<br><%=txtCampus%>에서 목표 대입 성공을 달성하세요!</p></div>
            <% Else %>
            <div class="v-tit04"><p>최후의 1분 1초까지 전략적으로,<br><%=txtCampus%>에서 최상위권 대입 성공을 달성하세요!</p></div>
            <% End If %>
            
            <div class="v-info">
                <dl>
                    <div>
                        <dt><%=tit01%></dt>
                        <dd><%=txt01%></dd>
                    </div>
                </dl>       
                <dl>
                    <div>
                        <dt><%=tit02%></dt>
                        <dd><%=txt02%></dd>
                    </div>
                    <!-- <% If sCampusCode = "INTRO"  Then '인트로 %>
                    <p class='stxt'><%=vInfotxtIntro%></p>
                    <% End If %> -->
                </dl>
                <% If sCampusCode <> "INTRO"  Then '인트로 제외 %>
                <dl>
                    <div>
                        <dt><%=tit03%></dt>
                        <dd><%=txt03%></dd>
                    </div>
                    <p class='stxt'><%=vInfotxt%></p>
                </dl>           
                <% End If %>
            </div>


            <% If sCampusCode = "INTRO" Then '인트로 %>
            <div>
                <p class="stxt intro"><%=vInfotxtIntro%></p>
            </div>
            <% End If %>



            <div class="v-obj"><img class="" src="<%=Application("img_path_russel")%>/intro/2025/final/v_obj01_2.png" alt="총알" /></div>    
        </div>  
        <div class="bg"><img src="<%=Application("img_path_russel")%>/intro/2025/final/visual_bg.jpg" alt="" /></div>      
        
        <!--마감딱지-->
        <!-- <div class="ico-end red" style="top:580px;right:calc(50% - 550px);z-index: 5;"><div><%=icoEnd%></div></div> -->
        <!--//마감딱지-->
	</div>
    <div class="obj-wrap01">
        <div class="obj01">
            <img class="" src="<%=Application("img_path_russel")%>/intro/2025/final/v_obj01.png" alt="속도" />
            <img class="" src="<%=Application("img_path_russel")%>/intro/2025/final/v_obj01_1.png" alt="샤이닝" />
        </div>
    </div>

	<!-- quick 플로팅배너 -->
	<div class="quick">
        <p class="b-tit"><%=quick_tit%></p>
        <a class="q-ban" href="<%=regular_url%>">
            <span>실전 수능 대비</span>
            <strong><%=regular_txt%></strong>
        </a>
        <% If sCampusCode <> "CD0341" and sCampusCode <> "CD0340"  Then '대전/코어광주 제외 %>
        <a class="q-ban" href="<%=am_url%>">
            <span>
                N수생을 위한 <br>
                평일 오전&middot;오후 단과              
            </span>
            <strong><%=am_txt%></strong>
        </a>
        <% End If %>

        <a class="q-ban" href="<%=non_url%>">
            <span>
                수시 합격 대비           
            </span>
            <strong><%=non_txt%></strong>
        </a>
	</div>
	<!--// quick 플로팅배너 -->
</div>

<!-- fix-menu -->
<nav class="fix-menu-wrap <%=campusName%>">
    <div class="fix-menu">
        <div class="menu">
            <% If sCampusCode = "CD0341"  Then '대전 %>
            <a class="on" href="javascript:void(0);">모집 요강</a>
            <% ElseIf sCampusCode = "CD0349"  Then '울산 %>
            <a class="on" href="javascript:void(0);">모집 요강 & 장학 혜택</a>
            <% Else %>
            <a class="on" href="javascript:void(0);">모집 요강 & 지원 혜택</a>
            <% End If %>
            
            <% If sCampusCode = "CD0246"  Then '센텀 %>
            <a href="javascript:void(0);">파이널 N수 정규반 프로그램</a>
            <% Else %>
            <a href="javascript:void(0);">파이널 정규반 프로그램</a>
            <% End If %>
        </div>
    </div>
</nav>
<!-- //fix-menu -->

