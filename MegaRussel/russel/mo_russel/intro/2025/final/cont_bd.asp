<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->


<div class="recruit-wrap">
    <div class="inner">
        <!-- 입학 절차 -->
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>온라인 원서 접수<br>
                    (성적표 제출)</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>단과 수업 선택<br>
                    및 등록</span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>정규반<br>
                    최종 등록</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 온라인 원서 접수 (성적표 제출)</p>
                <ul class="list-bar m0 mt0">
                    <li>접수 방법 : 온라인 원서 접수 후 성적표 등록</li>
                </ul>
                <ul class="list-bullet m0 mt0">
                    <li>성적표 미제출 시 반 배정이 불가하여 이후 입학 절차를 진행할 수 없습니다.</li>
                    <li>온라인 원서 접수를 완료하면, 이후 입학 절차를 개별적으로 안내드립니다.</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 단과 수업 선택 및 등록</p>
                <ul class="list-bar m0 mt0">
                    <li>등록 방법 : 러셀 분당 홈페이지 또는 학원 방문 접수</li>
                </ul>
                <ul class="list-bullet m0 mt0">
                    <li>단과 수업은 러셀 분당 홈페이지 > 단과 시간표에서 확인할 수 있습니다.</li>
                    <li>대기 중인 마감 강의는 시수에 포함되지 않습니다.</li>
                    <li>지원 혜택에 포함된 단과 수업 결석 시 회차 환불은 불가합니다.</li>
                    <li>입학 전형(반)에 따른 단과 의무 수강 시수 신청(결제)은 필수이며, 미충족 시 입학이 불가합니다.</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">3) 정규반 최종 등록</p>
                <ul class="list-bar m0 mt0">
                    <li>등록 방법 : 개별 안내 예정</li>
                </ul>
                <ul class="list-bullet m0 mt0">
                    <li>수업 신청(결제) 완료 후 바자관 및 학습 콘텐츠 결제를 안내드립니다.</li>
                    <li>최종 등록(입학)이 완료되면 등록 완료 안내 문자가 발송됩니다.</li>
                    <li>입학일 전, 급식 결제, 등원 방법 등을 개별적으로 안내드립니다.</li>
                    <li>등원 후 빠른 적응을 위한 오리엔테이션을 진행합니다.</li>
                </ul>
                <ul class="list-base mt10">
                    <li>★ 각 단계 완료 후, 카카오톡 채널 [러셀 분당학원] 또는 홈페이지 [편리한 온라인] > [온라인 1:1 상담]으로 문의해 주시면 다음 절차를 안내드리겠습니다.</li>
                </ul>
            </div>
        </div>

        <!-- 모집 요강 & 지원 혜택 -->
        <p class="recruit-tit"><strong>모집 요강 & 지원 혜택</strong></p>
        
        <!-- 모집 요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6986
        Else '실서버
            AGM_CD = 2069
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
        <!-- //모집 요강 자동화 시스템 영역 -->
    </div>
</div>