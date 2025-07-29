<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_bc">
    
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
                        <!-- <th class="on">월<span>현재 모집중</span></th> -->
                        <th>모집대상</th>
                        <th>1~2월</th>
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
                        <td>재학생 정규반</td>
                        <td rowspan="3">썸머스쿨</td>
                        <td>재학생 정규반</td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>고2</td>
                        <td>수시/내신 대비반,<br>
                            모의고사 대비반
                        </td>
                        <td colspan="2">수시/내신 대비반,<br>
                        수능 대비반
                        </td>
                    </tr>
                    <tr>
                        <td>고1</td>
                        <td>수시/내신 대비반
                        </td>
                        <td colspan="2">수시/내신 대비반
                        </td>
                    </tr>
                </tbody>
            </table>
            <p class="plan-txt r-txt">
                * 학원의 사정에 따라 연간 운영 계획은 변동될 수 있으며, 변동 시 별도 안내드립니다.
            </p>
            <!-- 입학절차 -->
            <h3 class="tit mt100"><strong>입학 절차 안내</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학상담</p>
                    <ul class="list-base">
                        <li>① 방문상담 : 상담일시 예약 필수</li>
                        <li>② 온라인 상담 <a href="https://pf.kakao.com/_sFgGxj" class="btn-gray-s" target="_blank">바로가기</a></li>
                        <li>③ 유선상담 032.265.1010</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>등록</p>
                    <ul class="list-base">
                        <li>① 모집요강 확인</li>
                        <li>
                            ② 단과 수업 선택 및 등록 <br>
                            (현장 또는 온라인 결제)
                        </li>
                        <li>
                            ③ 바른공부 자습전용관 등록<br>
                            (현장 등록만 가능)
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>입학</p>
                    <ul class="list-base">
                        <li>
                            신규생 오리엔테이션 참석 필수 <br>
                            ※ 등록생에게 별도 안내
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100"><strong>모집요강 및 지원혜택</strong></h3>
            <div class="tab-cont-wrap type01">
                <div class="bt-tab">
                    <a href="javascript:void(0)" class="on br-0"><strong>고1&middot;고2</strong></a>
                    <a href="javascript::void(0)" class="bl-0"><strong>고3</strong></a>
                </div>

                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 6756
                    Else '실서버
                        AGM_CD = 1838
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

<script>
    $(function(){
        tabMenu('.bt-tab','.cont-box');
    })
</script>