<%
txtCampus = "러셀"
campusName = "intro"

tit_01 = "모집 대상"
txt_01 = "현 중3&middot; 고1&middot; 고2"

tit_02 = "운영 기간"
txt_02 = "24년 11월 말 ~ 12월 중순"

tit_03 = "접수 기간"
txt_03 = "9/3(화)부터 사전접수 예정"

tit_04 = "접수 방법"
txt_04 = "온라인 접수 <br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"

apply_txt = "원서접수 바로가기"
apply_url = "alert('추후 공개 예정입니다.')"

cont01_day01 = "11월 말 ~ 12월 중순"
cont01_day02 = "12월  말 ~ 2월"
cont01_day03 = "3월 ~ 7월 중순"
cont01_day04 = "7월 중순 ~ 8월 말"
cont01_day05 = "8월 말 ~  수능"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")

    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"                 

    Case "CD0246": txtCampus = "러셀 센텀"   '센텀
                    campusName = "russel_ct"
                    campusName02 = "cont_ct"
                    txt_02 = "24년 12월 16일부터 12월 31일까지"
                    txt_03 = "현재 접수 중"
                    txt_04 = "현장 또는 온라인 접수<br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    cont01_day01 = "12월 16일 ~ 12월 31일"
                    cont01_day02 = "1월 1일 ~ 3월 2일"
                    apply_url = "alert('추후 오픈 예정입니다.')"


    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "cont_dg"
                    txt_02 = "24년 11/25(월) ~ 12/22(일)"
                    txt_03 = "현재 접수 중"
                    cont01_day01 = "11/25~12/22<br> [4주 과정]"
                    cont01_day02 = "1/1~2/28 <br>[8주 과정]"
                    cont01_day03 = "3월~11월"
                    cont01_day04 = "7월 중순~8월 중순"
                    cont01_day05 = "8월 중순 ~ 수능"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=178')"

    Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "cont_us"
                    txt_01 = "현 중3"
                    txt_02 = "11/25(월) ~ 12/20(금)"
                    txt_03 = "24년 9월 ~ 마감 시"
                    txt_04 = "현장 또는 온라인 접수<br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    cont01_day01 = "11/25(월) ~ 12/20(금)"
                    cont01_day02 = "프리윈터 종료 후<br>~ 2월 말 [8주 과정]"
                    cont01_day03 = "학기 중 상시 운영"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=178')"

	Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
                    campusName = "core_gj"
                    campusName02 = "cont_gj"                  
                    txt_01 = "현 고1&middot;고2"
                    txt_02 = "11/23(토)~12/25(수)[5주과정]"
                    txt_03 = "현재 접수 중"
                    txt_04 = "현장 또는 온라인 접수<br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://coregj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=178')"
                    cont01_day01 = "11/23~12/25 <br> [5주 과정]"
                    cont01_day02 = "프리윈터 종료 후 <br>~ 2월 말 [9주 과정]"
                    cont01_day03 = "학기 중 상시 운영"

	Case "CD0341": txtCampus = "러셀CORE 대전"   '코어대전
                    campusName = "core_dj"
                    campusName02 = "cont_dj"
                    txt_01 = "현 고1&middot;고2"
                    txt_02 = "11/25(월)~12/29(일)[5주과정]"
                    txt_03 = "현재 모집 중"
                    txt_04 = "현장 또는 온라인 접수<br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=178')"
                    cont01_day01 = "11/25 ~ 12/29 <br> [5주 과정]"
                    cont01_day02 = "1/1 ~ 2/28 <br> [8주 과정]"
                    cont01_day05 = "9월 ~ 수능"

    Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "cont_wj"
                    txt_01 = "현 중3"
                    txt_02 = "12/2(월)~12/29(일)[4주과정]"
                    txt_03 = "현재 접수 중"
                    txt_04 = "현장 또는 온라인 접수<br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://corewj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=178')"
                    cont01_day01 = "12/2 ~ 12/29 <br> [4주 과정]"
                    cont01_day02 = "1/1 ~ 2/28 <br> [9주 과정]"
                    cont01_day05 = "9월 ~ 12월"

    Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "cont_jj"
                    txt_02 = "11/25(월)~12/27(금)[5주과정]"
                    txt_03 = "현재 모집 중"
                    txt_04 = "현장 또는 온라인 접수<br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://corejj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=178')"
                    cont01_day01 = "11/25 ~ 12/27 <br> [5주 과정]"
                    cont01_day02 = "프리윈터 종료 후 <br> ~ 2월 말"

    Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "cont_cw"
                    txt_02 = "12/2(월)~12/27(금)[4주과정]"
                    txt_04 = "학원 접수(055.605.1010)<br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    cont01_day01 = "12/2 ~ 12/27 <br> [4주 과정]"
                    cont01_day02 = "12/30 ~ 2월 말"
                    cont01_day05= "9월~ 수능"


    Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "cont_cj"
                    txt_02 = "11/23(토)~12/24(화) 5주과정"
                    txt_03 = "현재 접수 중"
                    txt_04 = "현장 또는 온라인 접수<br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    cont01_day01 = "11/23(토)~12/24(화)<br>5주과정"
                    cont01_day02 = "12/30 ~ 2/28"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://corecj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=178')"

End Select
%>



<div class="visual-wrap">
    <a href="/entinfo/entry_pt/enter_pop.asp">
        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/top_banner.jpg" alt="" />
    </a>
    <div class="visual">
        <div class="v-bg">
            <% If campus_code = "INTRO" Then '인트로 %>
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/visual_bg.jpg" alt="">
            <% Else %>
            <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/pre_winter/visual_bg.jpg" alt="">
            <% End If %>
        </div>   
        <div class="v-txt">
            <p>
                겨울을 어떻게 보내느냐가 1년의 결과를 좌우합<span>니다.</span> <br>
                ‘입시 전문 담임선생님의 체계적인 학습관리’와<br>
                ‘수능 시간표 기반의 규칙적인 생활관리’,<br>
                <strong><%=txtCampus%> 2025프리윈터스쿨에서<br>
                완벽한 겨울을 한발 더 빠르게 시작해 보세요.</strong>
            </p>
        </div>
    </div>
    <div class="info-box">
        <div>
            <dl>
                <dt><%=tit_01%></dt>
                <dd><%=txt_01%></dd>
            </dl>
            <dl>
                <dt><%=tit_02%></dt>
                <dd><%=txt_02%></dd>
            </dl>
            <% If campus_code = "INTRO" Then '인트로 %>
            <p class="coment">※ 세부 내용은 학원별 페이지를 확인하여주시기 바랍니다.</p>
            <% Else %>
            <p class="coment">※ 모집요강 지원자격 해당자 순 접수</p>
            <% End If %>
        </div>
    </div>    
</div>



