<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_us">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 연간 운영 계획 -->
            <h3 class="tit"><strong>연간 운영 계획</strong></h3>
            <table class="tbl-plan type02 p0">
                <colgroup>
                    <col style="width:12%">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                </colgroup>
                <thead>
                    <tr>
                        <th>모집대상</th>
                        <th>1~2월</th>
                        <!-- <th class="on">3~4월<span>현재 모집중</span></th> -->
                        <th>3~6월</th>
                        <th>7~8월</th>
                        <th>9~11월</th>
                        <th>11~12월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>고3</td>
                        <td rowspan="3">윈터스쿨</td>
                        <td rowspan="3">재학생 정규반</td>
                        <td rowspan="3">썸머스쿨</td>
                        <td>재학생 정규반</td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>고2</td>
                        <td>재학생 정규반,<br>
                        고2 수능 시작반</td>
                        <td>재학생 정규반,<br>
                        고2 수능 시작반</td>
                    </tr>
                    <tr>
                        <td>고1</td>
                        <td>재학생 정규반</td>
                        <td>재학생 정규반</td>
                    </tr>
                </tbody>
            </table>
            <p class="plan-txt r-txt">
                * 학원의 사정에 따라 연간 운영 계획은 변동될 수 있으며, 변동 시 별도 안내드립니다.
            </p>
            <!-- 입학절차 -->
            <h3 class="tit mt100"><strong>입학 절차 안내</strong></h3>
            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학상담/원서접수</p>
                    <ul class="list-03">
                        <li>방문/전화/온라인 상담</li>
                        <li>온라인 원서접수</li>
                    </ul>
                    <a href="https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184" class="btn-gray-s mt10">원서접수 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>
                        입학기준 확인 후 <br>
                        성적표 제출
                    </p>
                    <ul class="list-03">
                        <li>성적표 제출 : 별도 안내</li>
                        <li>전형별 반 배정</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>
                        단과 강의 선택 <br>
                        및 결제
                    </p>
                    <ul class="list-03">
                        <li>방문/온라인 수강신청</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>
                        재학생 정규반 <br>
                        최종 등록 확인
                    </p>
                    <ul class="list-03">
                        <li>등원일 확정</li>
                        <li>사전 오리엔테이션 진행</li>
                    </ul>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!-- 모집요강 및 장학혜택 -->
            <h3 class="tit mt100"><strong>모집요강 및 장학혜택</strong></h3>
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6809
            Else '실서버
                AGM_CD = 1890
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