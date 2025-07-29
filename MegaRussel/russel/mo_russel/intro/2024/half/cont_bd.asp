<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!-- event -->
<!-- <div class="event-area">
    <div><img src="<%=Application("img_path_russel")%>/m_russel/russel_bd/2024/half/event_tit.jpg" alt="" /></div>
    <div><img src="<%=Application("img_path_russel")%>/m_russel/russel_bd/2024/half/event.jpg" alt="" /></div>
    <div class="inner">
        <p class="bold f12 mt20">[유의사항]</p>
        <ul class="list-bar">
            <li>본 이벤트는 대학교 전형을 통해 3/11(월)부터 5/31(금) 이전 입학 시 적용됩니다. (24,23학번 한정)</li>
            <li>대학교 전형을 통해 원서 접수 시, 자동으로 이벤트 적용됩니다.</li>
            <li>모집요강 기준 반 별 최저 입학 기준(단과 수강 의무시수)를 모두 충족해야 합니다.</li>
            <li>학습 및 생활 태도가 좋지 않아 교육 점수가 높은 경우 이벤트 혜택은 취소될 수 있습니다.</li>
            <li>본 이벤트는 학원 사정에 의해 변경 또는 조기 마감될 수 있습니다.</li>
        </ul>
    </div>
</div> -->
<!-- //event -->
<div class="recruit-wrap">

    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀 분당 반수반<br><strong>모집요강 및 지원혜택</strong></p>
    <!-- 모집요강 자동화 시스템 영역 -->
    <%
    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
    If IsDevSvr() = true Then   '개발서버
        AGM_CD = 4512
    Else '실서버
        AGM_CD = 1562
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
        
    <!-- //모집요강 및 장학혜택 -->


        

</div>






