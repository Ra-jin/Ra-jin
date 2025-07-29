<%
campusName = "intro"
tit_01 = "모집 대상"
txt_01 = "2024년 고3&middot;고2&middot;고1"
tit_02 = "운영 기간"
txt_02 = "2월 순차 개강<br><span class='coment' style='bottom: -50px;'>*모집 관련된 자세한 내용은 학원별 페이지 참조</span>"
tit_03 = "접수 기간"
txt_03 = "추후 공지"
tit_04 = "접수 방법"
txt_04 = "추후 공지"
regular_url = "https://mrussel.megastudy.net/intro/danka/2024/01/go3.asp"
winter_url = "https://mrussel.megastudy.net/intro/danka/2024/01/winter.asp"
apply_url = "javascript:alert('추후 공개됩니다.');"
apply_txt = "원서접수 바로가기"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	' method.asp 인클루드 안한 페이지에서 오류날 수 있지만, 안쓰는 페이지가 없을거라 가정

    Case "CD0247": '강남
                txt_campus = "러셀 강남"
                campusName = "cont_gn"
                txt_02 = "12월 29일 (금) ~ 2월 29일 (목)"
                tit_03 = "접수 현황"
                txt_03 = "원서 접수자 개별 안내"
                gnName = "강남"
                endText = "<span style='line-height: 1.4; font-size: 1.7rem;'>마감임박</span><br>*고2, 고1 마감"

    Case "CD0001": '대치
                txt_campus = "러셀 대치"
                campusName = "cont_dc"
                dcName = "대치"
                txt_01 = "2024년 고3&middot;고2"
                txt_02 = "1/1(월)~2/29(목)"
                txt_03 = "9월 1일~선착순 마감"
                txt_04 = "온라인 접수"
                regular_url = "https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1479"
                winter_url = "https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1455"
                apply_txt = "대기자 원서접수 바로가기"
                endText = "전반마감<br>대기자 접수 중"

    Case "CD0245": '목동
                txt_campus = "러셀 목동"
                campusName = "cont_md"
                txt_01 = "2024년 고3, 고2, 고1"
                txt_02 = "2024년 1월 2일(화)~2024년 2월 29일(목)"
                tit_03 = "접수 방법"
                txt_03 = "온라인 원서 접수"
                tit_04 = "접수 현황"
                txt_04 = "전석 마감 [대기자 접수 중]"
                apply_txt = "대기자 접수 바로가기"
                regular_url = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1480"
                winter_url = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1456"
                winter_url_go2 = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1457"
                endText = "대기자 접수 중"

    Case "CD0250": '부천
                txt_campus = "러셀 부천"
                campusName = "cont_bc"
                txt_01 = "2024년 고3&middot;고2&middot;고1&middot;중3"
                tit_02 = "개강일"
                txt_02 = "2월 시작반 : 2/1(목)부터 순차적 개강"
                tit_03 = "모집 안내"
                txt_03 = "현재 접수 중"
                tit_04 = "사전예약 방법"
                txt_04 = "온라인 원서 접수<br>*성적표 등록 및 사전예약금 결제"
                apply_txt = "성젹표 제출하기"
                regular_url = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1481"
                winter_url = "https://mrusselbc.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=286"
                endText = "마감 임박"


    Case "CD0244": '분당
                txt_campus = "러셀 분당"
                campusName = "cont_bd"
                bdName = "분당"
                txt_01 = "2024년 고3&middot;고2"
                txt_02 = "2024년 1월 2일(화) ~ <br>2024년 2월 29일(목) [9주]"
                tit_03 = "모집 안내"
                txt_03 = "전석 마감 (*대기자 접수 중)"
                apply_url = "javascript:alert('온라인 대기 신청은 PC 페이지에서 이용 가능합니다.'); location.href='https://russelbd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158';"
                regular_url = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1482"
                winter_url = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1458"
                apply_txt = "온라인 대기 신청 바로가기"
                endText = "전석 마감"

    Case "CD0246": '센텀
                txt_campus = "러셀 센텀"
                campusName = "cont_ct"
                ctName = "센텀"
                txt_02 = "1월 : 12월 26일 (화)부터 순차 개강 <br> 2월 : 2월 1일 (목)부터 순차 개강<br><span class='coment' style='bottom: -20px;font-size: 1.5rem;'>※ 모집요강 지원자격 해당자 순 접수</span>"
                tit_03 = "접수 방법"
                txt_03 = "현장 또는 온라인 원서접수"
                tit_04 = "접수 현황"
                txt_04 = "24년 전 학년 마감 [대기자 접수 중]"
                apply_url = "javascript:alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158';"
                regular_url = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1487"
                winter_url = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1461"
                winter_url_go2 = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1516"
                endText = "전 학년<br>마&nbsp;&nbsp;&nbsp;&nbsp;감"

    Case "CD0249": '영통
                txt_campus = "러셀 영통"
                campusName = "cont_yt"
                ytName = "영통"
                txt_02 = "2024년 1월 1일(월)<br>~ 2024년 2월 29일(목) <br> <span class='f11'>※ 2월 입학 시, <br> 2월 1일(목) ~ 2월 29일(목)</span>"
                tit_03 = "접수 기간"
                txt_03 = "8/9(수) ~ 마감 시"
                tit_04 = "접수 방법"
                txt_04 = "2월 입학 대기 접수 중"
                apply_url = "javascript:alert('대기접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelyt.megastudy.net/russel/info/waiting/list.asp?ClsCode=2';"
                apply_txt = "2월 대기 접수 바로가기"
                endText = "온라인 대기 접수 중<br>현 고1,2 마감"
                regular_url = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1483"
                winter_url = "https://mrusselyt.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=287"
                endText = "2월 입학<br>대기 접수 중"

    Case "CD0257": '중계
                txt_campus = "러셀 중계"
                campusName = "cont_jg"
                jgName = "중계"
                txt_01 = "2024년 고1&middot;고2&middot;고3"
                txt_02 = "<strong>2/1(목)~2/29(목) [5주]</strong><br> <span class='f12' style='font-weight: normal;'>개강 : 2/1(목), 2/5(월) ㅣ OT : 별도 안내</span>"
                tit_03 = "사전예약 <br> 접수기간"
                txt_03 = "~마감시까지"
                tit_04 = "접수 방법"
                txt_04 = "현장 접수"
                apply_txt = "사전예약 바로가기"
                endText = "마감"
                regular_url = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1484"
                winter_url = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1459"


    Case "CD0248": '평촌
                txt_campus = "러셀 평촌"
                campusName = "cont_pc"
                pcName = "평촌"
                txt_02 = "2024년 2월 1일(목)~<br>2024년 2월 29일(목)"
                tit_03 = "접수 기간"
                txt_03 = "현재 선착순 접수 중"
                tit_04 = "접수 방법"
                txt_04 = "온라인, 현장, 유선 접수"
                apply_url = "javascript:alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelpc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158';"
                endText = "전학년 마감<br>대기 접수 중"
                winter_url = "https://mrusselpc.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=288"
                regular_url = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1485"

    Case "CD0342": '대구
                txt_campus = "러셀 대구"
                campusName = "cont_dg"
                txt_01 = "2024년 고3&middot;고2"
                txt_02 = "2024년 2월"
                regular_url_go2 = "javascript:alert('추후 오픈 예정입니다.');"
                txt_03 = "2023년 8월부터~마감 시"
                txt_04 = "온라인 접수"
                winter_url = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1460"
                regular_url = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1486"
                endText = "<strong>마감</strong>"

    Case "CD0349": '울산
                txt_campus = "러셀 울산"
                campusName = "cont_us"
                txt_01 = "2024년 고3&middot;고2"
                txt_02 = "2024년 2월 [5주 과정]"
                txt_03 = "각 반 마감 시"
                txt_04 = "온라인 접수"
                endText = "24년 고2 마감<br>24년 고3 마감"
                apply_url = "javascript:alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158';"
                winter_url = "https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=1511"
                regular_url = "https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=1510"

    Case "CD0340": '코어광주
                txt_campus = "러셀CORE 광주"
                campusName = "cont_gj"
                gjName = "CORE 광주"
                txt_01 = "현 고2&middot;고1"
                txt_02 = "2023년 12월 28일~2024년 2월[8주 완성]"
                txt_03 = "2023년 8월~마감 시"
                txt_04 = "현장 또는 온라인 접수"
                regular_url = "https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1488"
                winter_url = "https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1462"

    Case "CD0341": '코어대전
                txt_campus = "러셀CORE 대전"
                campusName = "cont_dj"
                djName = "CORE 대전"
                txt_01 = "2024년 고3&middot;고2"
                txt_02 = "2024년 1월~2024년 2월 [8주 완성]"
                tit_03 = "접수 기간"
                txt_03 = "2023년 8월부터 사전 예약 시작"
                tit_04 = "접수 방법"
                txt_04 = "현장 또는 온라인 접수"
                endText = "<strong class='f12'>전석마감<br>대기자 접수중</strong>"
                regular_url = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1489"
                winter_url = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1463"

    Case "CD0343": '코어원주
                txt_campus = "러셀CORE 원주"
                campusName = "cont_wj"
                txt_02 = "2024년 1월 2일 개강 (8주 완성)"
                tit_03 = "접수 기간"
                txt_03 = "현재 모집 중"
                tit_04 = "접수 방법"
                txt_04 = "현장 또는 온라인 접수"
                regular_url = "https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1490"
                winter_url = "https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1464"

    Case "CD0344": '코어전주
                txt_campus = "러셀CORE 전주"
                campusName = "cont_jj"
                txt_02 = "2024년 2월 [4주 완성]"
                txt_03 = "2024년 12월~마감 시"
                txt_04 = "현장 또는 온라인 접수"
                apply_url = "javascript:alert('추후 오픈 예정입니다.');"
                endText = "<strong class='f12'>마감<br>대기자 접수 중</strong>"
                regular_url = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1491"
                winter_url = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1465"

    Case "CD0345": '코어창원
                txt_campus = "러셀CORE 창원"
                campusName = "cont_cw"
                txt_01 = "2024년 고3&middot;고2&middot;고1"
                txt_02 = "2/1(목) 개강"
                tit_03 = "접수 방법"
                txt_03 = "현장 또는 온라인 접수"
                tit_04 = "접수 현황"
                txt_04 = "대기자 접수 중｜문의(055.605.1010)"
                endText = "<strong class='f12'>전석마감<br>대기자 접수 중</strong>"
                regular_url = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1492"
                winter_url = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1466"

    Case "CD0346": '코어청주
                txt_campus = "러셀CORE 청주"
                campusName = "cont_cj"
                txt_01 = "2024년 고1~고3"
                txt_02 = "2024년 2월"
                tit_03 = "접수 기간"
                txt_03 = "현재 접수 중"
                tit_04 = "접수 방법"
                txt_04 = "현장 또는 온라인 접수"
                regular_url = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1493"
                winter_url = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1467"
                apply_url = "javascript:alert('추후 오픈 예정입니다.');"


End Select
%>

<% If campus_code <> "CD0001" and campus_code <> "INTRO" and campus_code <> "CD0247" and campus_code <> "CD0245" and campus_code <> "CD0249" and campus_code <> "CD0257" and campus_code <> "CD0248" and campus_code <> "CD0342" and campus_code <> "CD0246" and campus_code <> "CD0349" and isCore <> "1" and campus_code <> "CD0250" and campus_code <> "CD0244" Then '대치/인트로/강남/목동/영통/중계/평촌/대구/센텀/울산/코어전체/부천/분당 제외 %>
<!-- 학원 문자 수신 알리미 -->
<a href="javascript:void(0)" class="top-banner" onclick="fncAlarmPop()"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a>
<!-- //학원 문자 수신 알리미 -->
<% End If %> 
<div class="visual-wrap">
    <div class="visual">
        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/visual_bg.jpg" alt=""></div>
        <div class="light-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/light.png" alt=""></div>
        <% If campus_code = "CD0257" Then '중계 %>
        <div class="v-txt"><img src="<%=Application("img_path_russel")%>/m_russel/russel_jg/2023/winter/visual_txt01.png" alt="올 겨울, 최상위권의 목표가 현실이 됩니다."></div>
        <div class="v-tit01"><img src="<%=Application("img_path_russel")%>/m_russel/russel_jg/2023/winter/visual_txt02.png" alt="겨울방학, 실력 향상을 넘어 최상위권으로!"></div>
        <% Else %>
        <div class="v-txt"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/visual_txt01.png" alt="올 겨울, 최상위권의 목표가 현실이 됩니다."></div>
        <div class="v-tit01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/visual_txt02.png" alt="겨울방학, 실력 향상을 넘어 최상위권으로!"></div>
        <% End If %>
        
        <% If campus_code = "INTRO" Then '인트로 %>
        <div class="v-tit02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/visual_txt03.png" alt="2024 러셀 윈터스쿨"></div>
        <% Else %>
        <div class="v-tit02 type02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/visual_txt03_<%=campusName%>.png" alt="2024 러셀 윈터스쿨"></div>
        <% End If %>

        <!--2월 시작반 모집 중 딱지-->
        <% If campus_code = "INTRO"  or campus_code = "CD0250" or campus_code = "CD0257" or campus_code = "CD0246" or campus_code = "CD0349" or campus_code = "CD0343" or campus_code = "CD0344" or campus_code = "CD0345" or campus_code = "CD0346" or campus_code = "CD0248" Then '인트로/부천/중계/센텀/울산/코어원주/코어전주/코어창원/코어청주/평촌 %>
        <div class="mozip">
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/ico_mozip01.png" alt="2월 시작반 딱지" />
            <!-- <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/ico_mozip02.png" alt="2월 시작반 딱지" /> -->
        </div>
        <% End If %>
        <!--//2월 시작반 모집 중 딱지-->
    </div>
    <div class="info-box <%=campusName%>">
        <div>
            <dl>
                <dt><%=tit_01%></dt>
                <dd><%=txt_01%></dd>
            </dl>
            <dl>
                <dt><%=tit_02%></dt>
                <dd><%=txt_02%></dd>
            </dl>
        </div>
    </div>
    
</div>
<script>
	function msg_box(){
		alert('온라인 접수는 PC버전에서 이용가능합니다');
	}
</script>


