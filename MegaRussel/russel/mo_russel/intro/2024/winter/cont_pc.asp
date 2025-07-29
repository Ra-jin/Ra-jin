<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <!-- 입학 절차 안내 -->
    <p class="recruit-tit">2025 윈터스쿨<br><strong>입학 절차 안내</strong></p>

    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>대기 접수<br>[예약금 <br> 결제 완료 시<br> 접수 완료]</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>성적표 제출</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>단과 수업 선택 <br>
                및 결제
            </span>
        </li>
        <li>
            <div><strong>4</strong></div>
            <span>최종 등록</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">1) 대기 접수 [예약금 결제 완료 시 접수 완료]</p>
            <ul class="list-bullet m0 mt0">
                <li class="mt5">학생 정보로 회원 가입 후, 로그인(접수) 바랍니다 * 학부모님 정보로 접수가 불가합니다</li>
                <li class="mt5">온라인 원서 접수 후, 대기예약금 결제창은 팝업 안내됩니다</li>
                <li>결제창이 보이지 않을 경우, 팝업 허용 후 다시 원서접수 버튼 클릭해주시기 바랍니다</li>
                <li class="color-red mt5">대기예약금 150,000원 결제 완료 시 대기예약이 완료됩니다
                    예약금 미납 시 접수된 원서는 자동 취소 처리됩니다
                </li>
                <li class="mt5">대기 접수자는 여석 발생 시 순차적으로 안내가 될 예정입니다 <br>
                    학원 번호 차단 시 누락되는 정보에 관하여 책임을 지지 않습니다 (러셀 평촌 : 031-341-6500)
                </li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">2) 성적표 제출</p>
            <ul class="list-bullet m0 mt0">
                <li class="mt5">성적표 : 학년별 성적표 제출 기준이 상이하므로, 아래 ‘2025 윈터스쿨’ 모집요강 확인해주시기 바랍니다</li>
                <li class="mt5">성적표 제출 : 사전 예약 완료 시 성적표 제출 안내 문자가 발송됩니다 <span class="color-red f14">(문자 내 링크로 제출 필수)</span>
                </li>
                <li class="mt5">제출 불가한 성적표(예) : 꼬리표, 수기(오피스) 편집, 인정사항 확인 불가한 성적표</li>
            </ul>
        </div>

        <div class="step-txt">
            <p class="step-tit">3) 단과 수업 선택 및 결제</p>
            <ul class="list-bullet m0 mt0">
                <li>등록 방법 : 온라인 또는 학원 방문 접수</li>
                <li>등록 비용 : 단과 수업에 따라 상이</li>
            </ul>
            <ul class="list-dot m0 mt5">
                <li>윈터스쿨 시간표가 최종 확정되면, 필수 수강 시수에 따른 강의 등록 안내 드립니다.
                </li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">4) 최종 등록</p>
        </div>
    </div>
    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">2025 윈터스쿨<br><strong>모집요강 및 <br>바른공부 자습전용관 지원혜택</strong></p>
    
    <!-- 모집요강 자동화 시스템 영역 -->
    <%
    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
    If IsDevSvr() = true Then   '개발서버
        AGM_CD = 5624
    Else '실서버
        AGM_CD = 1703
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


    
    <!-- //모집요강 및 지원혜택 -->

</div>
