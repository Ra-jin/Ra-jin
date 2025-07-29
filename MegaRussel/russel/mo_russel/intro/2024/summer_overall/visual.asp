<%
txtCampus = "러셀"
campusName = "intro"

tit_01 = "모집 대상"
txt_01 = "고3&middot;고2&middot;고1"

tit_02 = "개강일"
txt_02 = "7월 순차 개강"

tit_03 = "수업 기간"
txt_03 = "추후 공지"

tit_04 = "수업 과목"
txt_04 = "추후 공지"

tit_05 = "접수 방법"
txt_05 = "현장 또는 온라인 접수"

tit_06 = "수강료"
txt_06 = "추후 공지"

tit_07 = "제출 서류"
txt_07 = "추후 공지"

comment = "※ 모집요강 지원자격 해당자 순 접수"

danka_summer_url = "javascript:alert('추후 오픈 예정입니다.');"
danka_regular_url = "javascript:alert('추후 오픈 예정입니다.');"

apply_txt = "원서접수 바로가기"
apply_url = "alert('추후 오픈 예정입니다.')"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")

    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
                    campusName02 = "cont_yt"
                    tel = "031-251-1010"

    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "cont_dg"
                    txt_01 = "고1&middot;고2&middot;고3"
                    txt_01_1 = "2024년 고1,고2,고3"
                    txt_02_1 = "7/20(토)~8/15(목)"
                    tit_02 = "기간"
                    txt_02 = "7/20(토)~8/15(목)"
                    txt_03 = "2024년 7월 ~ 8월,  4주 과정"
                    txt_04 = "국어, 수학, 영어, 탐구, 논술"
                    txt_05 = "온라인 접수"
                    txt_06 = "고1 : 800,000원  / 고2 , 고3 : 1,100,000원"
                    txt_07 = "* 2024년 전국 모의고사(3월/6월 전국학력평가 중 택 1) 성적표 1부 <br>* 성적증명서(직전 학기까지 성적 반영) 1부 <br>※ 성적증명서는 내신 성적으로 입학 희망자의 경우에만 제출"
                    tit_08 = "상담 안내"
                    txt_08 = "상담 가능 시간 : 오전 9시30분~오후 8시30분 (식사시간 11:30~12:30, 17:30~18:30 제외) <br>※ 대표번호 : 053-291-1010 또는 온라인 상담"
                    tel = "053-291-1010"
                    apply_url = "alert('4/30(화) 10시 부터 가능합니다.')"
                    endText = "고1마감(추가개설)<br>고2마감(대기접수)"


    Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "cont_us"
                    txt_01 = "고1&middot;고2&middot;고3"
                    txt_01_1 = "고3&middot;고2&middot;고1"
                    txt_02_1 = "<b>추후 공지</b>"
                    txt_03 = "<b>추후 공지</b>"
                    txt_04 = "국어, 수학, 영어, 탐구, 논술"
                    txt_05 = "온라인 접수"
                    txt_06 = "<b>추후 공지</b>"
                    txt_07 = "모의고사 전형 : 2024년 3월 전국 모의고사 (6월은 추후 제출 가능) 성적표 1부 <br>내신 전형 : 생기부 1부"
                    tit_08 = "상담 안내"
                    txt_08 = "상담 가능 시간 : 오전 10시~오후 8시 (식사 시간 12:00~13:30, 17:00~18:30 제외) <br>※ 대표번호 : 052-913-1010"
                    tel = "052-913-1010"

    Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
                    campusName = "core_gj"
                    campusName02 = "cont_gj"
                    tit_01 = "모집 대상"
                    txt_01 = "고3"
                    tit_02 = "개강일"
                    txt_02 = "7월 20일(토)"
                    tit_03 = "수업 기간"
                    txt_03 = "7/20(토)~8/18(일)"
                    tit_04 = "수업 과목"
                    txt_04 = "국어,수학,영어,과탐"
                    tit_05 = "접수 방법"
                    txt_05 = "유선 및 방문 접수 062) 462-1010"
                    tit_06 = "수강료"
                    txt_06 = "1,322,000원"
                    tit_07 = "제출 서류"
                    txt_07 = "* 2024년 전국 모의고사 (3월/6월 전국학력평가 중 택 1) 성적표 1부 <br>* 내신 성적증명서(직전 학기까지 성적 반영) 1부 <br>※  내신성적증명서는 내신 성적으로 입학 희망자의 경우에만 제출"
                    tit_08 = "상담 안내"
                    txt_08 = "방문 상담 (사전예약 필수) /  온라인 상담 / 유선 상담 (☎062-462-1010)"
                    endText = "전석 마감 <br>대기 접수 중"

End Select
%>

<div class="visual-wrap <%=campusName%>">

    <!-- 학원 문자 수신 알리미 -->
    <!-- <a href="javascript:void(0)" class="top-banner" onclick="fncAlarmPop()"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a> -->
    <!-- //학원 문자 수신 알리미 -->

    <div class="visual-area">
        <div class="bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer_overall/visual_bg.jpg" alt="" /></div>

        <div class="v-tit01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer_overall/v_tit01.png" alt="재학생 여름방학 맞춤 시스템" /></div>
        <div class="v-tit02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer_overall/v_tit02.png" alt="바른공부 자습전용관" /></div>
        <div class="v-tit03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer_overall/v_tit03.png" alt="2024 썸머스쿨" /></div>
        <div class="v-img01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer_overall/v_img01.png" alt="왼쪽 물방울" /></div>
        <div class="v-img02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer_overall/v_img02.png" alt="오른쪽 물방울" /></div>
        
        <p class="v-txt">
            성공적인 여름방학을 위해 <br>
            <strong>최상위권이 집결하는 <%=txtCampus%> 종합반에서 경쟁</strong>해야 합니다.
        </p>

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
            <p class="comment"><%=comment%></p>
        </div>
	</div>    
</div>