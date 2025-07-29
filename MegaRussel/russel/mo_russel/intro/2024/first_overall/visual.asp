<%
txtCampus = "러셀"
campusName = "intro"

tit_01 = "개강일"
txt_01 = "12월 순차 개강"

tit_02 = "접수 방법"
txt_02 = "현장 또는 온라인 접수 <br> <span class='comment'>*자세한 내용은 학원별 모집 요강 참조</span>"

apply_txt = "원서접수 바로가기"
regular_url ="https://russel.megastudy.net/intro/danka/2024/01/go3.asp"

time_txt = ""
graph_con = "graph-con"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")

    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
                    campusName02 = "cont_yt"
                    
                    tit_01 = "개강일"
                    txt_01 = "1차 개강 : 1/5(금) <br>2차 개강 : 2/5(월)"
                    
                    tit_02 = "접수 방법"
                    txt_02 = "현장 접수"

                    time_txt = "21"
                    regular_url =""
                    graph_con = "not-graph-con"

    Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "cont_us"

                    tit_01 = "개강일"
                    txt_01 = "2024년 1월 개강"
                    
                    tit_02 = "접수 방법"
                    txt_02 = "현장 또는 온라인 접수"

                    time_txt = "21"
                    regular_url =""
                    graph_con = "graph-con"


    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "cont_dg"
                    
                    tit_01 = "개강일"
                    txt_01 = "1월 1일(월) 개강"
                    
                    tit_02 = "접수 방법"
                    txt_02 = "온라인 접수"

                    regular_url =""

                    time_txt = "17.5"
                    graph_con = "graph-con"

    
    Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
                    campusName = "core_gj"
                    campusName02 = "cont_gj"
                    
                    tit_01 = "개강일"
                    txt_01 = "1/1(월)"
                    
                    tit_02 = "접수 방법"
                    txt_02 = "현장 또는 온라인 접수"

                    time_txt = "21"
                    graph_con = "not-graph-con"

                    regular_url ="https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1488"

End Select
%>




<div class="visual-wrap">

    <!-- 학원 문자 수신 알리미 -->
    <!-- <a href="javascript:void(0)" class="top-banner" onclick="fncAlarmPop()"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a> -->
    <!-- //학원 문자 수신 알리미 -->


    <div class="visual-area <%=campusName%>">
        <div class="scene03">
            <div class="fadeIn">
                <div class="bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/scene03_bg.png" alt="" /></div>
                <div class="inner">
                    <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/scene03_stit.png" alt="단과 수업과 의무자습을 한방에!" /></p>
                    <h1 class="v-tit-wrap">
                        <p class="<%=campusName%>"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first_overall/scene03_tit01.png" alt="2025 러셀" /></p>
                        <p class="v-tit01 animate__bounceInRight"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/scene03_tit02.png" alt="재수생" /></p>
                        <p class="v-tit02 animate__bounceInLeft"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/scene03_tit03.png" alt="우선선발반" /></p>
                    </h1>
                    <p class="v-txt"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/scene03_stit02.png" alt="안주할 것인가, 도전할 것인가 한발 더 빠른 시작으로 최상위권 대입성공을 쟁취하라!" /></p>
                    <div class="v-info">
                        <div>
                            <dl>
                                <dt><%=tit_01%></dt>
                                <dd><%=txt_01%></dd>
                            </dl>
                            <% If campus_code = "CD0249" Then '영통 %>
                            <dl>
                                <dt><%=tit_02%></dt>
                                <dd><%=txt_02%></dd>
                            </dl>
                            <span class='comment' style='font-size: 1.5rem;color: #fff;width: 109%;'>※ 모집요강 지원자격 해당자 순 접수</span>
                            <% Else %>
                            <dl>
                                <dt><%=tit_02%></dt>
                                <dd><%=txt_02%></dd>
                            </dl>
                            <% End If %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="scene02">
            <div class="fadeIn">
                <div class="bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/scene02_bg.jpg" alt="" /></div>
                <div class="inner">
                    <div class="l-ribbon slide-out-fwd-left"><img class="" src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/scene02_left_ribbon.png" alt="" /></div>
                    <div class="r-ribbon slide-out-fwd-right"><img class="" src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/scene02_right_ribbon.png" alt="" /></div>
                    <div class="scale-in-center">
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/scene02_txt01.png" alt="한발 더 빠른 시작으로" /></p>
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/scene02_txt02.png" alt="최상위권 대입성공을 쟁취하라!" /></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="scene01">
            <div class="bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/scene01_bg.jpg" alt="" /></div>
            <div class="inner">
                <p class="l-tit"><img class="slide-in-blurred-top delay" src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/scene01_left_text.png" alt="안주할 것인가," /></p>
                <p class="r-tit"><img class="slide-in-blurred-top delay" src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/scene01_right_text.png" alt="도전할 것인가" /></p>
            </div>
        </div>
	</div>    
</div>