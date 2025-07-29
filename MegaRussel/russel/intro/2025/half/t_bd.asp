<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont russel_bundang">
    <!-- <div class="cont00 type02">
        <div class="inner">
            <h3 class="tit">2026 반수반 이벤트</h3>
            <div class="tbl-box coming-box">
                <div>
                    <p class="m0"><img src="<%=Application("img_path_russel")%>/intro/2025/half/coming_img.png" alt=""></p>
                    <p><strong>2026 반수반 이벤트는</strong><br>
                        추후 공개될 예정입니다.</p>
                </div>
            </div>
        </div>
    </div> -->
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 모집요강 -->
            <h3 class="tit"><strong>모집요강 및 지원혜택</strong></h3>
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6839
            Else '실서버
                AGM_CD = 1920
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

<!-- <script>
    $(function(){
        tabMenu('.bt-tab','.tbl-box .cont-box');
    })
</script> -->