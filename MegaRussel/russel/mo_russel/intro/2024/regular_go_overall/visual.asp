<%
txtCampus = "러셀"
campusName = "intro"
campusCom = "russel_com"

tit_01 = "개강일"
txt_01 = "3월 순차적 개강"

tit_02 = "접수 방법"
txt_02 = "현장 또는 온라인 접수"
tit_03 = "모집 대상"
txt_03 = "고3 &middot; 고2 &middot; 고1"

menuTab01 = "장학혜택"
menuTab02 = "최상위권 집결,"

apply_txt = "원서접수 바로가기"
apply_url = "javascript:alert('추후 오픈 예정입니다.');"

regular_url = "/intro/danka/2024/01/go3.asp"
danka_url = "alert('추후 오픈 예정입니다.')"

mjinfo_tit = ""

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")


    Case "CD0257": txtCampus = "러셀 중계"  '중계
                campusName = "russel_jg"
                campusName02 = "cont_jg"
                tel = "02-6316-1010"
                menuTab01 = "지원혜택"
                menuTab02 = "성적 향상과 <br>대학합격을 위한"
                txt_01 = "3/1(금)"
                txt_02 = "현장 접수 <br> <span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                txt_03 = "고3"
                regular_url = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1484"


End Select
%>

<div class="visual-wrap <%=campusName%>">
    <div class="bg">
        <% If campus_code = "CD0247" or campus_code = "CD0244" Then '강남/분당 %>
        <img src="<%=Application("img_path_russel")%>/m_russel/russel_gn/2024/regular_go/visual_bg.png" alt="" />
        <% Else %>
        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go_overall/visual_bg.jpg" alt="" />
        <% End If %> 
    </div>
    <div class="bg-fade bg-fade01"></div>
    <div class="bg-fade bg-fade02"></div>
    <div class="bg-fade bg-fade03"></div>
    
    <div class="visual">
        <div class="v-content">           
            <% If campus_code = "CD0247" or campus_code = "CD0244" or campus_code = "CD0257" or campus_code = "CD0250" Then '강남/분당/중계/부천 %>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_go_overall/v-title.png" alt="2025 바른공부 자습전용관 재학생 정규반" /></p>
            <% Else %>
            <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_go/v-title.png" alt="2025 바른공부 자습전용관 재학생 정규반" /></p>
            <% End If %> 
            <% If isCore = 1 Then '코어 일경우 %>
            <p>재학생을 위한 관리는 달라야 합니다.<br>
                <strong>최상위권이 집결하는 <%=txtCampus%></strong>에서 <br> 대입성공을 시작하세요.
            </p>
            <% ElseIf campus_code = "CD0257" Then '중계 %>
            <p>재학생을 위한 관리는 달라야 합니다.<br>
                <strong>대입 레벨이 상승하는  <%=txtCampus%></strong>에서 <br> 대입성공을 시작하세요.
            </p>

            <% Else %>
            <p>재학생을 위한 관리는 달라야 합니다.<br>
                <span><strong>최상위권이 집결하는 <%=txtCampus%></strong>에서 대입성공을 시작하세요.</span>
            </p>
            <% End If %>         
            <div class="info-box">
                <dl>
                    <dt><%=tit_01%></dt>
                    <dd><%=txt_01%></dd>
                </dl>
                <dl>
                    <dt><%=tit_02%></dt>
                    <dd><%=txt_02%></dd>
                </dl>

                <% If campus_code = "INTRO" Then '인트로 %>
                <p>* 모집과 관련된 자세한 내용은<br>&nbsp;&nbsp;학원별 페이지에서 <br>&nbsp;&nbsp;확인하실 수 있습니다.</p>
                <% ElseIf campus_code = "CD0244" Then '분당 %>
                <p>
                    *2025 재학생(고3) 정규반은 윈터스쿨<br> 재원생 우선 접수 후 잔여석에 한해 모집합니다. <br>
                    - 우선 접수 종료 후 지원자격 해당자 순 <br>개별 연락 드립니다.<br> (잔여석이 없을 경우 자동 대기자 등록됩니다.)
                </p>
                <% End If %>     
            </div>
        </div>
    </div>
</div>