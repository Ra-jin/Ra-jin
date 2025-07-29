<%
txt_campus = "2024 러셀"
tit_01 = "모집 대상"
txt_01 = "고3,고2,고1"
tit_02 = "개강일"
txt_02 = "매월 순차 개강"
tit_03 = "접수 방법"
txt_03 = "현장 또는 온라인 접수"

goto_apply = ""
go3_url ="/intro/danka/2023/07/go3.asp"
go12_url = "/intro/danka/2023/04/summer.asp"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	'method.asp 인클루드 안한 페이지에서 오류날 수 있지만, 안쓰는 페이지가 없을거라 가정

    Case "CD0247": '강남
                   txt_campus = "러셀 강남"
                   tit_01 = "운영기간"
                   txt_01 = "2023년 11월까지"
                   campusName = "cont_gn"
                   campusName02 = "russel_gn"
                   go3_url ="https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1348"
                   go12_url = "https://mrusselgn.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=262"
                   tit_02 = "모집 학년"
                   txt_02 = "현재 접수 중"
                   txt_03 = "온라인 원서 접수"
                   txt_04 = "고2, 고1"

    Case "CD0001": '대치
                   txt_campus = "러셀 대치"
                   campusName = "cont_dc"
                   txt_01 = "고3"
                   txt_02 = "상시 입학(매주 월/목)"
                   txt_03 = "온라인 접수"
                   go3_url ="https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1349"
                   end_txt = "전반 마감<br>대기자 접수 중"

    Case "CD0245": '목동
                   txt_campus = "러셀 목동"
                   campusName = "cont_md"
                   txt_01 = "고3 마감 임박ㅣ고2 마감"
                   tit_02 = "개강일"
                   txt_02 = "9/1(금) 개강"
                   txt_03 = "<strong>온라인 접수 중</strong><br>※온라인 대기 접수를 완료하면 여석 발생 시 접수 순서대로 유선 안내 혹은 문자 드리겠습니다."
                   go3_url = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1350"
                   go12_url = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1073"

    Case "CD0250": '부천
                   txt_campus = "러셀 부천"
                   campusName = "cont_bc"
                   txt_01 = "고3"
                   txt_02 = "매월 초 순차 개강"
                   txt_03 = "현장 접수 ㅣ모집요강 지원자격 해당자 순 접수 "
                   go3_url ="https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1351"


	Case "CD0244": '분당
                   txt_campus = "러셀 분당"
                   campusName = "cont_bd"
                   campusName02 = "russel_bd"
                   tit_01 = "개강일"
                   txt_01 = "3/2(목)부터 순차적 개강"
                   tit_02 = "접수 기간"
                   txt_02 = "<strong>전석 마감, 대기자 접수 中</strong><br><span>(*모집요강 지원자격 해당자 순 접수)</span>"
                   tit_03 = "접수 방법"
                   txt_03 = "<strong>온라인 대기 접수 후 성적표 제출</strong><br>*온라인 대기 접수를 완료하면 이후 대기 순서에 따라 입학 절차를 개별적으로 안내해드립니다."
                   go3_url = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1352"

	Case "CD0246": '센텀
                   txt_campus = "러셀 센텀"
                   campusName = "cont_ct"
                   txt_01 = "고3,고2,고1"
                   txt_02 = "3월 1일(수) 개강"
                   txt_03 = "현장 접수"
                   go3_url ="https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1358"
                   go12_url = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1371"


    Case "CD0249": '영통
                   txt_campus = "러셀 영통"
                   campusName = "cont_yt"
                   txt_02 = "매월 순차 개강"
                   go3_url = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1353"
                   txt_03 = "현장 접수"
                   go12_url = "https://mrusselyt.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=264"

    Case "CD0257": '중계
                   txt_campus = "러셀 중계"
                   campusName = "cont_jg"
                   txt_01 = "고1,고2,고3"
                   txt_02 = "매월 초 개강"
                   txt_03 = "전석 마감 (대기자 접수 中)"
                   go3_url ="https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1354"
                   go12_url = "https://mrusseljg.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=265"
                   end_txt = "전석 마감<br>(대기자 접수 中)"

	Case "CD0248": '평촌
                   txt_campus = "러셀 평촌"
                   campusName = "cont_pc"
                   campusName02 = "russel_pc"
                   txt_01 = "고1,고2,고3"
                   txt_02 = "10월 순차 개강"
                   go3_url = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1355"
                   go12_url = "https://mrusselpc.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=266"

	Case "CD0342": '대구
                   txt_campus = "러셀 대구"
                   campusName = "cont_dg"
                   txt_01 = "고3,고2 (인문계,자연계)"
                   txt_02 = "10월 순차 개강"
                   go3_url = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1356"
                   txt_03 = "온라인 접수<br>*온라인 원서 접수 완료 시, 이후 입학절차에 대해 개별적으로 안내"

	Case "CD0340": '코어광주
                   txt_campus = "러셀CORE 광주"
                   campusName = "cont_gj"
                   txt_01 = "고3,고2"
                   txt_02 = "매월 초 순차 개강"
                   txt_03 = "현장 또는 온라인 접수"
                   go3_url ="https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1359"

	Case "CD0341": '코어대전
                   txt_campus = "러셀CORE 대전"
                   campusName = "cont_dj"
                   txt_01 = "고2,고3"
                   txt_02 = "매월 초 개강"
                   txt_03 = "현장 또는 온라인 접수"
                   go3_url = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1360"

	Case "CD0343": '코어원주
                   txt_campus = "러셀CORE 원주"
                   campusName = "cont_wj"
                   txt_01 = "고2,고1"
                   txt_02 = "매월 초 개강"
                   txt_03 = "현장 또는 온라인 접수"
                   go3_url ="https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1361"

	Case "CD0344": '코어전주
                   txt_campus = "러셀CORE 전주"
                   campusName = "cont_jj"
                   txt_01 = "고2,고3"
                   txt_02 = "상시 입학 (매주 월/금)"
                   txt_03 = "현장 또는 온라인 접수 <br><a href='https://corejj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=152' class='bt-gray-s'>원서접수 바로가기</a>"
                   go3_url ="https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1362"

	Case "CD0345": '코어창원
                   txt_campus = "러셀CORE 창원"
                   campusName = "cont_cw"
                   txt_01 = "고3,고2"
                   txt_02 = "매월 초 개강"
                   txt_03 = "현장 또는 온라인 접수"
                   go3_url ="https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1363"

	Case "CD0346": '코어청주
                   txt_campus = "러셀CORE 청주"
                   campusName = "cont_cj"
                   txt_01 = "고3,고2"
                   txt_02 = "매월 초 개강"
                   txt_03 = "현장 또는 온라인 접수"
                   go3_url ="https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1364"
                   end_txt = "전석 마감 /<br>대기자 접수 중"
    case else: 
                   campusName = ""             

End Select
%>
<% If campus_code = "CD0247" Then '강남 %>
<!-- 재학생 학습전략 설명회 -->
<!-- <p class="banner img"><a href="https://mrusselgn.megastudy.net/board/notice_view.asp?code=25373"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2022/winter/top_banner.jpg" alt=""></a></p> -->
<!-- //재학생 학습전략 설명회 -->
<% ElseIf campus_code = "CD0250" Then '부천 %>
<p class="banner img"><a href="/entinfo/entry_pt/enter_pop.asp"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/banner_sms_bc.jpg" alt=""></a></p>
<% End If %>
<div class="visual <%=campusName%>">
    <!-- <p class="img bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/visual_russel.jpg" alt="" /></p> -->
    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/bg_visual.jpg" alt="" /></p>
    <p class="img img-r"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/visual_round.png" alt="" /></p>
    <% If campus_code = "CD0247" OR campus_code = "CD0244" OR campus_code = "CD0248" Then '강남/분당/평촌 %>
    <p class="txt01 img" style="padding: 0 8%;box-sizing: border-box;"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/regular_go/v_txt01_v2.png" alt="" /></p>
    <% ElseIf campus_code = "CD0250" Then '부천 %>
    <p class="txt01 img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/v_txt01_bc_v2.png" alt="" /></p>
    <% Else %>
    <p class="txt01 img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular_go/v_txt01_v2.png" alt="" /></p>
    <% End If %>
    <!-- <p class="txt02">
        재학생을 위한 관리는 달라야 합니다.<br>
        최상위권 재학생이 집결하는<br>
        <% If isCore = 1 Then ' 코어 %>러셀CORE<% else %>러셀<% end if %>에서 대입 성공을 시작하세요.
    </p> -->

    <% If campus_code <> "CD0246" and campus_code <> "CD0244" and campus_code <> "CD0245" Then '센텀/분당/목동 제외 %>
    <p class="txt03"><%=txt_02%></p>

    <% ElseIf campus_code = "CD0245" Then '목동 %>
    <p class="txt03">9/1(금) 개강</p>
    <% End If %>
</div>

<!-- 조정식/양승진 설명회 팝업 -->
<!--#include virtual="/intro/pop/2022/pop_pre.asp" -->
<!-- 조정식/양승진 설명회 팝업 -->