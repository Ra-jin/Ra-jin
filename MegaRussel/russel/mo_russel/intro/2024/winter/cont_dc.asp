<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <p class="recruit-tit">러셀 대치 <strong>윈터스쿨</strong> <br> 입학 절차 안내 </p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>
                입학 원서접수<br>   → 예약금 결제
            </span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>단과 수업 <br> 선택 및 등록</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>최종 등록</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 입학 원서접수</p>
            <p style="font-size:1.5rem;letter-spacing:-0.5px;"><a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://russeldc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173');" class="bt-gray-s ml10">원서접수 바로가기</a></p>
            <ul class="list-bullet m0 mt0">
                <li>입학 원서 접수 - 학생 ID로 로그인(학부모 ID불가능)
                </li>
                <li>성적표 사진 첨부 - 2024년 전국 연합모의고사 3,6,9,10월 성적 중 택1 반영 <br>
                    - 과학고, 영재고, 전국단위 자사고, 국제고는 별도 문의
                </li>               
                <li>
                    사전 예약금 결제 시, 원서접수가 완료
                    <span class="color-red" style="font-size: 14px;">(대기자는 예약금 미결제)</span>
                </li>
                <li>상세설명 : <a href="https://russeldc.megastudy.net/russel/info/qna/faq.asp" class="bt-gray-s ml10" target="_blank">FAQ 바로가기</a></li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">2) 단과 수업 선택 및 등록 <br> (10월 말 안내)</p>
            <ul class="list-bullet m0 mt0">
                <li>단과 수업 등록은 온라인으로만 진행(러셀대치 홈페이지)</li>
                <li>사전에 바자관 반별*최저 입학기준 확인 필요</li>
                <li>학습 성향 및 수준, 바자관 반별 모집요강에 맞게 수강 희망 단과 선택과 등록(마감 강좌 대기 중인 경우, 시수에 포함되지 않음)</li>
                <li>최종 등록 전, 단과 강좌 변경 및 취소 가능</li>
                <li>바자관 지원혜택은 등록 강좌를 ★완강★ 한 경우에만 적용 됩니다.</li>
            </ul>
        </div>

        <div class="step-txt">
            <p class="step-tit">3) 최종 등록 <br> (11월 25일부터 순차적 처리)</p>
            <ul class="list-bullet m0 mt0">
                <li>윈터스쿨 실전 모의고사 필수 응시<br>
                    (결제 안내는 별도 문자 안내 예정)</li>
                <li>단과 등록 확인 후, 예약금과 상계 처리</li>
                <li>바자관 등록 전, 단과 수업 등록 필수(11월 24일까지)</li>
                <li>*최저 입학기준 미달시, 바자관 등록 및 윈터스쿨 이용 불가</li>
                <li class="color-red">개강 전 입학 취소 시 사전 예약금 및 단과 결제 비용은 전액 환불됩니다.</li>
                <li class="color-red">최종 등록 완료 후, 문자 안내발송(결제내역은 “마이페이지-결제내역”에서 확인 가능)</li>
            </ul>
        </div>
    </div>

    <!-- 모집요강 및 장학혜택 -->
    <p class="recruit-tit">2025 윈터스쿨<br><strong>모집요강 및 지원혜택</strong></p>
    <div class="tbl-box">

        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 5628
        Else '실서버 
            AGM_CD = 1707
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
    </div>
</div>