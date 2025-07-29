<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 연간 운영 계획 -->
            <p class="mb70"><img src="<%=Application("img_path_russel")%>/core_jj/2024/regular_go/cont00_tit01.png" alt="연간 운영 계획"></p>
            <table class="tbl-plan line02">
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
                        <td rowspan="3">정규반</td>
                        <td rowspan="3">썸머스쿨</td>
                        <td rowspan="3">정규반 </td>
                        <td rowspan="3">정규반 </td>
                    </tr>
                    <tr>
                        <td style="border-right: 0;">고2</td>
                    </tr>
                    <tr>
                        <td style="border-right: 0; border-radius: 0;">고1</td>
                    </tr>
                </tbody>
            </table>
            <p class="plan-txt txt_right">
                * 학원의 사정에 따라 연간 운영 계획은 변동될 수 있으며, 변동 시 별도 안내드립니다.
            </p>

            <!-- 입학절차 -->
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/core_jj/2024/regular_go/cont00_tit02.png" alt="입학절차 안내"></p>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>
                        온라인 원서접수 후 <br>
                        사전예약금 납부 <br> <br>
                        <a class="btn-gray-s" href="https://corejj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168">원서접수 바로가기</a>
                    </p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>
                        입학기준 확인 후  <br>
                        성적표 제출  <br> <br>
                        <span class="gray fz15" style="font-weight: 400;">* 성적표 제출 방식 : 문자 안내 예정</span>
                    </p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>
                        단과 강의  <br>
                        선택 및 결제
                    </p>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>
                        재학생 정규반  <br>
                        최종 등록 확인 
                    </p>
                </li>
            </ul>

            <!-- 모집요강 및 장학혜택 -->
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/core_jj/2024/regular_go/cont00_tit03.png" alt="모집요강 및 장학혜택"></p>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 4476
                Else '실서버
                    AGM_CD = 1525
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
                <!-- //모집요강 자동화 시스템 영역 -->
            </div>
        </div>
    </div>
    <!-- //cont00 -->
</div>