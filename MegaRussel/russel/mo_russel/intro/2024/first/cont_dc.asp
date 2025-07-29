<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <!-- 입학 절차 안내 -->
    <p class="recruit-tit">러셀 대치 재수생 우선선발반<br><strong>입학 절차 안내</strong></p>
    
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>원서접수<br>
            /성적표 제출</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>강의 선택 <br>및 결제</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>최종 등록</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit">1) 원서 접수 / 성적표 제출</p>
            <ul class="list-bullet ml0">
                <li>원서 접수 - 학원 홈페이지에서 ‘학생ID’로 로그인 </li>
                <li>성적표 사진 첨부 <br>
                    - 2024학년도 수능, 평가원 성적 기준<br>
                    - 탐구(1)은 탐구 1과목을 의미함<br>
                    - 성적표 전체 이미지 업로드 필요
                </li>
                <!-- <a href="https://russeldc.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163" onclick="alert('대기자 원서접수는 PC버전에서 이용가능합니다')" target="_blank" class="bt-gray-s ml10">대기자 원서접수 바로가기</a> -->
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">2) 강의 선택 및 결제</p>
            <ul class="list-bullet ml0">
                <li>사전에 바자관 반별 *최저 입학기준 확인 필요</li>
                <li>학습 성향 및 수준, 바자관 반별 모집요강에 맞게 수강 희망 단과 선택과 등록 (마감 강좌 대기 중인 경우, 시수에 포함되지 않음)</li>
                <li>최종 등록 전, 단과 강좌 변경 및 취소 가능</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">3) 최종 등록</p>
            <p class="f14">■ 등록 방법 : 학원 내부 일괄처리 후 개별 안내</p>
            <ul class="list-bullet ml0">
                <li class="stxt">학원 문의는 러셀 대치 홈페이지 온라인 상담글 또는 전화(02-2138-1010) 가능</li>
                <li class="stxt">개인별 단과 등록 총 합산 시수(T)에 따라 자습전용관 지원혜택은 상이함</li>
                <li class="stxt">바자관 등록 전, 단과 수업 등록 필수</li>
                <li class="stxt">*최저입학기준 미달 시, 바자관 등록 및 윈터스쿨 이용 불가</li>
                <li class="stxt">개인별 단과 등록 총 합산시수(T)에 맞춰 바자관 이용료 지원</li>
            </ul>
            <p class="f14">
                ■ 급식 신청(선택)<br>
                ■ O,T 안내(추후 별도 공지)
            </p>
        </div>
    </div>
    <!-- //입학 절차 안내 -->

    
    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀 대치 재수생 우선선발반<br><strong>모집요강 및 지원혜택</strong></p>
    
    <div class="tbl-box">
        
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 4397
        Else '실서버
            AGM_CD = 1444
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
    <!-- //모집요강 및 장학혜택 -->

</div>
