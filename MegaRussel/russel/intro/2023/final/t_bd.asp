<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<p class="mb60"><img src="<%=Application("img_path_russel")%>/intro/2023/final/t_bd_01.png" alt="모집요강 및 장학혜택"></p>

<!-- tab-cont-wrap -->
<div class="tab-cont-wrap">
    <div class="bt-tab type02 final-bt-tab">
        <a href="#" class="on"><strong>N수생</strong></a>
        <a href="#"><strong>재학생(고3)</strong></a>
    </div>

    <!-- N수생 -->
    <div class="cont-box final-cont-box on">
        <p class="mb60 mt100"><img src="<%=Application("img_path_russel")%>/intro/2023/final/t_bd_02.png" alt="러셀 분당 파이널 정규반[N수생] 모집요강"></p>
        <!-- mozip-guide -->
        <div class="mozip-guide">
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 2288
            Else '실서버
                AGM_CD = 1311
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
        </div>
        <!-- //mozip-guide -->
            

        <p class="mb60 mt100"><img src="<%=Application("img_path_russel")%>/intro/2023/final/t_bd_03.png" alt="러셀 분당 파이널 정규반[N수생] 지원 혜택"></p>
        <!-- mozip-guide -->
        <div class="mozip-guide">
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 2289
            Else '실서버
                AGM_CD = 1312
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
        </div>
        <!-- //mozip-guide -->
    </div>
    <!-- //N수생 -->

    <!-- 재학생(고3) -->
    <div class="cont-box final-cont-box">        
        <p class="mb60 mt100"><img src="<%=Application("img_path_russel")%>/intro/2023/final/t_bd_04.png" alt="러셀 분당 파이널 정규반[재학생(고3)] 모집요강"></p>
        <!-- mozip-guide -->
        <div class="mozip-guide">
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 2290
            Else '실서버
                AGM_CD = 1313
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
        </div>
        <!-- //mozip-guide -->
        <p class="mb60 mt100"><img src="<%=Application("img_path_russel")%>/intro/2023/final/t_bd_05.png" alt="러셀 분당 파이널 정규반[재학생(고3)] 지원 혜택"></p>
        <!-- mozip-guide -->
        <div class="mozip-guide">
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 2291
            Else '실서버
                AGM_CD = 1314
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
        </div>
        <!-- //mozip-guide -->
    </div>
    <!-- //재학생(고3) -->

</div>
<!-- //tab-cont-wrap -->