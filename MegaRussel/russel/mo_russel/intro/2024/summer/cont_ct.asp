<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <p class="recruit-tit">러셀 센텀 썸머스쿨<br><strong>입학 절차 안내</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>원서 접수</span>
            <ol>
                <li>온라인 원서접수</li>
                <li>사전 예약금 납부</li>
            </ol>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>입학기준<br> 확인 후 <br>성적표 제출</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>단과 강의 <br>선택 및 결제</span>
        </li>
        <li>
            <div><strong>4</strong></div>
            <span>최종 등록<br>확인</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;"> 1) 원서 접수</p>
            <a href="https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166" onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.')" class="bt-gray-s">원서접수 바로가기</a>
            <ol>
                <li>① 온라인 원서접수</li>
                <li>② 사전 예약금 납부</li>
            </ol>
            <ul class="list-bullet m0 mt10">
                <li>사전예약금 (58만원)까지 결제 진행되어야 '온라인 원서접수'가 완료됩니다.</li>
                <li>원서접수를 완료한 학생, 학부모 대상으로 문자를 통해 썸머스쿨 입학 절차가 안내됩니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">2) 성적표 제출</p>

            <ul class="list-bullet m0 f14">
                <li>성적표 기준은 모집요강에 명시된 제출 기준으로 진행되며, 성적표 확인 후 반 배정 확정됩니다.</li>
                <li>기간 내 성적표 미 제출 시, 그린반으로 자동 배정됩니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">3) 강좌 선택 및 결제</p>
            <ul class="list-bullet m0 f14">
                <li>썸머특강 시간표 확정 후, 맞춤수업에 따른 강의 등록 안내드립니다.</li>
                <li>맞춤수업 기준에 따라 온라인에서 선택 강의 결제 진행됩니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">4) 최종 등록</p>
            <p class="step-notice">2024 썸머스쿨 등록 완료</p>
            <ul class="list-bullet m0 f14">
                <li>강좌 등록 내역 확인 후 바른공부 자습전용관 최종 등록 별도 안내드립니다.</li>
                <li>기존 사전예약금은 전액 환불됩니다.</li>
            </ul>
        </div>
    </div>

    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀 센텀 썸머스쿨<br><strong>모집요강 및 지원혜택</strong></p>
    
    <!-- 모집요강 자동화 시스템 영역 -->
    <%
    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
    If IsDevSvr() = true Then   '개발서버
        AGM_CD = 5536
    Else '실서버
        AGM_CD = 1613
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
