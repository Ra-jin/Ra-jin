<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00" >
        <div class="inner">
            <!-- 연간 운영 계획 -->
            <p class="mb70"><img src="<%=Application("img_path_russel")%>/russel_dg/2024/regular_go/cont00_tit01.png" alt="연간 운영 계획"></p>
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
                        <td rowspan="2">썸머스쿨</td>
                        <td>정규반</td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>고2</td>
                        <td>정규반 <br> 얼리버드 수능 집중반</td>
                        <td>프리윈터 <br> 얼리버드 수능 집중반</td>
                    </tr>
                    <tr>
                        <td>고1</td>
                        <td>-</td>    
                        <td>썸머스쿨</td>
                        <td>정규반</td>
                        <td>프리윈터</td>
                    </tr>
                </tbody>
            </table>
            <p class="plan-txt txt_right">
                * 학원의 사정에 따라 연간 운영 계획은 변동될 수 있으며, 변동 시 별도 안내드립니다.
            </p>

            <!-- 입학절차 -->
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/russel_dg/2024/regular_go/cont00_tit02.png" alt="입학절차 안내"></p>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학상담/원서접수</p>
                    <ul class="list-03 mt5">
                        <li>방문/전화/온라인 상담</li>
                        <li>온라인 원서 접수</li>
                        <li>사전예약금 납부</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>반 편성</p>
                    <ul class="list-03">
                        <li>성적표 제출</li>
                        <li>모집 기준 상 반 편성</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>단과강좌 등록</p>
                    <ul class="list-03">
                        <li>의무강좌 수에 맞춰 단과등록</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>온라인/현장 등록</p>
                    <ul class="list-03">
                        <li>온라인 결제링크 발송</li>
                        <li>미납 시 합격 취소</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>입학 및 개강</p>
                    <ul class="list-03">
                        <li>개강</li>
                        <li>개강 전 OT 진행 예정</li>
                    </ul>
                </li>
            </ul>

            <!-- 모집요강 및 장학혜택 -->
            <p class="mt120 mb70" id="plan01"><img src="<%=Application("img_path_russel")%>/russel_dg/2024/regular_go/cont00_tit03.png" alt="모집요강 및 장학혜택"></p>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 4463
                Else '실서버
                    AGM_CD = 1512
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