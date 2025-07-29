
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

tit01 = "모집 대상"
txt01 = "고3 &middot; 고2 &middot; 고1"
tit02 = "개강일"
txt02 = "7월 순차 개강"
tit03 = "접수 방법"
txt03 = "현장 또는 온라인 접수"

btn_url = "/perfect/2024/susi/index.asp"
quick_tit = "여름방학 단과"

baja_txt01 = "강의실-바자관-급식(식당)"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	
 
    Case "CD0249":  txtCampus = "러셀 영통"  '영통
                    campusName = "russel_yt"
                    campusName02 = "t_yt"
                    txt03 = "온라인 또는 현장 접수<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`);'>원서접수 바로가기</a><p class='fz18 bold mt5'>※ 모집요강 지원자격 해당자 순 접수</p>"

    Case "CD0342":  txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "t_dg"
                    txt01 = "고1 &middot; 고2 &middot; 고3"
                    tit02 = "기간"
                    txt02 = "7/20(토)~8/15(목)"
                    txt03 = "온라인 접수<a class='bt-apply' href='https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=172'>원서접수 바로가기</a><p class='fz18 bold mt5'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    txt03_before = "온라인 접수<a class='bt-apply' href='javascript:alert(`4/30(화) 10시 부터 가능합니다.`);'>원서접수 바로가기</a><p class='fz18 bold mt5'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    baja_txt01 = "강의실-바자관-자체 식당"
                    icoEnd = "고1마감(추가개설)<br>고2마감(대기접수)"

    Case "CD0349":  txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "t_us"
                    txt01 = "고1 &middot; 고2 &middot; 고3"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`);'>원서접수 바로가기</a><p class='fz18 bold mt5'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    baja_txt01 = "강의실-바자관-자체 식당"

    Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"
                    txt01 = "고3"
                    txt02 = "7월 20일(토)"
                    txt03 = "유선 및 방문 접수 <br> 062) 462-1010"
                    baja_txt01 = "강의실-바자관-자체 식당"
                    icoEnd = "전석 마감<br>대기 접수 중"


End Select
%>

<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="inner02">
            <div class="v-tit01">
                <p>재학생 여름방학 맞춤 시스템</p>
            </div>
            <div class="v-tit02">
                <p><img src="<%=Application("img_path_russel")%>/intro/2024/summer_overall/v_tit02.png" alt="바른공부 자습전용관" /></p>
            </div>
            <div class="v-tit03">
                <div class="tit tit01">
                    <img src="<%=Application("img_path_russel")%>/intro/2024/summer_overall/v_tit03.png" alt="" />
                </div>
                <div class="tit tit02">
                    <img src="<%=Application("img_path_russel")%>/intro/2024/summer_overall/v_tit03.jpg" alt="" />
                </div>
                <div class="tit tit03">
                    <!-- 파도 효과 svg -->
                    <svg viewBox="5 0 100 18">
                        <defs>
                            <path id="wave" d="M 0,10 C 30,10 30,15 60,15 90,15 90,10 120,10 150,10 150,15 180,15 210,15 210,10 240,10 v 28 h -240 z" />
                        </defs>
                        <use id="wave3" class="e-wave e-wave03" xlink:href="#wave" x="0" y="-5"></use>
                      </svg>
                    <!-- //파도 효과 svg -->
                </div>
            </div>  
            <div class="v-tit04">
                <p>성공적인 여름방학을 위해 <br>
                   <strong> 최상위권이 집결하는 <%=txtCampus%> 종합반에서 경쟁</strong>해야 합니다.        
                </p>
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
                    <% If sCampusCode = "CD0342" Then '대구 %>
                        <% if curYmdhmin < 202404301000 then %>
                        <!-- 대구 원서 접수 바로가기 4월 30일 10시 전 -->
                        <dd><%=txt03_before%></dd>
                        <% else %>
                        <!-- 4월 30일 10시 후 반영 -->
                        <dd><%=txt03%></dd>
                        <% End If %> 
                    <% Else %> 
                    <dd><%=txt03%></dd>
                    <% End If %> 
                </dl>
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
        <div class="bg"><img src="<%=Application("img_path_russel")%>/intro/2024/summer_overall/visual_bg.jpg" alt="" /></div>

        <!--마감딱지-->
        <% If sCampusCode = "CD0342" or sCampusCode = "CD0340" Then '대구/광주 %>
        <div class="ico-end" style="top:558px;right:calc(50% - 565px);"><div><%=icoEnd%></div></div>
        <% End If %>
        <!--//마감딱지-->
	</div>

	<!-- quick 플로팅배너 -->

	<!-- <div class="quick">
        <p class="b-tit"><%=quick_tit%></p>
        <a class="q-ban" href="<%=regular_url%>">
            <span>
                수능까지 체계적인<br>
                과목별/수준별 맞춤 단과<br>
            </span>
            <strong><%=regular_txt%></strong>
        </a>
        <a class="q-ban" href="<%=summer_url%>">
            <span>
                반드시 실력이 향상되는<br>
                여름방학 집중 특강                
            </span>
            <strong><%=summer_txt%></strong>
        </a>
	</div> -->
	<!--// quick 플로팅배너 -->
</div>

<!-- fix-menu -->
<nav class="fix-menu-wrap">
    <div class="fix-menu">
        <div class="menu">
            <a class="on" href="javascript:void(0);">썸머스쿨 모집 안내</a>
            <a href="javascript:void(0);">신개념 융합형 종합반</a>
            <a href="javascript:void(0);">최상위권 도약의 기회</a>
            <a href="javascript:void(0);">썸머스쿨 프로그램</a>
        </div>
    </div>
</nav>
<!-- //fix-menu -->
