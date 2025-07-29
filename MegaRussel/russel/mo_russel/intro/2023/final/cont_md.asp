<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!-- 연간 운영 계획/입학 절차 안내 -->
<div class="container bg-gray">
    <p class="recruit-tit pt0">2023년 러셀 목동 썸머스쿨<br><strong>사전 예약 안내</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>온라인 <br> 원서 접수 작성</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>단과 결제 및 실등록 안내<br>
                (6월 예정)
            </span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">

            <ul class="list-bullet m0 f14">
                <li class="color-red">반드시 학생 ID로 로그인 하신 후 온라인 전형 접수 진행 바랍니다.</li>
                <li class="color-red">온라인 전형 접수 시, 실성적표 사진 파일 등록은 필수입니다.</li>
                <li class="color-red">온라인 전형 접수 우선 등록을 하였더라도 전형별 인원에 따라 등록이 불가할 수 있습니다.
                </li>
                <li>실등록 일정은 사전 예약자분들께 추후 SMS 문자 발송 예정입니다.</li>
                <li class="color-red">추후 실등록 시에 실물 성적표 제출은 필수입니다. <br> (미제출 시 “그린반“으로 배정됩니다.)</li>
                <li>위조한 성적증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                <li>전형별 모집요강에 따른 의무 T수를 충족 및 유지해야 합니다. (“T”는 주당 수업 시간 의미)</li>
                <li>단과 수강 신청은 온라인 수강 신청 또는 현장 수강 신청이 가능합니다.</li>
            </ul>
        </div>
    </div>
</div>
<!-- //연간 운영 계획/입학 절차 안내 -->

<div class="container">
    <!-- 모집요강 및 장학혜택 -->
    <p class="recruit-tit pt0">2023년 러셀 목동 썸머스쿨<br><strong>모집요강 및 장학혜택</strong></p>
    
    <!-- 모집요강 자동화 시스템 영역 -->
    <%
    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
    If IsDevSvr() = true Then   '개발서버
        AGM_CD = 1232
    Else '실서버
        AGM_CD = 1254
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

