<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<div class="recruit-wrap">
    <p class="recruit-tit">러셀 대구 프리윈터스쿨<br><strong>모집요강 및 지원혜택</strong></p>
    <!-- 모집요강 및 지원혜택 -->
    <div class="tbl-box pt0 pb0">
        
            
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 5638
        Else '실서버
            AGM_CD = 1717
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
    <!-- //모집요강 및 장학혜택 -->

    <!-- <p class="recruit-tit">러셀 대구 프리윈터스쿨<br><strong>입학기준</strong></p>
    <div class="txt-coming">
        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/ico_comming.png" alt="" /></div>
        <p><strong>러셀 대구 프리윈터스쿨 </strong><br>
            <strong>입학기준</strong>은 추후 공개 예정입니다.
        </p>
    </div> -->
</div>

