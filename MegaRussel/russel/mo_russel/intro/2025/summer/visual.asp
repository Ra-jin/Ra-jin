<%
txtCampus = "러셀"
campusName = "intro"

tit01 = "모집 대상"
txt01 = "고1~고3"
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

summer_danka_txt ="바로가기"
summer_danka_txt02 ="바로가기"

baja_txt = "자체 식당 운영"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"                  
                    txt03 = "현장 또는 온라인 접수"
                    danka_summer_url  = "/intro/danka/2025/07/summer.asp"
                    danka_regular_url = "https://mrussel.megastudy.net/intro/danka/2025/08/go3.asp"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "cont_gn"
                    txt01 = "고3, 고2, 고1"
                    tit02 = "운영 기간"
                    txt02 = "7/19(토) ~ 8/17(일)"
                    txt03 = "온라인 접수 <br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'"
                    summer_danka_txt = "고2&middot;고1 바로가기"
                    summer_danka_txt02 = "고3&middot;N수 바로가기"
                    danka_summer_url = "https://mrusselgn.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=390"
                    danka_summer_url02 = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1987"
                    danka_regular_url = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=2054"
                    endText ="마감임박<br>최종등록 진행중"

                    
    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
                    campusName02 = "cont_dc"
                    tit02 = "운영 기간"
                    txt02 = "7/19(토) ~ 8/17(일)"
                    txt01 = "고3, 고2, 고1"
                    txt03 = "온라인 접수  <br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"       
                    summer_danka_txt = "고2&middot;고1 바로가기"
                    summer_danka_txt02 = "고3&middot;N수 바로가기"   
                    danka_summer_url = "https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2007"
                    danka_summer_url02 = "https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1988"      
                    danka_regular_url = "https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2055"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russeldc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'"
                    endText = "전반 마감<br>대기자 접수 중"

    Case "CD0245": txtCampus = "러셀 목동"   '목동
                    campusName = "russel_md"
                    campusName02 = "cont_md"
                    txt01 = "고3"
                    tit02 = "운영 기간"
                    txt02 = "7/21(월) ~ 8/17(일)"
                    txt03 = "온라인 접수 <br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"                  
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelmd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'"
                    danka_summer_url = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1989"
                    danka_regular_url = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=2056"
                    endText = "마감 <br> 등록 안내 중"

    Case "CD0250": txtCampus = "러셀 부천"   '부천
                    campusName = "russel_bc"
                    campusName02 = "cont_bc"
                    txt01 = "고1 &middot; 고2 &middot; 고3"
                    txt02 = "7월 21일(월)부터 순차 개강"  
                    danka_summer_url = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1990"
                    danka_summer_url02 = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1992"      
                    danka_regular_url = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2057"     
                    summer_danka_txt = "고1&middot;고2 바로가기"
                    summer_danka_txt02 = "고3 바로가기"
                    apply_txt = "온라인 문의 바로가기"
                    apply_url = "location.href='https://pf.kakao.com/_sFgGxj'"


	Case "CD0244": txtCampus = "러셀 분당"   '분당
                    campusName = "russel_bd"
                    campusName02 = "cont_bd"
                    txt01 = "고3 &middot; 고2"
                    tit02 = "기간"
                    txt02 = "7/19(토)~8/17(일) [4주]"
                    tit03 = "접수 상태"
                    txt03 = "마감, 대기자 접수 中 <br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    apply_txt = "대기 접수 바로가기"
                    apply_url = "alert('대기 접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelbd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'"    
                    danka_summer_url = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1993" 
                    danka_regular_url = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=2058"      
                    endText = "전석 마감<br>대기자 접수 中"
                
                   
	Case "CD0246": txtCampus = "러셀 센텀"   '센텀
                    campusName = "russel_ct"
                    campusName02 = "cont_ct"
                    txt01 = "고3 &middot; 고2 &middot; 고1 &middot; 중3"
                    txt02 = "7월 19일(토) 개강"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'"    
                    danka_summer_url = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=2000"  
                    danka_regular_url = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=2064"
                    endText ="전반 마감<br>대기자 접수 중"


    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
                    campusName02 = "cont_yt"
                    txt01 = "고3 &middot; 고2 &middot; 고1 &middot; 중3"
                    tit02 = "운영 기간"
                    txt02 = "7/19(토)~8/17(일)<br>※ 30일 필수 이용"
                    txt03 = "사전접수 마감 <br><span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    apply_url = "alert('대기접수는 PC 페이지에서 가능합니다.'); location.href='https://russelyt.megastudy.net/russel/info/waiting/list.asp?ClsCode=2'"
                    apply_txt = "온라인 대기 바로가기"
                    summer_danka_txt = "중3&middot;고1&middot;고2 바로가기"
                    summer_danka_txt02 = "고3 바로가기"
                    danka_summer_url = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1994" 
                    danka_summer_url02 = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1995"      
                    danka_regular_url = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=2059"
                    endText ="사전접수 전체 마감 <br>온라인 대기 접수 중"


    Case "CD0257": txtCampus = "러셀 중계"   '중계
                    campusName = "russel_jg"
                    campusName02 = "cont_jg"
                    txt01 = "중3/고1/고2/고3"
                    tit02 = "운영 기간"
                    txt02 = "7/19(토)~8/17(일) [4주]"         
                    tit03 = "접수 방법"
                    txt03 = "중간 입학 접수 가능<br> 학원으로 문의바랍니다. (☎ 02-6316-1010) <br><span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russeljg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'"
                    danka_summer_url = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1996" 
                    danka_regular_url = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=2060"
                    endText ="마감"

	Case "CD0248": txtCampus = "러셀 평촌"   '평촌
                    campusName = "russel_pc"
                    campusName02 = "cont_pc"
                    txt01 = "중3~고3"
                    tit02 = "운영기간"
                    txt02 = "7/19(토)~8/31(일) | 6주과정"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelpc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'"
                    summer_danka_txt = "중3&middot;고1&middot;고2 바로가기"
                    summer_danka_txt02 = "고3 바로가기"
                    danka_summer_url = "https://mrusselpc.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=391" 
                    danka_summer_url02 = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1997"     
                    danka_regular_url = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2061"  
                    endText ="전 학년 마감"  
                   
    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "cont_dg"
                    txt02 = "7월 중순 개강"
                    txt03 = "온라인 접수 <br><span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'"    
                    danka_summer_url = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1998" 
                    danka_regular_url = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=2062"    
                    endText ="고3 마감임박<br>고2 마감(대기)"
                  
                   
    Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "cont_us"
                    txt01 = "고1 &middot; 고2 &middot; 고3"
                    txt02 = "7월 21일(월)"                  
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'"
                    danka_summer_url = "https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=2001" 
                    danka_regular_url = "https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=2065"
                    endText = "전학년 마감"

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "cont_gj"
                    txt01 = "고3, 고2, 고1"
                    txt02 = "7/19(토)~8/17(일) [4주 과정]"
                    txt03 = "유선 및 방문 접수 062) 462-1010<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coregj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'"
                    danka_summer_url = "https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2002" 
                    danka_regular_url = "https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2066"
                    endText = "남학생 전석마감<br>대기자 접수 중"

	Case "CD0341": txtCampus = "러셀 대전"   '러셀 대전
                    campusName = "core_dj"
                    campusName02 = "cont_dj"
                    txt01 = "고2~고3"
                    tit02 = "운영 기간"
                    txt02 = "7/19(토)~8/15(금) [4주 과정]"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'"
                    danka_summer_url = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1999" 
                    danka_regular_url = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2063"
                    endText ="전석 마감<br>대기자 접수 중"


    Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "cont_wj"
                    txt01 = "중3 &middot; 고1 &middot; 고2 &middot; 고3"
                    tit02 = "기간"
                    txt02 = "7/16(수) ~ 8/14(목)"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corewj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'"
                    danka_summer_url = "https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2003" 
                    danka_regular_url = "https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2067"      
                    endText ="고1 마감<br>중3(남) 마감"
                   
    Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "cont_jj"
                    txt01 = "중3~고3"
                    txt02 = "7/19(토) 개강"
                    baja_txt = "급식실 운영"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corejj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'"
                    danka_summer_url = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2004" 
                    danka_regular_url = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2068"
                    endText ="전 학년<br>마감 임박"      
                   

    Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "cont_cw"
                    txt01 = "고3 &middot; 고2 &middot; 고1"
                    txt02 = "1차 개강 : 7/18(금)<br>2차 개강 : 7/25(금)"
                    txt03 = "온라인 사전예약 접수 <br><span class='comment'>※ 모집 요강 지원자격 해당자 순 접수</span>"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corecw.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'"
                    danka_summer_url = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=2005" 
                    danka_regular_url = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=2069"      
                   
                    
    Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "cont_cj"
                    txt01 = "고3 &middot; 고2 &middot; 고1"
                    txt02 = "7월 개강"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corecj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'"
                    danka_summer_url = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2006" 
                    danka_regular_url = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2070"
                    endText ="고3 마감<br>대기자 접수 중"
                    
End Select
%>


<% If campus_code = "CD0001" Then '대치 %>    
<!-- 학원 문자 수신 알리미 -->
<!-- <a href="javascript:void(0)" class="top-banner" onclick="window.open('https://russelbd.megastudy.net/popup/popup_sms_alarm.asp?EM_NUM=127&stype=f', 'popupWindow', 'width=600,height=700,scrollbars=yes');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a> -->
<!-- <a href="https://mrusseldc.megastudy.net/entinfo/entry_pt/enter_pop.asp" class="top-banner"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a> -->
<!-- <a href="javascript:void(0)" class="top-banner" onclick="alert('추후 오픈 예정입니다.')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a> -->
<!-- //학원 문자 수신 알리미 -->
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
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/v_bg.jpg" alt="">
        </div>
        <div class="v-bubble">
            <% If campus_code = "CD0257" Then '중계 %>
            <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/v_bubble.png" alt="여름 방학, 완벽한 학습 몰입을 위한 재학생 맞춤 시스템">
            <% Else %>
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/v_bubble.png" alt="최상위권 도약을 위한 재학생 맞춤 시스템">
            <% End If %>
        </div>
        <div class="v-obj01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/v_obj01.png" alt=""></div>
        <div class="v-obj02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/v_obj02.png" alt=""></div>


        <div class="tit-wrap">
            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/v_tit.png" alt="2026 바른공부 자습전용관" /></p>
            <div class="v-wave01">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/v_wave01.png" alt="" />
            </div>
            <div class="v-wave02">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/v_wave02.png" alt="" />
            </div>
        </div>          
        <a href="javascript:CastPopup('https://tv.naver.com/v/74149532')" class="v-play"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer/v_play.png" alt="" /></a>
        <div class="v-txt">
            올여름, N수생과 격차를 좁히는 방법 <br>           
            <strong>
                <% If campus_code = "CD0257" Then '중계 %>
                대학 레벨이 상승하는 <br>
                <%=txtCampus%>에서 경쟁하라!
                <% Else %>
                최상위권이 되고자 한다면, <br>
                최상위권이 집결하는 <%=txtCampus%>에서!
                <% End If %>
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
                <% If campus_code = "INTRO"  Then '인트로 %>
                <dl>
                    <dt><%=tit03%></dt>
                    <dd><%=txt03%></dd>
                </dl>
                <% End If %>
            </div>
        </div>
        <% If campus_code = "INTRO" Then '인트로 %>
        <p class="v-stxt">
            * 모집과 관련된 자세한 내용은 학원별 페이지에서 확인하실 수 있습니다.
        </p>
        <% End If %>
	</div>
</div>