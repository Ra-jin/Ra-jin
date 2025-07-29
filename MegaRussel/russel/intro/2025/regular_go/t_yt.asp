<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_yt">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 연간 운영 계획 -->
            <h3 class="tit"><strong>연간 운영 계획</strong></h3>
            <table class="tbl-plan type02 p0">
                <colgroup>
                    <col style="width:15%">
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
                        <td rowspan="4">윈터스쿨</td>
                        <td rowspan="4">재학생 정규반</td>
                        <td rowspan="4">썸머스쿨</td>
                        <td>재학생 정규반</td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>고2</td>
                        <td>재학생 정규반,<br>
                        고2 수능 시작반</td>
                        <td>재학생 정규반,<br>
                            고2 수능 시작반
                        </td>
                    </tr>
                    <tr>
                        <td>고1</td>
                        <td>재학생 정규반</td>
                        <td>재학생 정규반</td>
                    </tr>
                    <tr>
                        <td>중3</td>
                        <td>재학생 정규반</td>
                        <td>재학생 정규반</td>
                    </tr>
                </tbody>
            </table>
            <p class="plan-txt r-txt">
                * 학원의 사정에 따라 연간 운영 계획은 변동될 수 있으며, 변동 시 별도 안내드립니다.
            </p>

            <!-- 모집요강 -->
            <h3 class="tit mt100"><strong>모집요강 및 지원혜택</strong></h3>
            <!-- 모집 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6783
            Else '실서버
                AGM_CD = 1865
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
            <!-- //모집 자동화 시스템 영역 -->
        </div>
    </div>
    <!-- //cont00 -->
</div>

<!-- <script>
    $(function(){
        tabMenu('.bt-tab','.tbl-box .cont-box');
    })
</script> -->