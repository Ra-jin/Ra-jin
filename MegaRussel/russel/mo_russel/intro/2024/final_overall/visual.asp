<%
txtCampus = "러셀"
campusName = "intro"

tit_01 = "모집 대상"
txt_01 = "N수"

tit_02 = "개강일"
txt_02 = "9월 순차 개강"

tit_03 = "접수 방법"
txt_03 = ""

tab_txt01 = "모집요강 및<br>지원혜택"
tab_txt02 = "최상위권 집결"

v_txt = "역대 가장 탁월한 입결<sup>*</sup>로 증명된 <br> 러셀에서 최상위권과 경쟁하세요!"
data_view_txt = "2020-2024학년도 러셀에서 배출한 서울대 의예과, 메이저 의대, 전국 의예과, 의치한약수, 서울대/연세대/고려대 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)"

danka_txt = "몰입감이 높고 철저한 관리가<br>진행되는 <strong>현장강의</strong>"
danka_txt02 = "몰입감 높은 현장강의와 <br>최신 출제 경향이 반영된 파이널 모의고사"

danka_final_url = "javascript:alert(`추후 오픈 예정입니다.`)"
danka_am_url = "javascript:alert(`추후 오픈 예정입니다.`)"
danka_non_url = "javascript:alert(`7월 중 오픈 예정입니다.`)"

plusTab = ""
longText = ""
calendar_wide = ""


apply_txt = "원서접수 바로가기"
apply_url = "alert('추후 오픈 예정입니다.')"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"

    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
                    campusName02 = "cont_yt"
                    v_txt = "5년 연속 수원 지역 최상위권 입결 1위<sup>*</sup>, <br> 러셀 영통에서 최상위권과 경쟁하세요!"
                    data_view_txt = "※ 수원 지역 학원_2020~2024학년도 의치한수약+서울대 최종 합격자 수 비교 기준 <br> (홈페이지 대입 실적 기준/2024.03.07 기준)"
                    txt_02 = "10월 개강"
                    txt_03 = "현장 접수 <br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    longText = "long-txt"
                    tel = "031-251-1010"
                    endText = "<strong>마감</strong>"

    Case "CD0257": txtCampus = "러셀 중계"   '중계
                    campusName = "russel_jg"
                    campusName02 = "cont_jg"
                    v_txt = "20-24 5년 최상위권 누적 입결 1위<sup>*</sup>, <br> 러셀 중계에서 재원생들과 경쟁하세요!"
                    data_view_txt = "※ 강북 지역 학원_2020~2024학년도 의치한약수+서연고 누적 합격자 수 비교 기준 (홈페이지 대입 실적 기준/2024.02.29 기준)"
                    txt_01 = "N수"
                    txt_02 = "9월 초 개강"
                    txt_03 = "현장 접수 <br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    longText = "long-txt"
                    tel = "02-6316-1010"
    
    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "cont_dg"
                    v_txt = "대구&middot;경북 지역 최상위권 입결 1위<sup>*</sup>로 증명된 <br> 러셀 대구에서 최상위권과 경쟁하세요!"
                    data_view_txt = "※ 대구·경북 지역 학원_2024학년도 의치한약수+서연고 최종 합격자 수 비교 기준 <br> (홈페이지 대입 실적 기준/2024.02.29 기준)"
                    txt_03 = "온라인 접수 <br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    txt_02 = "10월 초 순차 개강"
                    plusTab = "plus-tab"
                    longText = "long-txt"
                    danka_txt = "<strong>러셀 강남&middot;대치</strong>와<br>동일한 수업"
                    danka_txt02 = "러셀 강남&middot;대치와 동일한 수업 및 <br>최신 출제 경향이 반영된 파이널 모의고사"
                    tel = "053-291-1010"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=176'"

    Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "cont_us"
                    v_txt = "역대 가장 탁월한 입결<sup>*</sup>로 증명된 <br> 러셀에서 최상위권과 경쟁하세요!"
                    data_view_txt = "2020-2024학년도 러셀에서 배출한 서울대 의예과, 메이저 의대, 전국 의예과, 의치한약수, 서울대/연세대/고려대 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)"
                    txt_01 = "N수"
                    txt_02 = "10월 7일(월)"
                    txt_03 = "현장 또는 온라인 접수 <br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    plusTab = "plus-tab"
                    danka_txt = "몰입감 높은 <strong>현장강의</strong>와<br><strong>대치동 LIVE 강의</strong>"
                    danka_txt02 = "몰입감 높은 현장강의와 대치동 LIVE 강의, <br>최신 출제 경향이 반영된 파이널 모의고사"
                    tel = "052-913-1010"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=176')"

	Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
                    campusName = "core_gj"
                    campusName02 = "cont_gj"
                    v_txt = "역대 빛나는 입결<sup>*</sup>로 증명된 <br>러셀CORE 광주에서 경쟁하는 것이 <br>대입 성공의 경쟁력입니다."
                    data_view_txt = "※ 2024학년도 광주 지역 재학생 수석 배출 : 24학년도 대학수학능력시험 응시한 광주 지역 재학생 표준점수 최고점 기준<br>※ 메이저 의예과 9명 배출 : 메이저 의예 - 서울대/연세대/성균관대/가톨릭대/울산대 기준<br>※ 러셀CORE 광주 바른공부 자습전용관 재원생 대입 합격 기준(2024.02.27 기준, 복수 대학 합격자 포함 / 단과 수강생 제외)"
                    longText = "long-txt"
                    txt_01 = "N수&middot;고3"
                    txt_02 = "10월 순차 개강"
                    txt_03 = "현장 접수 <br> <strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    plusTab = "plus-tab"
                    danka_txt = "몰입감 높은 <strong>현장강의</strong>와<br><strong>대치동 LIVE 강의</strong>"
                    danka_txt02 = "몰입감 높은 현장강의와 대치동 LIVE 강의, <br>최신 출제 경향이 반영된 파이널 모의고사"
                    tel = "062-462-1010"

End Select
%>

<div class="visual-wrap <%=campusName%>">

    <!-- 학원 문자 수신 알리미 -->
    <!-- <a href="javascript:void(0)" class="top-banner" onclick="fncAlarmPop()"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a> -->
    <!-- //학원 문자 수신 알리미 -->

    <div class="visual-area">
        <div class="bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final_overall/visual_bg.jpg" alt="" /></div>
        <% If campus_code = "CD0257" Then '중계 %>
        <div class="v-tit01"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/final/v_tit01.png" alt="목표 성적과 대학 합격을 위한 마지막 기회" /></div>
        <div class="v-tit05"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/final_overall/v_tit05.png" alt="최상위권 이과전문관N" /></div>
        <% Else %>
        <div class="v-tit01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final_overall/v_tit01.png" alt="메디컬&최상위권 대학 합격을 위한 마지막 기회" /></div>
        <div class="v-tit05"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final_overall/v_tit05.png" alt="최상위권 이과전문관N" /></div>
        <% End If %>
        <div class="v-tit02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final_overall/v_tit02.png" alt="2025" /></div>
        <div class="v-tit03">
            <div class="n01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final_overall/v_tit03_n01.png" alt="파" /></div>
            <div class="n02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final_overall/v_tit03_n02.png" alt="이" /></div>
            <div class="n03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final_overall/v_tit03_n03.png" alt="널" /></div>
        </div>
        <div class="v-tit04"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final_overall/v_tit04.png" alt="종합반" /></div>
        <p class="v-txt">
            <%=v_txt%>
        </p>

        <!-- 데이터 산출 기준-->
        <div class="l-pop">
            <a href="javascript:void(0)" class="gr-data">데이터 산출 기준</a>
        </div>
        <div class="layer-wrap">
            <div class="bg-mask"></div>
            <div class="layer-in">
                <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                <ul class="list-star">
                    <%=data_view_txt%>                          
                </ul>
            </div>
        </div>
        <!-- //데이터 산출 기준 -->

        <div class="v-info">
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
        <div class="graphWrap <%=longText%>">
            <div class="v-object"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final_overall/v_object01.png" alt="트로피 든 사람" /></div>
            <div class="graph graph01" >
              <img class="p-01" src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final_overall/v_graph01.png" alt="그래프" />
            </div>
            <div class="graph graph02" >
              <img class="p-02" src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final_overall/v_graph02.png" alt="그래프" />
            </div>
            <div class="graph graph03" >
              <img class="p-03" src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final_overall/v_graph03.png" alt="그래프" />
            </div>
            <div class="graph graph04" >
              <img class="p-04" src="<%=Application("img_path_russel")%>/m_russel/intro/2024/final_overall/v_graph04.png" alt="그래프" />
            </div>
        </div>        
	</div>    
</div>