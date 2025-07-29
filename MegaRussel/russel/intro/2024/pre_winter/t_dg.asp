<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->


<!-- cont00 -->
<div class="cont00">
    <div class="inner">
        <!-- 모집요강 및 지원혜택 -->
        <h2 class="tit" data-aos="fade-down">러셀 대구 프리윈터스쿨<br>
        <strong>모집요강 및 지원혜택</strong></h2>
        
            
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 5635
        Else '실서버
            AGM_CD = 1716
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

        <!-- //모집요강 및 지원혜택 -->
         <!-- 입학기준 -->
        <!-- <h2 class="tit mt100" data-aos="fade-down">러셀 대구 프리윈터스쿨<br>
        <strong>입학기준</strong></h2>
        <div class="coming-box">
            <div>
                <p><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/ico_tobe.png" alt="" /></p>
                <p class="coming-txt">
                    러셀 대구 프리윈터스쿨<br>
                    입학기준은 추후 공개 예정입니다.
                </p>
            </div>
        </div> -->
        <!-- //입학기준 -->
</div>
</div>
<!-- //cont00 -->
