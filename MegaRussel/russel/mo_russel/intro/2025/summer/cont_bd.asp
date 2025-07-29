<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!-- 입학 절차 -->
<div class="recruit-wrap">
    <div class="inner">
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>
                    ① 온라인 원서 접수 <br>
                    (성적표 제출)
                </span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>
                    ② 사전등록금 납부               
                </span>
            </li>           
            <li>
                <div><strong>2</strong></div>
                <span>
                    ③ 수업(단과) 선택 <br>
                    및 결제              
                </span>
            </li>           
        </ul>   
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) [온라인] 원서 접수(성적표 제출)        
                    <a class="bt-gray-s ml10" onclick="alert('대기 접수는 PC 페이지에서 이용 가능합니다.');location.href='https://russelbd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189';">대기 접수 바로가기</a>
                </p>
                <ul class="list-bar m0 mt0 bold">
                    <li>접수 방법 : 온라인 원서 접수</li>
                    <li>
                        성적표 제출 : [필수] 25년 시행 전국연합모의고사 성적표  <br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[선택] 전체 학기 주요 과목 내신 성적
                    </li>
                </ul>
                <ul class="list-bullet m0 mt10">
                    <li>
                        원서 접수 시, 성적표 제출은 필수입니다. <br>
                        - 성적표는 재원 기간 입시 상담 시 활용 및 좌석 배치에 사용될 예정입니다. 
                    </li>
                    <li>원서 접수 후 사전등록금 납부 페이지로 자동 연결됩니다.</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) [온라인] 사전등록금 비용 납부</p>
                <ul class="list-bar m0 mt0 bold">
                    <li>사전등록금 비용 : 63만원</li>
                </ul>
                <ul class="list-bullet m0 mt10">
                    <li>원서 접수(성적표 제출) 및 사전등록금 납부를 완료하면 추후 안내에 따라 단과 수업 등록을 진행하게 됩니다.</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">3) [온라인/학원] 수업(단과) 선택 및 결제</p>
                <ul class="list-bar m0 mt0 bold">
                    <li>단과 등록 기간 : 6/16(월)~6/30(월) [예정]</li>
                    <li>단과 등록 방법 : 러셀 분당학원 홈페이지 또는 학원 방문 접수</li>
                    <li>단과 비용 : 단과 수업에 따라 상이 (강의계획서 참고)</li>
                </ul>
                <ul class="list-bullet m0 mt10">
                    <li>학년에 따른 의무 수강 시수 신청(결제)은 필수이며, 미충족 시 입학이 불가합니다.</li>
                    <li>대기 중인 마감 강의는 시수에 포함되지 않습니다.</li>
                    <li>단과 등록 기간 내 의무시수를 충족해야 하며, 단과 수업은 추후 변경할 수 있습니다.</li>
                </ul>
                <p class="notice-tit mt10">★ 등록 시 유의사항</p>
                <ul class="list-bar m0 mt0">
                    <li>입학일은 개인 사정(학사일정 포함)에 의해 변경이 불가하며, 퇴원일은 개학 일정에 맞춰 조정할 수 있습니다.</li>
                    <li>반별 모집요강 및 지원 혜택은 학원 사정에 의해 변동될 수 있습니다.</li>
                    <li>지원 혜택은 수강 강좌를 완강한 경우에만 적용됩니다.</li>
                    <li>단과 수업 결석 시 회차 환불은 불가합니다. (단과 수강에 따른 바자관 지원 혜택에 따름)</li>
                    <li>사전 등록금은 썸머스쿨 바른공부 자습전용관 비용으로 대체되며, 단과 수업 시수에 따른 차액금은 썸머스쿨 종료 이후 환급됩니다.</li>
                </ul>
            </div>
            
         
        </div>

        <!-- 모집요강 및 지원혜택 -->
        <p class="recruit-tit"><strong>모집 요강 및 지원 혜택</strong></p>

        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6897
        Else '실서버
            AGM_CD = 1980
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