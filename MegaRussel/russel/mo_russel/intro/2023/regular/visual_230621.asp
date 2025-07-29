<%
caumpus_name = "러셀"
open_date = "개강일"
open_date_txt = "7월 순차 개강"
a_method  = "접수 방법"
a_method_txt  = "현장 또는 온라인 접수 <br> 현재 모집 중"
a_method_txt02  = "현장 또는 온라인 접수 | 현재 모집 중"

result_url = "https://mrussel.megastudy.net/perfect/2023/susi/index.asp"

danka_am_url = "/intro/danka/2023/07/am.asp"
danka_regular_url = "/intro/danka/2023/07/go3.asp"
danka_special_url = "javascript:alert('추후 오픈 예정입니다.');"

book_quel_url = "https://mrussel.megastudy.net/event/2021/quel/default.asp"
book_premium_url = "https://mrussel.megastudy.net/intro/2022/premium/index.asp"
book_weekly_url = "https://mrussel.megastudy.net/intro/2022/weekly/index.asp"
book_monthly_url = "https://mrussel.megastudy.net/intro/info/2022/monthly/index.asp"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	' method.asp 인클루드 안한 페이지에서 오류날 수 있지만, 안쓰는 페이지가 없을거라 가정
    Case "INTRO": txtCampus = "러셀"  '인트로
                  caumpus_code = "russel"

    Case "CD0247": '강남
                   caumpus_name = "러셀 강남"
                   caumpus_code = "russelgn"
                   open_date = "접수 현황"
                   open_date_txt = "현재 모집 중"
                   a_method_txt02  = "온라인 접수"
                   applyUrl = "https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=148"

                   result_url = "https://mrusselgn.megastudy.net/russel_gn/event/2022/interview/index.asp"
                   danka_am_url = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1389"
                   danka_regular_url = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1348"
                   danka_special_url = "javascript:alert('추후 오픈 예정입니다.');"
                   book_quel_url = "https://mrusselgn.megastudy.net/event/2021/quel/default.asp"
                   book_premium_url = "https://mrusselgn.megastudy.net/intro/2022/premium/index.asp"
                   book_monthly_url = "https://mrusselgn.megastudy.net/intro/info/2022/monthly/index.asp"

    Case "CD0001": '대치
                   caumpus_name = "러셀 대치"
                   caumpus_code = "russeldc"
                   open_date_txt = "상시 입학(매주 월/목)"
                   a_method_txt02  = "온라인 접수ㅣ 현재 모집 중"
                   applyUrl = "https://russeldc.megastudy.net//russel/apply/jaejung/apply.asp?app_cd=148"

                   danka_am_url = "https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1390"
                   danka_regular_url = "https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1349"
                   book_quel_url = "https://mrusseldc.megastudy.net/event/2021/quel/default.asp"
                   book_premium_url = "https://mrusseldc.megastudy.net/intro/2022/premium/index.asp"
                   book_monthly_url = "https://mrusseldc.megastudy.net/intro/info/2022/monthly/index.asp"
                   end_txt = "전반 마감<br>대기자 접수 중"

    Case "CD0245": '목동
                   caumpus_name = "러셀 목동"
                   caumpus_code = "russelmd"
                   open_date_txt = "2/1(수)"
                   a_method_txt02  = "현장 접수 (온라인 접수 불가)"

                   danka_am_url = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1391"
                   danka_regular_url = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1350"
                   book_quel_url = "https://mrusselmd.megastudy.net/event/2021/quel/default.asp"
                   book_premium_url = "https://mrusselmd.megastudy.net/intro/2022/premium/index.asp"
                   book_monthly_url = "https://mrusselmd.megastudy.net/intro/info/2022/monthly/index.asp"

    Case "CD0250": '부천
                   caumpus_name = "러셀 부천"
                   caumpus_code = "russelbc"
                   open_date_txt = "매월 초 순차 개강"
                   a_method_txt02  = "현장 접수ㅣ모집요강 지원자격 해당자 순 접수"
                   applyUrl = "https://pf.kakao.com/_sFgGxj"

                   danka_am_url = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1392"
                   danka_regular_url = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1351"
                   book_quel_url = "https://mrusselbc.megastudy.net/event/2021/quel/default.asp"
                   book_premium_url = "https://mrusselbc.megastudy.net/intro/2022/premium/index.asp"
                   book_monthly_url = "https://mrusselbc.megastudy.net/intro/info/2022/monthly/index.asp"

	Case "CD0244": '분당
                   caumpus_name = "러셀 분당"
                   caumpus_code = "russelbd"
                   open_date_txt = "1차 : 2/20(월), 2차 : 2/27(월), 3차 : 3/2(목)"
                   a_method_txt02  = "추후 공지"

                   danka_am_url = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1393"
                   danka_regular_url = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1352"
                   book_quel_url = "https://mrusselbd.megastudy.net/event/2021/quel/default.asp"
                   book_premium_url = "https://mrusselbd.megastudy.net/intro/2022/premium/index.asp"
                   book_monthly_url = "https://mrusselbd.megastudy.net/intro/info/2022/monthly/index.asp"
                   applyUrl ="https://russelbd.megastudy.net//russel/apply/jaejung/apply.asp?app_cd=148"

	Case "CD0246": '센텀
                   caumpus_name = "러셀 센텀"
                   caumpus_code = "russelct"
                   open_date_txt = "2차 개강 : 2월 10일(금)<br>3차 개강 : 2월 27일(월)"
                   a_method_txt02  = "현장 또는 온라인 접수"
                   applyUrl = "https://russelbd.megastudy.net//russel/apply/jaejung/apply.asp?app_cd=148"
                   
                   danka_am_url = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1398"
                   danka_regular_url = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1358"
                   book_quel_url = "https://mrusselct.megastudy.net/event/2021/quel/default.asp"
                   book_premium_url = "https://mrusselct.megastudy.net/intro/2022/premium/index.asp"
                   book_monthly_url = "https://mrusselct.megastudy.net/intro/info/2022/monthly/index.asp"

    Case "CD0249": '영통
                   caumpus_name = "러셀 영통"
                   caumpus_code = "russelyt"
                   open_date_txt = "6월 순차 개강"
                   a_method_txt02  = "현장 접수"

                   danka_am_url = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1394"
                   danka_regular_url = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1353"
                   book_quel_url = "https://mrusselyt.megastudy.net/event/2021/quel/default.asp"
                   book_premium_url = "https://mrusselyt.megastudy.net/intro/2022/premium/index.asp"
                   book_monthly_url = "https://mrusselyt.megastudy.net/intro/info/2022/monthly/index.asp"

    Case "CD0257": '중계
                   caumpus_name = "러셀 중계"
                   caumpus_code = "russeljg"
                   open_date_txt = "매월 초 개강"
                   a_method_txt02  = "전석 마감 (대기자 접수 中)"

                   danka_am_url = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1395"
                   danka_regular_url = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1354"
                   book_quel_url = "https://mrusseljg.megastudy.net/event/2021/quel/default.asp"
                   book_premium_url = "https://mrusseljg.megastudy.net/intro/2022/premium/index.asp"
                   book_monthly_url = "https://mrusseljg.megastudy.net/intro/info/2022/monthly/index.asp"
                   end_txt = "전석 마감<br>(대기자 접수 中)"

	Case "CD0248": '평촌
                   caumpus_name = "러셀 평촌"
                   caumpus_code = "russelpc"
                   open_date_txt = "3월 순차개강"
                   a_method_txt02  = "현장 접수 | 접수 예정"

                   danka_am_url = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1396"
                   danka_regular_url = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1355"
                   book_quel_url = "https://mrusselpc.megastudy.net/event/2021/quel/default.asp"
                   book_premium_url = "https://mrusselpc.megastudy.net/intro/2022/premium/index.asp"
                   book_monthly_url = "https://mrusselpc.megastudy.net/intro/info/2022/monthly/index.asp"

	Case "CD0342": '대구
                   caumpus_name = "러셀 대구"
                   caumpus_code = "russeldg"
                   open_date_txt = "6월 순차 개강"
                   a_method_txt02  = "온라인 접수<br>*온라인 원서 접수 완료 시, 이후 입학절차에 대해 개별적으로 안내"

                   danka_am_url = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1397"
                   danka_regular_url = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1356"
                   book_quel_url = "https://mrusseldg.megastudy.net/event/2021/quel/default.asp"
                   book_weekly_url = "https://mrusseldg.megastudy.net/intro/2022/weekly/index.asp"
                   book_premium_url = "https://mrusseldg.megastudy.net/intro/2022/premium/index.asp"
                   book_monthly_url = "https://mrusseldg.megastudy.net/intro/info/2022/monthly/index.asp"
                   applyUrl = "https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=148"

	Case "CD0340": '코어광주
                   caumpus_name = "러셀CORE 광주"
                   caumpus_code = "coregj"
                   open_date_txt = "매월 초 순차 개강"
                   a_method_txt02  = "현장 또는 온라인 접수 ㅣ 현재 모집 중"

                   danka_regular_url = "https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1359"
                   book_quel_url = "https://mcoregj.megastudy.net/event/2021/quel/default.asp"
                   book_premium_url = "https://mcoregj.megastudy.net/intro/2022/premium/index.asp"
                   book_weekly_url = "https://mcoregj.megastudy.net/intro/2022/weekly/index.asp"
                   book_monthly_url = "https://mcoregj.megastudy.net/intro/info/2022/monthly/index.asp"
                   applyUrl = "https://coregj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=148"


	Case "CD0341": '코어대전
                   caumpus_name = "러셀CORE 대전"
                   caumpus_code = "coredj"
                   open_date_txt = "매월 초 개강"
                   a_method_txt02  = "<strong>온라인 접수</strong><br><span class='color-gray-03 f11'>*원서접수 확인 후 개별 안내 예정</span>"

                   danka_regular_url = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1360"
                   book_quel_url = "https://mcoredj.megastudy.net/event/2021/quel/default.asp"
                   book_premium_url = "https://mcoredj.megastudy.net/intro/2022/premium/index.asp"
                   book_weekly_url = "https://mcoredj.megastudy.net/intro/2022/weekly/index.asp"
                   book_monthly_url = "https://mcoredj.megastudy.net/intro/info/2022/monthly/index.asp"
                   applyUrl = "https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=148"

	Case "CD0343": '코어원주
                   caumpus_name = "러셀CORE 원주"
                   caumpus_code = "corewj"
                   open_date_txt = "매월 초 개강"
                   a_method_txt02  = "현장 또는 온라인 접수"

                   danka_regular_url = "https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1361"
                   book_quel_url = "https://mcorewj.megastudy.net/event/2021/quel/default.asp"
                   book_premium_url = "https://mcorewj.megastudy.net/intro/2022/premium/index.asp"
                   book_weekly_url = "https://mcorewj.megastudy.net/intro/2022/weekly/index.asp"
                   book_monthly_url = "https://mcorewj.megastudy.net/intro/info/2022/monthly/index.asp"
                   applyUrl ="https://corewj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=148"


	Case "CD0344": '코어전주
                   caumpus_name = "러셀CORE 전주"
                   caumpus_code = "corejj"
                   open_date_txt = "상시 입학 (매주 월/금)"
                   a_method_txt02  = "현장 또는 온라인 접수"
                   applyUrl = "https://corejj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=148"

                   danka_regular_url = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1362"
                   book_quel_url = "https://mcorejj.megastudy.net/event/2021/quel/default.asp"
                   book_premium_url = "https://mcorejj.megastudy.net/intro/2022/premium/index.asp"
                   book_weekly_url = "https://mcorejj.megastudy.net/intro/2022/weekly/index.asp"
                   book_monthly_url = "https://mcorejj.megastudy.net/intro/info/2022/monthly/index.asp"

	Case "CD0345": '코어창원
                   caumpus_name = "러셀CORE 창원"
                   caumpus_code = "corecw"
                   open_date_txt = "매월 초 개강"
                   a_method_txt02  = "현장 또는 온라인 접수 ㅣ 현재 모집 중"

                   danka_regular_url = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1363"
                   book_quel_url = "https://mcorecw.megastudy.net/event/2021/quel/default.asp"
                   book_premium_url = "https://mcorecw.megastudy.net/intro/2022/premium/index.asp"
                   book_weekly_url = "https://mcorecw.megastudy.net/intro/2022/weekly/index.asp"
                   book_monthly_url = "https://mcorecw.megastudy.net/intro/info/2022/monthly/index.asp"

	Case "CD0346": '코어청주
                   caumpus_name = "러셀CORE 청주"
                   caumpus_code = "corecj"
                   open_date_txt = "매월 초 개강"
                   a_method_txt02  = "현장 또는 온라인 접수"

                   danka_regular_url = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1364"
                   book_quel_url = "https://mcorecj.megastudy.net/event/2021/quel/default.asp"
                   book_premium_url = "https://mcorecj.megastudy.net/intro/2022/premium/index.asp"
                   book_weekly_url = "https://mcorecj.megastudy.net/intro/2022/weekly/index.asp"
                   book_monthly_url = "https://mcorecj.megastudy.net/intro/info/2022/monthly/index.asp"
                   applyUrl = "https://corecj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=148"

End Select
%>
<% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0250" Then '러셀부천 %>
<p class="banner img"><a href="/entinfo/entry_pt/enter_pop.asp"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular/banner_sms.jpg" alt=""></a></p>
<% ElseIf campus_code = "CD0247" Then '강남 %>
<!-- <p class="img"><a href="https://mrusselgn.megastudy.net/board/notice_view.asp?code=27479"><img src="<%=Application("img_path_russel")%>/m_russel/banner/2023/banner_freshman.jpg" alt=""></a></p> -->
<% End If %>
<div class="visual">
    <% If campus_code = "CD0340" or campus_code = "CD0341" or campus_code = "CD0343" or campus_code = "CD0344" or campus_code = "CD0346" or campus_code = "CD0345" Then '광주/대전/원주/전주/청주/창원 %>
    <p class="img bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular/visual_core.jpg" alt="코어 비주얼 배경" /></p>
    <% ElseIf campus_code = "INTRO" Then '인트로 %>
    <p class="img bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular/visual_intro.jpg" alt="인트로 비주얼 배경" /></p>
    <ul class="info-box">
        <li>
            <p><%=open_date%></p>
            <p><%=open_date_txt%></p>
        </li>

        <li>
            <p><%=a_method%></p>
            <p><%=a_method_txt%></p>
        </li>
        <p class="sub-txt">* 자세한 내용은 학원별 모집 요강 참조</p>
    </ul>
    <% ElseIf campus_code = "CD0244" Then '분당 %>
    <p class="img bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular/visual_bd.jpg" alt="러셀학원 비주얼 배경" /></p>
    <% Else %>
    <p class="img bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/regular/visual_russel.jpg" alt="러셀학원 비주얼 배경" /></p>
    <% End If %>


</div>
<div class="fixed-bar">
    <a href="#">모집안내 바로가기</a>
    <!-- 마감말풍선 -->
    <% If campus_code = "CD0344" Then '코어전주 %>
    <!-- <p class="ico-end-b">남자반 마감</p> -->
    <% End If %>
</div>


<!-- 조정식/양승진 설명회 팝업 -->
<!--#include virtual="/intro/pop/2022/pop_pre.asp" -->
<!-- 조정식/양승진 설명회 팝업 -->