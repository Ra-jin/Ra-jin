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
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                </colgroup>
                <thead>
                    <tr>
                        <th>12~2월</th>
                        <th>3~4월</th>
                        <th class="on">4~8월</th>
                        <th>9~11월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td rowspan="2" style="border-bottom-left-radius: 10px;">
                            우선선발반
                        </td>
                        <td rowspan="2">N수생 <br> 정규반</td>
                        <td>N수생 정규반</td>
                        <td rowspan="2" style="border-bottom-right-radius: 10px;">파이널 정규반</td>
                    </tr>
                    <tr>
                        <td style="border-radius: 0 0 0 0;border-right: 0px;">N수생 반수반</td>
                    </tr>
                </tbody>
            </table>
            <!-- <p class="plan-txt">
                ※ 입학 시기에 따라 모집요강 및 지원혜택이 다릅니다. 입학 시기에 해당하는 모집요강을 확인해주시기 바랍니다.
            </p> -->


            <!-- 모집요강 -->
            <h3 class="tit mt100"><strong>모집요강 및 지원혜택</strong></h3>
            <!-- 모집 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6781
            Else '실서버
                AGM_CD = 1863
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