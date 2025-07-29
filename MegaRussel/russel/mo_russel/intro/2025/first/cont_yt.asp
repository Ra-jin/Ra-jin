<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!-- 연간 운영 계획 -->
<div class="recruit-wrap">
    <div class="inner">
        <p class="recruit-tit">러셀 영통<br><strong>연간 운영 계획</strong></p>
        <table class="tbl-plan-new typeA">
            <colgroup> 
                <col style="width:30%">
                <col style="width:auto">
            </colgroup>
            <tbody>
                <tr>
                    <th style="border-top:1px solid #2D2D2D !important"><span>현재 모집 중</span><br>12~2월</th>
                    <td style="border-top:1px solid #2D2D2D !important">우선선발반</td>             
                </tr>
                <tr>
                    <th class="bg-gray">3~4월</th>
                    <td class="bg-gray02">N수생 정규반</td>
                </tr>
                <tr>
                    <th class="bg-gray" rowspan="2">4~8월</th>
                    <td class="bg-gray02">N수생 정규반</td>
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
        <p class="r-txt">※ 입학 시기에 따라 모집요강 및 지원혜택이 다릅니다.<br>
            입학 시기에 해당하는 모집요강을 확인해주시기 바랍니다.</p>
    </div>
</div>

<!-- 모집요강 및 지원혜택 -->
<div class="recruit-wrap type02">
    <div class="inner">
        <p class="recruit-tit">모집요강 및 지원혜택</p>
        <div class="tbl-box">
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5696
            Else '실서버
                AGM_CD = 1776
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
