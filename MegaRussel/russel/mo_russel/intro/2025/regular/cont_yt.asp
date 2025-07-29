<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <div class="inner">
        <!-- 연간 운영 계획 -->
        <p class="recruit-tit"><strong>연간 운영 계획</strong></p>
        <table class="tbl-plan-new typeA">
            <colgroup> 
                <col style="width:30%">
                <col style="width:auto">
            </colgroup>
            <tbody>
                <tr>
                    <th class="bg-gray">12~2월</th>
                    <td class="bg-gray02">우선선발반</td>             
                </tr>
                <tr>
                    <th class="bg-gray">3~4월</th>
                    <td class="bg-gray02">N수생 정규반</td>
                </tr>
                <tr>
                    <th rowspan="2">4~8월</th>
                    <td>N수생 정규반</td>
                </tr>
                <tr>
                    <td class="bg-gray02">N수생 반수반</td>
                </tr>
                <tr>
                    <th class="bg-gray">9~11월</th>
                    <td class="bg-gray02">파이널 정규반</td>
                </tr>
            </tbody>
        </table>


        <!-- 모집요강 및 지원혜택 -->
        <p class="recruit-tit">모집요강 및 지원혜택</p>
        <!-- 모집 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6782
        Else '실서버
            AGM_CD = 1864
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