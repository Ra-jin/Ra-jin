<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap pb0">
    
    <!-- 입학 절차 안내 -->
    <p class="recruit-tit pt0">러셀 대치 <strong>윈터스쿨 입학 절차 안내</strong></p>
    <!-- setp-diagram -->
    <ul class="setp-diagram">
        <li>
            <strong>1</strong>
            <span>원서접수/<br>예약금 결제</span>
        </li>
        <li>
            <strong>2</strong>
            <span>단과 수업 <br>선택 및 등록</span>
        </li>
        <li>
            <strong>3</strong>
            <span>최종 등록</span>
        </li>
    </ul>
    <!-- //setp-diagram -->

    <!-- step-txt-wrap -->
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit">1) 온라인 원서 접수</p>
            <ul class="list-bullet">
                <li>온라인 원서 접수 - 학원 홈페이지에서 '학생ID'로 로그인 (학부모 ID 불가)</li>
                <li>성적표 사진 첨부 - 2023 전국모의고사 3,6,9월 성적 중 택 1 반영 (9월 성적은 발급 후 추후 적용 / 11월 전국모의고사는 12월로 변경되어 미적용)<br>
                    - 전국 단위 자사고, 과학고, 영재고는 별도 문의</li>
                <li>원서접수 마지막 단계에서 사전 예약금 (62만원)까지 결제해 주셔야 원서접수가 완료됩니다. <br>
                    <span class="color-red">(결제창은 팝업으로 안내됩니다. 결제창이 보이지 않는 경우, 팝업 허용 후 다시 원서접수 버튼을 눌러 주시면 됩니다.)</span>
                </li>
                <% if curYmdhmin >= 202309011300 then %>
                <a href="https://russeldc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158" onclick="alert('온라인 접수는 PC버전에서 이용가능합니다')" target="_blank" class="bt-gray-s ml10">대기자 원서접수 바로가기</a>
                <% end if %>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">2) 단과 수업 선택 및 등록<br>(등록방법 - 학원 홈페이지)  </p>
            <ul class="list-bullet">
                <li>사전에 바자관 반별 *최저 입학기준 확인 필요</li>
                <li>학습 성향 및 수준, 바자관 반별 모집요강에 맞게 수강 희망 단과 선택과 등록 (마감 강좌 대기 중인 경우, 시수에 포함되지 않음)</li>
                <li>최종 등록 전, 단과 강좌 변경 및 취소 가능</li>
                <li>바자관 지원혜택은 등록 강좌를 [완강] 한 경우에만 적용됩니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">3) 최종 등록<br>(등록방법 - 학원 내부 일괄 처리 예정)</p>
            <ul class="list-bullet">
                <li>바자관 등록 전, 단과 수업 등록 필수</li>
                <li>*최저 입학 기준</span> 미달 시, 바자관 등록 및 윈터스쿨 이용 불가</li>
                <li>개인별 단과 등록 총 합산시수(T)에 맞춰 바자관 이용료 지원</li>
                <li class="color-red">개강 전 입학 취소 시 사전 예약금 및 단과 결제 비용은 전액 환불됩니다.</li>
                <li class="color-red">최종등록 완료 후, 문자 안내 발송(확정된 반은 “마이페이지 - 결제내역” 에서 확인 가능) </li>
            </ul>
        </div>
    </div>
    <!-- step-txt-wrap -->
    <!-- //입학 절차 안내 -->

    <p class="recruit-tit">러셀 대치 윈터스쿨<br><strong>모집요강 및 지원혜택</strong></p>
    <div class="tbl-box">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 2343
        Else '실서버
            AGM_CD = 1366
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


