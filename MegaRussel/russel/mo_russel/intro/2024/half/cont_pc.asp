<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!--프로모션 영역-->
<!-- <div class="cont-pro mt60">
    <p><img src="<%=Application("img_path_russel")%>/m_russel/russel_pc/2024/first/cont_pro_tit.jpg" alt="러셀 평촌 재수생 우선선발반 12월 특별 프로모션"></p>
    <p><img src="<%=Application("img_path_russel")%>/m_russel/russel_pc/2024/first/cont_pro_img.jpg" alt=""></p>
</div> -->
<!--//프로모션 영역-->

<div class="recruit-wrap">
    <p class="recruit-tit">러셀 평촌 반수반<br><strong>입학 절차 안내</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>성적표 제출  &amp; <br> 원서 접수</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>전형 확인 &amp;<br>강좌 선택</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>최종 등록 </span>
        </li>
    </ul>
    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀 평촌 반수반<br><strong>모집요강 및 장학혜택</strong></p>
    

    <!-- 모집요강 자동화 시스템 영역 -->
    <%
    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
    If IsDevSvr() = true Then   '개발서버
        AGM_CD = 4537
    Else '실서버
        AGM_CD = 1581
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
