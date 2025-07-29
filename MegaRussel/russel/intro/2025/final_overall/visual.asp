
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

vInfotxt = "*모집 요강 지원 자격 해당자 순 접수"

baja_txt01 = "강의실-바자관-급식(식당)을"


program_box02 = "종합반 전 과목<br><strong>현장 강의 진행</strong>"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")

    Case "CD0250": txtCampus = "러셀 부천"  '부천
                    campusName = "russel_bc"
                    campusName02 = "t_bc"
                    txt01 = "N수"
                    txt02 = "매월 1일부터 순차적 개강"
                    txt03 = "현장 접수"
                    baja_txt01 = "강의실-바자관-급식을"

    Case "CD0249": txtCampus = "러셀 영통"  '영통
                    campusName = "russel_yt"
                    campusName02 = "t_yt"
                    txt01 = "N수"
                    txt02 = "9월 개강"
                    txt03 = "현장 접수"
                    baja_txt01 = "강의실-바자관-급식을"


	Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "t_dg"
                    txt01 = "N수"
                    txt02 = "9월 순차 개강"
                    txt03 = "온라인 접수<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`)'>원서접수 바로가기</a>"
                    baja_txt01 = "강의실-바자관-자체 식당을"

	Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "t_us"
                    txt01 = "N수"
                    txt02 = "9월 1일(월) 개강"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`)'>원서접수 바로가기</a>"
                    baja_txt01 = "강의실-바자관-급식(식당)을"
                    program_box02 = "종합반 주요 과목<br><strong>현장 강의 진행</strong>"

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"
                    txt01 = "N수"
                    txt02 = "9월 순차 개강"
                    txt03 = "현장 / 온라인 접수<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`)'>원서접수 바로가기</a>"
                    baja_txt01 = "강의실-바자관-자체 식당을"

	Case "CD0341": txtCampus = "러셀 대전"  '대전
                    campusName = "core_dj"
                    campusName02 = "t_dj"
                    txt01 = "N수"
                    txt02 = "9/8(월) 개강"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`)'>원서접수 바로가기</a>"
                    baja_txt01 = "강의실-바자관-자체 식당을"

End Select
%>

<div class="visual-wrap <%=campusName%>">
    <div class="obj-wrap02">
        <div class="obj02">
            <img class="" src="<%=Application("img_path_russel")%>/intro/2025/final_overall/v_obj02.png" alt="Final Mission" />
        </div>
    </div>
	<div class="visual-area">
        <div class="inner">
            <div class="v-tit01"><p><img src="<%=Application("img_path_russel")%>/intro/2025/final_overall/v_tit01.png" alt="최상위권 목표를 향한 마지막 기회" /></p></div>
            <div class="v-tit02"><p><img src="<%=Application("img_path_russel")%>/intro/2025/final_overall/v_tit02.png" alt="2026 파이널" /></p></div>
            <div class="v-tit03"><p><img src="<%=Application("img_path_russel")%>/intro/2025/final_overall/v_tit03.png" alt="정규반" /></p></div>
            <div class="v-tit04"><p>최후의 1분 1초까지 전략적으로,<br><%=txtCampus%> 종합반에서 최상위권 대입 성공을 달성하세요!</p></div>
            
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
                </dl>
                <dl>
                    <div>
                        <dt><%=tit03%></dt>
                        <dd><%=txt03%></dd>
                    </div>
                    <p class='stxt'><%=vInfotxt%></p>
                </dl>           
            </div>
            <div class="v-obj"><img class="" src="<%=Application("img_path_russel")%>/intro/2025/final_overall/v_obj01_2.png" alt="총알" /></div>    
        </div>  
        <div class="bg"><img src="<%=Application("img_path_russel")%>/intro/2025/final_overall/visual_bg.jpg" alt="" /></div>      
        
        <!--마감딱지-->
        <!-- <div class="ico-end red" style="top:580px;right:calc(50% - 550px);z-index: 5;"><div><%=icoEnd%></div></div> -->
        <!--//마감딱지-->
	</div>
    <div class="obj-wrap01">
        <div class="obj01">
            <img class="" src="<%=Application("img_path_russel")%>/intro/2025/final_overall/v_obj01.png" alt="속도" />
            <img class="" src="<%=Application("img_path_russel")%>/intro/2025/final_overall/v_obj01_1.png" alt="샤이닝" />
        </div>
    </div>
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
            
            <a href="javascript:void(0);">파이널 종합반 프로그램</a>
        </div>
    </div>
</nav>
<!-- //fix-menu -->

