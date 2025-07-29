<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학 절차 안내 -->
            <h3 class="tit">러셀 센텀 썸머스쿨 <strong>입학 절차 안내</strong></h3>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span>원서접수</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span>성적표 제출</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span>강좌 선택 및 결제</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>4</span>최종 등록</p>
                    </div>
                </div>
                <div class="step-box">
                    <p class="tit">1) 원서접수 <a href="https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166" class="btn-gray-s ml_10">원서접수 바로가기</a></p>
                    <div class="box">
                        <p class="fz16 fw400">① 온라인 원서접수 ②사전 예약금 납부</p>
                        <ul class="list-02 mt5">
                            <li>사전예약금 (58만원)까지 결제 진행되어야 '온라인 원서접수'가 완료됩니다.</li>
                            <li> 원서접수를 완료한 학생, 학부모 대상으로 문자를 통해 썸머스쿨 입학 절차가 안내됩니다. </li>
                        </ul>
                    </div>
                    <p class="tit">2) 성적표 제출</p>
                    <div class="box">
                        <ul class="list-02 mt5">
                            <li>성적표 기준은 모집요강에 명시된 제출 기준으로 진행되며, 성적표 확인 후 반 배정 확정됩니다.</li>
                            <li> 기간 내 성적표 미 제출 시, 그린반으로 자동 배정됩니다. </li>
                        </ul>
                    </div>
                    <p class="tit">3) 강좌 선택 및 결제</p>
                    <div class="box">
                        <ul class="list-02 mt5">
                            <li>썸머특강 시간표 확정 후, 맞춤수업에 따른 강의 등록 안내드립니다. </li>
                            <li> 맞춤수업 기준에 따라 온라인에서 선택 강의 결제 진행됩니다.</li>
                        </ul>
                    </div>
                    <p class="tit">4) 최종 등록</p>
                    <div class="box">
                        <p class="fz16 fw400">썸머스쿨 등록 완료</p>
                        <ul class="list-02 mt5">
                            <li>강좌 등록 내역 확인 후 바른공부 자습전용관 최종 등록 별도 안내드립니다.  </li>
                            <li> 기존 사전예약금은 전액 환불됩니다.</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- //입학 절차 안내 -->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100">러셀 센텀 썸머스쿨 <strong>모집요강 및 지원혜택</strong></h3>
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5502
            Else '실서버
                AGM_CD = 1614
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
    </div>
</div>