<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_dg">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit">러셀 대구 파이널 정규반 <strong>입학 절차 안내</strong></h3>
            <div class="coming-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/final/ico_tobe.png" alt="" /></p>
                    <p class="coming-txt">
                        <strong>2025 파이널 정규반의<br>
                        입학 절차 안내</strong>는 추후 공개됩니다.<br>
                    </p>
                </div>
            </div>
           
            <h3 class="tit mt100">러셀 대구 파이널 정규반 <strong>모집요강</strong></h3>

            <div class="tab-cont-wrap type01">
                <div class="bt-tab">
                    <a href="javascript:void(0)" class="on br-0"><strong>N수생</strong></a>
                    <a href="javascript::void(0)" class="bl-0"><strong>재학생(고3)</strong></a>
                </div>
                <!-- 모집요강 자동화 시스템 영역 -->                    
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 5615
                Else '실서버
                    AGM_CD = 1694
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
</div>

<script>
    $(function(){
        tabMenu('.type01 .bt-tab','.type01 .cont-wrap .cont-box');
    })
</script>
