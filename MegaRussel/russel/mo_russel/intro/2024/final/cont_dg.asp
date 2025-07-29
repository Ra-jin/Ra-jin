<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <!-- 입학 절차 안내 -->
    <p class="recruit-tit">러셀 대구 파이널 정규반<br><strong>입학 절차 안내</strong></p>
    <div class="tbl-box p0">
        <div class="txt-coming">
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/ico_comming.png" alt="" /></div>
            <p>
                <strong>2025 파이널 정규반</strong>의 <br>
                <strong>입학 절차 안내</strong>는 추후 공개됩니다.                
            </p>
        </div>
    </div>

    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀 대구 파이널 정규반<br><strong>모집요강</strong></p>
    
    <div class="tbl-box type01">
        
        <div class="tab-wrap">
            <a href="javascript:void(0)" class="on"><strong>N수생</strong></a>
            <a href="javascript::void(0)"><strong>재학생(고3)</strong></a>
        </div>
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 5616
        Else '실서버
            AGM_CD = 1695
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
<script>
    $(function(){
        tabMenu('.type01 .tab-wrap','.type01 .tab-cont');
    })
</script>