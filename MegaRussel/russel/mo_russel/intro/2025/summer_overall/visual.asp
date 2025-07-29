<%
txtCampus = "러셀"
campusName = "intro"

tit01 = "모집 대상"
txt01 = "고2, 고3"
tit02 = "개강일"
txt02 = "7월 순차 개강"
tit03 = "접수 방법"
txt03 = "현장 또는 온라인 접수  <br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
<!-- txt02 = "현장 또는 온라인 접수<br><span class='comment'>* 모집과 관련된 자세한 내용은 학원별 페이지에서 확인하실 수 있습니다.</span>" -->
stxt_pos = ""

apply_txt = "원서접수 바로가기"
apply_url = "alert('추후 오픈 예정입니다.')"

danka_summer_url  = "javascript:alert('추후 오픈 예정입니다.')"
danka_regular_url = "javascript:alert('추후 오픈 예정입니다.')"

baja_txt = "자체 식당 운영"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
                   
    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "cont_dg"
                    txt02 = "7월 중순 개강"
                    txt03 = "온라인 접수 <br><span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"        
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=190'"    
                    endText = "고3 마감임박<br>고2 마감(대기)"      
                   

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "cont_gj"    
                    txt01 = "고3"                
                   
	     
                    
End Select
%>


<% If campus_code = "CD0244" Then '분당 %>    
<!-- 학원 문자 수신 알리미 -->
<!-- <a href="javascript:void(0)" class="top-banner" onclick="window.open('https://russelbd.megastudy.net/popup/popup_sms_alarm.asp?EM_NUM=127&stype=f', 'popupWindow', 'width=600,height=700,scrollbars=yes');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a> -->
<!-- <a href="https://mrusselbd.megastudy.net/entinfo/entry_pt/enter_pop.asp" class="top-banner"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a> -->
<!-- <a href="javascript:void(0)" class="top-banner" onclick="alert('추후 오픈 예정입니다.')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a> -->
<!-- //학원 문자 수신 알리미 -->
<% ElseIf campus_code = "INTRO" Then '인트로 %>
    <% if curYmdhmin < 202501261500 then %>
    <!-- <a href="/event/2026/gisuk_pre/index.asp" class="top-banner"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/quick_encore.jpg" alt="앙코르 2026 N수 성공전략 설명회"></a>  -->
    <% Else %>
    <% End If %>
<% End If %>
<div class="visual-wrap <%=campusName%>">

	<div class="visual-area">
        <div class="v-bg">
            <svg width="0" height="0" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <filter id="water">
                    <feTurbulence type="fractalNoise" baseFrequency=".02 .02" numOctaves="1" result="noise1"></feTurbulence>
                    <feColorMatrix in="noise1" type="hueRotate" values="0" result="noise2">
                        <animate attributeName="values" from="0" to="360" dur="1s" repeatCount="indefinite"/>
                    </feColorMatrix>
                    <feDisplacementMap xChannelSelector="R" yChannelSelector="G" scale="20" in="SourceGraphic" in2="noise2" />
                </filter>
            </svg>
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer_overall/v_bg.jpg" alt="">
        </div>
        <div class="v-bubble">
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer_overall/v_bubble.png" alt="최상위권 도약을 위한 재학생 맞춤 시스템">
        </div>
        <div class="v-obj01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/v_obj01.png" alt=""></div>
        <div class="v-obj02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/v_obj02.png" alt=""></div>


        <div class="tit-wrap">
            <% If campus_code = "CD0342" Then '대구 %>    
            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer_overall/v_tit.png" alt="2026 바른공부 자습전용관" /></p>
            <% Else %>
            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer_overall/v_tit.png" alt="2026 바른공부 자습전용관" /></p>
            <% End If %>

            <div class="v-wave01">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/v_wave01.png" alt="" />
            </div>
            <div class="v-wave02">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/v_wave02.png" alt="" />
            </div>
        </div>          
        <!-- <a href="javascript:CastPopup('https://tv.naver.com/v/74149532')" class="v-play"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/v_play.png" alt="" /></a> -->
        <div class="v-txt">
            올여름, N수생과 격차를 좁히는 방법 <br>           
            <strong>               
                최상위권이 되고자 한다면, <br>
                최상위권이 집결하는 <%=txtCampus%> 종합반에서!
            </strong>
        </div>
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
	</div>
</div>