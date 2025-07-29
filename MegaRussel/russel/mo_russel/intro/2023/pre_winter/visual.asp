<%
tit_01 = "모집 대상"
txt_01 = "2024년 고3&middot;고2&middot;고1"

tit_02 = "수업 기간"
txt_02 = "12월 5주 순차 개강<br><span class='coment'>*모집 관련된 자세한 내용은 학원별 페이지 참조</span>"

tit_03 = "접수 기간"
txt_03 = "추후 공지"

tit_04 = "접수 방법"
txt_04 = "추후 공지"

apply_txt = "원서접수 바로가기"
apply_url = "javascript:alert('추후 공개됩니다.');"

regular_url = "https://mrussel.megastudy.net/intro/danka/2024/01/go3.asp"
winter_url = "https://mrussel.megastudy.net/intro/danka/2024/01/winter.asp"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	' method.asp 인클루드 안한 페이지에서 오류날 수 있지만, 안쓰는 페이지가 없을거라 가정

    Case "CD0340": '코어광주
                txt_campus = "러셀CORE 광주"
                campusName = "cont_gj"
                campusName02 = "core_gj"
                tit_01 = "모집 대상"
                txt_01 = "현 고1, 고2"
                tit_02 = "수업 기간"
                txt_02 = "11/24(금) ~ 12/23(토)"
                tit_03 = "접수 기간"
                txt_03 = "10/12(목)부터 접수 시작"
                tit_04 = "접수 방법"
                txt_04 = "온라인 접수 / 현장 접수"

                date01 ="23년 12월"
                date02 ="23년 12월말 ~ (9주)"
                date03 ="24년 3월 ~ 24년 11월"

                grade = "고1~ 고2"

                tt_label = "고1/고2 시간표"

    Case "CD0341": '코어대전
                txt_campus = "러셀CORE 대전"
                campusName = "cont_dj"
                campusName02 = "core_dj"
                tit_01 = "모집 대상"
                txt_01 = "현 고1, 고2"
                tit_02 = "수업 기간"
                txt_02 = "11/27(월) ~ 12/29(금)"
                tit_03 = "접수 기간"
                txt_03 = "10/12(목)부터 접수 시작"
                tit_04 = "접수 방법"
                txt_04 = "온라인 접수 / 현장 접수"

                date01 ="23년 12월"
                date02 ="24년 1월 ~ (8주)"
                date03 ="24년 3월 ~ 24년 11월"

                grade = "고1~ 고2"

                tt_label = "고1/고2 시간표"

    Case "CD0343": '코어원주
                txt_campus = "러셀CORE 원주"
                campusName = "cont_wj"
                campusName02 = "core_wj"
                tit_01 = "모집 대상"
                txt_01 = "현 중3"
                tit_02 = "수업 기간"
                txt_02 = "12/1(금) ~ 12/31(일)"
                tit_03 = "접수 기간"
                txt_03 = "10/12(목)부터 접수 시작"
                tit_04 = "접수 방법"
                txt_04 = "온라인 접수 / 현장 접수"

                date01 ="23년 12월"
                date02 ="24년 1월 ~ (8주)"
                date03 ="24년 3월 ~ 24년 11월"

                grade = "중3"

                tt_label = "중3 시간표"

    Case "CD0344": '코어전주
                txt_campus = "러셀CORE 전주"
                campusName = "cont_jj"
                campusName02 = "core_jj"
                tit_01 = "모집 대상"
                txt_01 = "현 중3, 고1, 고2"
                tit_02 = "수업 기간"
                txt_02 = "12/1(금) ~ 12/29(금)"
                tit_03 = "접수 기간"
                txt_03 = "10/12(목)부터 접수 시작"
                tit_04 = "접수 방법"
                txt_04 = "온라인 접수 / 현장 접수"

                date01 ="23년 11월 ~ (6주)"
                date02 ="24년 1월 ~ (8주)"
                date03 ="24년 3월 ~ 24년 11월"

                grade = "중3~고2"

                tt_label = "고1/고2 시간표"
                tt_label02 = "중3 시간표"

    Case "CD0345": '코어창원
                txt_campus = "러셀CORE 창원"
                campusName = "cont_cw"
                campusName02 = "core_cw"
                tit_01 = "모집 대상"
                txt_01 = "현 중3, 고1, 고2"
                tit_02 = "수업 기간"
                txt_02 = "11/20(월) ~ 12/31(일)"
                tit_03 = "접수 기간"
                txt_03 = "10/12(목)부터 접수 시작"
                tit_04 = "접수 방법"
                txt_04 = "온라인 접수 / 현장 접수"

                date01 ="23년 11월 20일 ~"
                date02 ="23년 12월 29일 ~ (8주)"
                date03 ="24년 3월 ~ 24년 11월"

                grade = "중3~고2"

                tt_label = "고1/고2 시간표"
                tt_label02 = "중3 시간표"

    Case "CD0346": '코어청주
                txt_campus = "러셀CORE 청주"
                campusName = "cont_cj"
                campusName02 = "core_cj"
                tit_01 = "모집 대상"
                txt_01 = "현 중3, 고1, 고2"
                tit_02 = "수업 기간"
                txt_02 = "12/1(금) ~ 12/29(금)"
                tit_03 = "접수 기간"
                txt_03 = "10/12(목)부터 접수 시작"
                tit_04 = "접수 방법"
                txt_04 = "온라인 접수 / 현장 접수"

                date01 ="23년 12월"
                date02 ="24년 1월 ~ (8주)"
                date03 ="24년 3월 ~ 24년 11월"

                grade = "중3~고2"

                tt_label = "고1/고2 시간표"
                tt_label02 = "중3 시간표"


End Select
%>

<div class="visual-wrap">
    <div class="visual">
        <div><img src="<%=Application("img_path_russel")%>/m_russel/core/pre_winter/visual_bg.jpg" alt=""></div>
        <div class="v-tit01"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/visual_txt01.png" alt=""></div>
        <div class="v-tit02"><img src="<%=Application("img_path_russel")%>/m_russel/core/pre_winter/visual_txt02.png" alt=""></div>
		<div class="cal-wrap">
			<p class="v-img01"><img src="<%=Application("img_path_russel")%>/m_russel/core/pre_winter/calendar.png" alt="캘린더" /></p>
			<p class="v-img02"><img src="<%=Application("img_path_russel")%>/m_russel/core/pre_winter/lighting.png" alt="빛나는 효과" /></p>
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
        </div>
    </div>
    
</div>



