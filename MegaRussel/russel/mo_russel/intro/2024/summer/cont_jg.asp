<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <!-- 입학 절차 안내 -->
    <p class="recruit-tit">러셀 중계 썸머스쿨<br><strong>입학 절차 안내</strong></p>
    
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>온라인 <br> 원서접수 및<br> 사전예약금 결제</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>단과 수업 <br>선택 및 결제</span>
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
            <p class="step-tit"> 1) 온라인 원서접수 및 사전예약금 결제 <% if curYmdhmin < 202404291400 then %><a href="javascript:void(0)" onclick="alert('신규생 썸머스쿨 사전예약은 4/29(월) 14시부터 가능합니다.')" class="bt-gray-s ml10">원서접수 바로가기</a><% else %><% end if %></p>
            <ul class="list-base">
                <li>
                    <b>① 접수 기간</b> <br>
                    - 바른공부 자습전용관 재원생 : 4/24(수) ~ 4/28(일)까지 (*조기마감 주의) <br>
                    - 신규생 : 4/29(월) 14시 ~ 마감 시까지
                </li>
                <li>
                    <b>② 접수 방법</b> <br>
                    - 바른공부 자습전용관 재원생 : 현장 접수(온라인 접수 불가) <br>
                    - 신규생 : 온라인 원서 접수 후, 사전예약금 결제
                </li>
                <li><b>③ 사전예약금 비용 : 144,000원</b></li>
            </ul>


            <ul class="list-bullet m0 mt5">
                <li>학생 정보로 회원 가입 후, 로그인 바랍니다. (학부모님 정보로 등록 불가)</li>
                <li class="color-red bold">
                    온라인 원서 접수 후, 사전예약금 결제창은 팝업창으로 안내됩니다. <br>
                    결제창이 보이지 않을 경우, 팝업 허용 후 다시 원서접수 버튼 클릭해주시기 바랍니다.
                 </li>
                <li>
                    사전예약금까지 결제 완료해야, ‘2024 썸머스쿨’ 사전예약이 완료됩니다. <br>
                    - 사전예약금이 미결제된 경우, 사전예약이 미완료된 상태이므로 추후 마감 시, 등록이 불가 할 수 있습니다.  
                </li>
                <li>사전예약금은 최종 등록 후, 전액 환불 됩니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">2) 단과 수업 선택 및 결제</p>
            <ul class="list-bar">
                <li>등록 방법 : 온라인 또는 학원 방문 접수</li>
                <li>등록 비용 : 단과 수업에 따라 상이</li>
            </ul>
            <p class="step-notice mt10">※ 썸머스쿨 시간표가 최종 확정되면, 필수 수강 시수에 따른 강의 등록 안내 드립니다.</p>
        </div>
        <div class="step-txt">
            <p class="step-tit">3) 성적표 제출</p>

            <ul class="list-bar">
                <li>성적표 : 학년별 성적표 제출 기준이 상이하므로, ‘2024 썸머스쿨‘ 모집요강 확인해주시기 바랍니다.</li>
                <li>성적표 제출 : <span class="underline">최종 등록 시, 학원 방문하여 <span class="color-red bold">성적표 사본(출력물) 제출(필수)</span></span></li>
            </ul>
            <ul class="list-bullet m0 mt5">
                <li>
                    제출 가능한 성적표(예) : 전국연합학력평가 성적표 <br>
                    - 학교에서 출력한 성적표의 경우, 담임선생님 서명 또는 학교 직인이  찍혀 있어야 인정됩니다. 
                </li>
                <li>제출 불가한 성적표(예) : 꼬리표, 리로스쿨 출력본, 수기(오피스) 편집, 인정사항 확인 불가한 성적표</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">4) 최종 등록</p>
            <ul class="list-bar">
                <li>최종 등록은 <span class="bold color-red">6/18(화) 14시부터 진행 될 예정</span>이며, 사전예약금 결제한 학생/학부모님께 최종 등록 관련 안내드립니다. (SMS 안내 발송)</li>
                <li>최종 등록 후, 사전예약금 전액 환불됩니다.</li>
            </ul>
            <!-- <p class="notice-txt">
                사전예약금 결제로 연결되지 않고 원서접수가 완료되었을 경우, 팝업차단을 해제해 주세요. 
                팝업차단 해제 후 [온라인 원서 접수] 버튼을 다시 클릭하면 사전예약금 결제로 연결됩니다. 
            </p> -->
        </div>
    </div>
    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀 중계 썸머스쿨<br><strong>모집요강 및 지원혜택</strong></p>
    
    <div class="tbl-box inCon">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 5521
        Else '실서버
            AGM_CD = 1594
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
    <!-- //모집요강 및 지원혜택 -->

</div>
