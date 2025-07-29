<div class="campus-wrap">
    <p class="recruit-tit"><%=txt_campus%> 재수생 우선선발반<br><strong>모집요강 및 지원혜택</strong></p>
</div>

<!-- recuit-tab -->
<div class="recuit-tab">
    <a href="">11월</a>
    <a href="">12월</a>
    <a href="" class="on">1~2월</a>
</div>
<!-- //recuit-tab -->

<div class="campus-wrap pt20">

    <!-- 11월 재수생 우선선발반 -->
    <div class="recuit-cont">

        <!-- 모집요강 어드민 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 1050
        Else '실서버
            AGM_CD = 73
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
        <!-- //모집요강 어드민 -->
    </div>
    <!-- //11월 재수생 우선선발반 -->

    <!-- 12월 재수생 우선선발반 PLUS -->
    <div class="recuit-cont">

        <!-- 모집요강 어드민 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 1051
        Else '실서버
            AGM_CD = 74
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
        <!-- //모집요강 어드민 -->
    </div>
    <!-- //12월 재수생 우선선발반 PLUS -->

    <!-- 1월 재수생 우선선발반 -->
    <div class="recuit-cont on">
        <!-- 모집요강 어드민 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 1076
        Else '실서버
            AGM_CD = 98
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
        <!-- //모집요강 어드민 -->
    </div>
    <!-- //1월 재수생 우선선발반 -->
</div>

<script>
    tabMenu('.recuit-tab','.recuit-cont')
</script>