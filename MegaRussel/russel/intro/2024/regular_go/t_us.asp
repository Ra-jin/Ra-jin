<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 연간 운영 계획 -->
            <p class="mb70"><img src="<%=Application("img_path_russel")%>/russel_us/2024/regular_go/cont00_tit01.png" alt="연간 운영 계획"></p>
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
                        <td rowspan="3">정규반</td>
                        <td rowspan="3">썸머스쿨</td>
                        <td>정규반</td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>고2</td>
                        <td>정규반 <br> 얼리버드 수능 집중반</td>
                        <td>정규반 <br> 얼리버드 수능 집중반</td>
                    </tr>
                    <tr>
                        <td style="border-right: 0;border-radius: 0 0 0 10px;">고1</td>
                        <td>정규반</td>
                        <td>정규반</td>
                    </tr>
                </tbody>
            </table>
            <p class="plan-txt txt_right">
                * 학원의 사정에 따라 연간 운영 계획은 변동될 수 있으며, 변동 시 별도 안내드립니다.
            </p>

            <!-- 입학절차 -->
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/russel_us/2024/regular_go/cont00_tit02.png" alt="입학절차 안내"></p>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>
                        입학상담
                    </p>
                    <ul class="list-03">
                        <li>방문/전화/온라인 상담</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>
                        온라인 원서접수
                    </p>
                    <ul class="list-03">
                        <li>모집요강 지원자격 확인</li>
                        <li>접수 완료 시, 성적표 제출 및 <br> 입학절차 개별 안내 예정</li>
                    </ul>
                    <a class="btn-gray-s mt10" href="https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168">원서접수 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>
                        단과 강의 <br>
                        선택 및 결제
                    </p>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>
                        최종 등록
                    </p>
                    <ul class="list-03">
                        <li>등원일 확정</li>
                        <li>사전 OT 진행</li>
                    </ul>
                </li>
            </ul>

            <!-- 모집요강 및 장학혜택 -->
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/russel_us/2024/regular_go/cont00_tit03.png" alt="모집요강 및 장학혜택"></p>
            <!-- <div class="tobe type02">
                <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_tobe.png" alt="" /></div>
                <p>
                    러셀 울산 [재학생 정규반] 모집요강 및 장학혜택은 <br>
                    추후 공지 예정입니다.
                </p>
            </div> -->

            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 4481
            Else '실서버
                AGM_CD = 1530
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
    <!-- //cont00 -->
</div>