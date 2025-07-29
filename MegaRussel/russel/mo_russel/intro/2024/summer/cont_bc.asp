<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <!-- 입학 절차 안내 -->
    <p class="recruit-tit">러셀 부천 썸머스쿨<br><strong>입학 절차 안내</strong></p>
    
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>온라인 <br> 원서접수</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>사전예약금 <br> 결제</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>성적표 제출</span>
        </li>
        <li>
            <div><strong>4</strong></div>
            <span>최종 등록</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;"> 1) 온라인 원서접수</p>
            <ul class="m0 f14">
                <li>
                    ①  신규생<br>
                    ※  반드시 ‘학생’ 계정으로 진행해야 하며 학생 계정이 아닐 경우 사전예약이 취소됩니다.
                </li>
                <li>
                    ② 현재 재원생 <br>
                    - 현재 재원생은 온라인 원서접수 대상자가 아닙니다.
                </li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 사전예약금 결제</p>
            <p class="step-notice">사전예약금을 결제해야 사전예약이 완료됩니다.</p>
            <ul class="m0 f14">
                <li>
                    ① 신규생 <br>
                    - 원서접수 완료 시 결제 페이지로  자동 연결됩니다.  <br>
                    - 사전예약금은 추후 환불됩니다.
                </li>
                <li>
                    ②  현재 재원생 <br>
                    -  3층 입학처 문의
                </li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">3) 성적표 제출</p>
            <p class="step-notice">사전 예약자 대상으로 별도 안내 예정입니다.</p>
            <ul class="list-bar">
                <li>
                    <span class="color-red bold">문서 번호가 작성된 성적증명서 제출은 필수</span>입니다. (*온라인 모의고사 성적은 적용 불가)
                </li>
                <li>
                    성적 증빙 자료를 제출하지 않을 경우, 그린반으로 배정됩니다. (*추후 반 변경 불가)
                </li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">4) 최종 등록</p>
            <ul class="list-bar">
                <li>모집요강 확인</li>
                <li>단과 필수 수강 시수 확인</li>
                <li>수업 선택 및 최종 등록</li>
            </ul>
            <p class="notice-txt">
                사전예약금 결제로 연결되지 않고 원서접수가 완료되었을 경우, 팝업차단을 해제해 주세요. 
                팝업차단 해제 후 [온라인 원서 접수] 버튼을 다시 클릭하면 사전예약금 결제로 연결됩니다. 
            </p>
        </div>
    </div>


    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀 부천 썸머스쿨<br><strong>모집요강 및 지원혜택</strong></p>
    
    <div class="tbl-box p0 pt10">
        <div class="tbl-box inCon">
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5531
            Else '실서버
                AGM_CD = 1608
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
    <!-- //모집요강 및 지원혜택 -->

</div>