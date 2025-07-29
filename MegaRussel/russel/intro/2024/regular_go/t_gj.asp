<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 연간 운영 계획 -->
            <p class="mb70"><img src="<%=Application("img_path_russel")%>/core_gj/2024/regular_go/cont00_tit01.png" alt="연간 운영 계획"></p>
            <table class="tbl-plan line03">
                <colgroup>
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                </colgroup>
                <thead>
                    <tr>
                        <th>2024년</th>
                        <th>3~6월</th>
                        <th>7~8월</th>
                        <th>9~11월</th>
                        <th>11~12월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>고3</td>
                        <td rowspan="2">정규반</td>
                        <td rowspan="3">썸머스쿨</td>
                        <td rowspan="3">파이널 정규반</td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>고2</td>
                        <td rowspan="2">프리윈터스쿨</td>
                    </tr>
                    <tr>
                        <td>고1</td>
                        <td class="brn" style="border-bottom-right-radius:0">-</td>
                    </tr>
                </tbody>
            </table>
            <p class="plan-txt txt_right">
                * 학원의 사정에 따라 연간 운영 계획은 변동될 수 있으며, 변동 시 별도 안내드립니다.
            </p>

            <!-- 입학 절차 -->
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/core_gj/2024/regular_go/cont00_tit02.png" alt="입학 절차 안내"></p>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p style="margin-bottom: 26px;">입학 상담</p>
                    <span>
                        &nbsp;&nbsp; - 온라인 상담 <a style="margin: 8px 0 0 0;" class="bt-apply" href="http://pf.kakao.com/_swxoCb">바로가기</a> <br>
                        - 유선상담 062-462-1010
                    </span>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>입학기준 확인 후 <br> 성적표 제출</p>
                    <span>*현장 또는 카카오톡 채널에 제출 가능 <br><a class="bt-apply" href="http://pf.kakao.com/_swxoCb">성적표 제출 [바로가기]</a> </span>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>단과 강의 <br> 선택 및 결제</p>
                    <span>*현장 또는 온라인 결제 가능  <br><a class="bt-apply" href="https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1709">정규&middot;특강 단과 [바로가기]</a></span>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>재학생 정규반 <br> 최종 등록</p>
                    <span>
                        바른공부 자습전용관 등록 <br> (현장 또는 온라인 결제 가능) <br>
                        ※ 온라인 결제 희망할 경우 학원에 문의
                    </span>
                </li>
            </ul>

            <!-- 모집요강 및 지원혜택 -->
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/core_gj/2024/regular_go/cont00_tit03.png" alt="모집요강 및 지원혜택"></p>
            <div class="tbl-box">
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 4423
                Else '실서버
                    AGM_CD = 1472
                End If

                strSql = " SELECT AGM_CONTENT FROM MR_ACA_GUIDE_MAS WITH(NOLOCK) WHERE AGM_IDX = " & AGM_CD
                Set Rs = russelobjdb.sqlQuery(strSql,1)
                If Not (Rs.eof Or Rs.bof) Then
                    dbContents = UnsafeQuery(Rs("AGM_CONTENT"))
                    dbContents = Replace(Replace(Trim(dbContents),"<IMG ", "<IMG name='img_desc' "),"<img ", "<img name='img_desc' ")
                    dbContents = Replace(Replace(dbContents,"ja_va_sc","javascript"),"a_lert","alert")
                End If 
                Rs.close
                Set Rs = Nothing
                Response.Write dbContents
                %>
            </div>
        </div>
    </div>
    <!-- //cont00 -->
</div>