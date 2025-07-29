<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!--프로모션 영역 9월 재노출-->
<div class="pt30"><img src="<%=Application("img_path_russel")%>/m_russel/russel_md/2024/half/event_md.jpg" alt=""></div>
<!--//프로모션 영역-->

<div class="recruit-wrap">
    <p class="recruit-tit">러셀 목동 파이널 반수반<br><strong>입학 절차 안내</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>학원 방문 &amp; <br> 자습관 등록<br>
            신청서 작성</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>재학 증명서<br>제출</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>반수반 결제<br>및 실등록</span>
        </li>
    </ul>
    
    <ul class="list-bullet ml0">
        <li>반수반 실등록은 ‘현장에서만’ 가능합니다.</li>
        <li class="color-red"><strong class="color-red">여석 발생 시, 전형별 대기 접수 순서대로 문자 혹은 유선 안내 드리겠습니다.
        </strong></li>
        <li>반수반 실등록 시, <span class="color-red">재학 증명서 사진 제출</span>은 필수입니다.<br>
            <span class="color-red">(모의고사 및 내신 전형으로 입학 하는 경우도 동일)</span></li>
        <li><span class="color-red">입학 기준과 상관 없이 입학 시 [2024 수능] 성적표는 별도 추가 제출하셔야 합니다.</span> (* 성적 상담 시 필수 자료입니다.)</li>
        <li>위조한 증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
        <li>단과 수강 신청은 온라인 수강 신청 또는 현장 수강 신청이 가능합니다.</li>
    </ul>
    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀 목동 파이널 반수반<br><strong>모집요강 및 지원혜택</strong></p>

        
    <!-- 모집요강 자동화 시스템 영역 -->
    <%
    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
    If IsDevSvr() = true Then   '개발서버
        AGM_CD = 4507
    Else '실서버
        AGM_CD = 1557
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