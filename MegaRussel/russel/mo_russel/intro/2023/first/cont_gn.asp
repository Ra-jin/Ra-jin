<div class="campus-wrap gn pb50">
    <p class="recruit-tit"><%=txt_campus%> 재수생 우선선발반<br><strong>입학 절차 안내</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>온라인 원서접수</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>성적표 제출</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>최종 등록</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit">1) 2024 재수생 우선선발반 원서접수</p>
            <a href="https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=147" class="bt-gray02 btn-first">원서접수 바로가기</a>
            <ul class="list-bullet m0 f14">
                <li>온라인 원서접수를 완료한 학생, 학부모 대상으로 문자 등을 통해 입학 절차 안내가 이뤄집니다.</li>
                <li>아래 모집요강 확인 후 해당하는 반으로 원서접수해 주세요.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">2) 성적표 제출</p>
            <ul class="list-bullet m0 f14">
                <li>원서접수를 완료한 학생, 학부모 대상으로 성적표 제출 안내 예정입니다.</li>
                <li>문서 번호가 작성된 성적증명서 제출은 필수이며, 위조한 성적증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">3) 최종 등록</p>
            <ul class="step-list">
                <li>모집요강 확인 및 단과 수강 신청 (결제)</li>
            </ul>
            <a href="https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1224" class="bt-gray02 btn-first">1월 정규ㆍ특강 단과</a>
            <ul class="list-bullet m0 f14">
                <li>단과 수강 신청은 온라인 수강 신청 또는 학원 방문 신청으로 진행됩니다.</li>
                <li>입학 전형(반)에 따른 단과 필수 수강 시수 신청(결제)은 필수이며, 미충족시 입학이 불가합니다.</li>
                <li>단과 신청 완료 후 학원으로 유선 연락을 통해 최종 등록(입학) 안내 받으실 수 있습니다.</li>
            </ul>
        </div>
    </div>
    
    <!-- 모집요강 자동화 시스템 영역 -->
    <%
    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
    If IsDevSvr() = true Then   '개발서버
        AGM_CD = 1091
    Else '실서버
        AGM_CD = 114
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





    
    