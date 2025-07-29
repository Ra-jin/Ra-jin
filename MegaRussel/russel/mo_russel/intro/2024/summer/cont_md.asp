<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">

    <!-- 입학 절차 안내 -->
    <p class="recruit-tit">러셀 목동 썸머스쿨<br><strong>입학 절차 안내</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>온라인 원서 접수</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>강의 선택 및 <br> 학원 방문 실 등록 <br> (6월 예정)</span>
        </li>
    </ul>
    <p class="f14 color-red text-align-center mt10">(전형에 따라 모집 인원은 상이할 수 있습니다.)</p>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">1) 온라인 원서 접수</p>
            <ul class="list-bar m0 mt10">
                <li>반드시 학생 ID로 로그인 하신 후 온라인 원서 접수 진행 바랍니다.</li>
                <li class="color-red">온라인 원서 접수 시, 성적표 사진 파일 등록은 필수입니다. (가채점 성적표는 불가능)</li>
                <li class="color-red">6월 평가원 실성적 발표 이후 7/7(일)까지 전형 변경은 가능합니다. (썸머스쿨 시작일 이후 변경 불가능)</li>
                <li>온라인 원서 접수 시, 성별 등 개인정보 오기입의 경우 추후 실등록이 불가할 수 있습니다.</li>
                <li>원서 접수를 완료한 학생, 학부모 대상으로 문자를 통해 입학 절차 안내가 이뤄집니다.</li>
                <li class="color-red">전형에 따라 모집 인원은 상이하며, 실 등록 안내는 6월 예정입니다.</li>
                <li class="color-red">온라인 전형 접수 우선 등록을 하였더라도 전형별 인원에 따라 등록이 불가할 수 있습니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">2) 강의 선택 및 학원 방문 실 등록</p>
            <ul class="list-bar m0 mt10">
                <li>전형별 모집요강에 따른 의무 T수를 충족 및 유지해야 합니다. (“T”는 주당 수업 시간 의미)</li>
                <li>단과 수강 신청은 온라인 수강 신청 또는 현장 수강 신청이 가능합니다.</li>
                <li class="color-red">썸머스쿨 실 등록은 ‘현장’에서만 가능합니다.</li>
                <li>상기 모집요강 및 지원혜택은 2024 썸머스쿨 기준이며, <span class="color-red">2학기부터는 [재학생 정규반] 지원 정책으로 변경 적용됩니다.</span><a href="/intro/2024/regular_go/index.asp" class="bt-gray-s ml10">재학생 정규반</a></li>
                <li>위조한 성적증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
            </ul>
        </div>
    </div>


    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀 목동 썸머스쿨<br><strong>모집요강 및 지원혜택</strong></p>

    <div class="tbl-box inCon">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 5512
        Else '실서버
            AGM_CD = 1583
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


    <!-- //모집요강 및 지원혜택 -->

</div>