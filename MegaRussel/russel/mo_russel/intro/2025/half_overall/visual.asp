<%

tit01 = "개강일"
txt01 = ""
tit02 = "접수 방법"
txt02 = ""
tit03 = "모집 대상"

apply_txt = "원서접수 바로가기"
apply_url = "alert('추후 오픈 예정입니다.')"

chart_minute = "770"

regular_url = "alert(`추후 오픈 예정입니다.`)"
am_url = "alert(`추후 오픈 예정입니다.`)"
result_url = ""

danka_list01 = "<strong>러셀 강남&middot;대치&middot;기숙</strong> 및 <br> <strong>메가스터디 인강</strong> 출강"
danka_list02 = "종합반 주요 과목 <br> <strong>현장 강의 진행</strong>"
danka_list03 = "과목별 성취도에 맞춘 <br> <strong>수준별 맞춤 수업</strong>"
danka_list04 = "<strong>1:1 맞춤 관리</strong> 및 <br> <strong>질의응답 직접 진행</strong>"

last = "last-slide"
food_txt = "한 건물 내에서 강의실과 바자관, 식당을"
jsContWrap = ""

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"


    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
                    campusName02 = "cont_yt"
                    txt01 = "매월 초 개강"
                    txt02 = "현장 접수"
                    chart_minute = "730"
                    food_txt = "한 건물 내에서 강의실과 바자관, 급식을"

    Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "cont_us"
                    txt01 = "6월 30일(월) 개강" 
                    txt02 = "현장 또는 온라인 접수"
                    chart_minute = "720"


    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "cont_dg"
                    txt01 = "현재 모집 중"
                    txt02 = "온라인 접수"
                    danka_list02 = "종합반 전 과목 <br> <strong>현장 강의 진행</strong>"
                    apply_url = "alert(`원서접수는 PC페이지에서 가능합니다.`); location.href=`https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=188`"

    Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "cont_gj"
                    txt01 = "매월 순차 개강"
                    txt02 = "현장 또는 온라인 접수"
                    regular_url ="location.href=`https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1950`"
                    
End Select
%>


<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="obj-wrap">
            <p class="v-obj01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half_overall/v_arr.png" alt="상승화살표" /></p>
        </div>
        <% If campus_code <> "CD0248" Then '평촌 제외 %>
        <p class="v-tit01"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half_overall/v_stit.png" alt="더 빠르게, 더 높은 목표에 도달하는 반수 성공 공식" /></p>
        <% End If %>
        <p class="v-tit02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half_overall/v_tit01.png" alt="2026" /></p>
        <p class="v-tit03"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half_overall/v_tit02.png" alt="반수반" /></p>
        <% If campus_code = "CD0349" or campus_code = "CD0248" Then '울산/평촌 %>
        <p class="v-txt">
            <%=txtCampus%> 반수종합반에서 경쟁하는 것이 <br>
            바로 <strong>대입성공의 경쟁력</strong>입니다.            
        </p>
        <% Else %>
        <p class="v-txt">
            불필요한 수업은 <strong>줄이고, <br>
            </strong> 꼭 필요한 시간은 <strong>최대로!</strong>
        </p>
        <% End If %>
        <div class="v-info">
            <div>
                <dl>
                    <dt><%=tit01%></dt>
                    <dd><%=txt01%></dd>
                </dl>
                <dl>
                    <dt><%=tit02%></dt>
                    <dd><%=txt02%></dd>
                </dl>
            </div>
        </div>
        <% If campus_code = "INTRO" Then '인트로 %>
        <ul class="stxt">
            <li>
                *학원별 일정 및 모집요강은 상이할 수 있으니, <br>
                자세한 내용은 학원별 페이지에서 확인 부탁드립니다.
            </li>
        </ul>
        <% Else %>
        <ul class="stxt">
            <li>
                ※ 모집요강 지원자격 해당자 순 접수
            </li>
        </ul>
        <% End If %>

        <!--마감딱지-->
        <!-- <div class="ico-end" style="top:310px;right:calc(50% - 500px);"><div><%=icoEnd%></div></div> -->
        <!--//마감딱지-->
	</div>
</div>