<div class="cont campus-wrap dc">
    <p class="recruit-tit"><%=caumpus_name%> N수 정규반<br><span>입학 등록 절차</span></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>온라인<br>원서접수</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>단과 수업<br>선택 및 등록</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>최종 등록</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit">1) 온라인 원서접수</p>
            <a href="https://russeldc.megastudy.net//russel/apply/jaejung/apply.asp?app_cd=148" onclick="alert('원서접수는 PC페이지에서 이용 가능합니다.')" class="bt-gray02 btn-regular">원서접수 바로가기</a>
            <ul class="step-list">
                <li>: ‘학생ID’ 로 로그인 - 2024 정규반 원서 접수</li>
            </ul>
            <ul class="list-bullet m0 f14">
                <li>유의사항 : 학생이름으로 반드시 원서접수 해야합니다 학부모님 이름으로 원서접수 시 누락됩니다.
                </li>
                <li>합격자발표<br>
                    :접수된 서류 심사 후 합격자에 한해 등록 안내 (문자 발송)
                </li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 단과 수업 선택 및 등록 (등록방법 - 학원 홈페이지)</p>
            <ul class="step-list">
                <li>: 학습 성향 및 수준, 반별 모집요강에 맞게 수강 희망 단과 선택과 등록</li>
                <li>: 최종 등록 전, 단과 강좌 변경 및 취소 가능</li>
                <li>: 해당 월 개강일이 지난 강좌는 현장에서 등록 가능</li>
                <li>: 대기중인 강좌는 시수에 포함되지 않음</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">3) 최종 등록 (등록방법 - 현장 방문 또는 학원 문의)</p>
            <ul class="step-list">
                <li>: 학원 문의는 러셀 대치 홈페이지 온라인 상담글이나 학원 전화로 가능 (02-2138-1010)</li>
                <li>: 개인별 단과 등록 총 합산 시수(T)에 따라 자습전용관 지원혜택은 상이함</li>
                <li>: 온라인 원서 접수 시 성적표 미제출인 경우 등록 불가</li>
                <li>: 최근 성적표 위조가 급증함에 따라 입학 후 담임선생님께 성적 증명서 추가 제출 必</li>
            </ul>
        </div>
    </div>
    <p class="recruit-tit"><%=caumpus_name%> N수 정규반<br><span>모집요강 및 장학혜택</span></p>
    <div class="tbl-box">
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 1108
            Else '실서버
                AGM_CD = 131
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