<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <!-- 연간 운영 계획 -->
    <p class="recruit-tit">러셀 대치 반수반<br><strong>연간 운영 계획</strong></p>
    <table class="tbl-plan-new typeB">
        <colgroup> 
            <col style="width:24%">
            <col style="width:38%">
            <col style="width:38%">
        </colgroup>
        <tbody>
            <tr>
                <th>모집시기</th>
                <td colspan="2">모집대상</td>            
            </tr>
            <tr>
                <th>2024년</th>
                <td>N수</td>             
                <td>반수</td>
            </tr>
            <tr>
                <th>1월</th>
                <td colspan="2">-</td>
            </tr>
            <tr>
                <th>2월</th>
                <td>우선선발반</td>
                <td>-</td>
            </tr>
            <tr>
                <th>3~6월</th>
                <td rowspan="3">정규반</td>
                <td rowspan="3">반수반</td>
            </tr>
            <tr>
                <th>7~8월</th>       
            </tr>
            <tr>
                <th>9~11월</th>       
            </tr>
        </tbody>
    </table>
    <p class="color-gray-03 f11 text-align-left mt10">
        ※ 입학 시기에 따라 모집요강 및 지원혜택 상이함 <br> 
        ※ 학원 사정에 따라 연간 운영계획은 변동될 수 있음  
    </p>
    <!-- 입학 절차 안내 -->
    <p class="recruit-tit">러셀 대치 반수반<br><strong>입학 절차 안내</strong></p>
    
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>학원으로 문의<br>
                (02-2138-1010)</span>
        </li>
        <!-- <li>
            <div><strong>2</strong></div>
            <span>합격자 발표</span>
        </li> -->
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
            <p class="step-tit">1) 학원으로 문의(02-2138-1010)</p>
            <!-- <ul class="list-bullet ml0">
                <li>원서 접수 - 학원 홈페이지에서 ‘학생ID’로 로그인 </li>
                <li>성적표 사진 첨부 <br>
                    - 2024학년도 수능, 평가원 성적 기준<br>
                    - 탐구(1)은 탐구 1과목을 의미함<br>
                    - 성적표/재학/합격 증명서 전체 이미지 업로드 필요
                </li>
                <li>미 제출시 그린반 배정</li>
                <li class="bold">★입학일 이후★ 성적표 변경 반영 불가능</li>

            </ul> -->
        </div>
        <!-- <div class="step-txt">
            <p class="step-tit">2) 합격자 발표 (추후 안내)</p>
            <ul class="list-bullet ml0">
                <li>원서 및 성적표 심사 후 합격자에 한해 등록 안내 (순차적 문자 발송)</li>
            </ul>
        </div> -->
        <div class="step-txt">
            <p class="step-tit">2) 강의 선택 및 결제<a href="https://mrusseldc.megastudy.net/teacher/teacher.asp" class="bt-gray-s ml10">강의 선택 &nbsp;바로가기</a></p>
            <ul class="list-bullet ml0">
                <li>바자관 반별 *최저 입학 기준 확인 필요 (추후 공개)
                </li>
                <li>학습 성향 및 수준, 바자관 반별 모집요강에 맞게 수강 희망 단과 등록</li>
                <li>마감 강좌 대기 중인 경우, 시수 미포함
                </li>
                <li>최종 등록 전, 단과 강좌 변경 및 취소 가능</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">3) 최종 등록</p>
            <p class="f14">■ 등록 방법 : 학원 내부 일괄처리 후 개별 안내</p>
            <ul class="list-bullet ml0">
                <li>개인별 단과 등록 총 합산 시수(T)에 따라 바자관 이용료 지원 혜택 적용
                </li>
                <li>*최저입학기준 미달 시, 바자관 이용 불가
                </li>
                <li>학원 문의는 러셀 대치 홈페이지 온라인 상담글 또는 전화(02-2138-1010) 가능
                </li>
            </ul><br>
            <p class="f14">
                ■ 급식신청(추후 안내)<br><br>
                ■ OT 안내(추후 안내)
            </p>
        </div>
    </div>


    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀 대치 반수반<br><strong>모집요강 및 지원혜택</strong></p>

    <!-- 모집요강 자동화 시스템 영역 -->
    <%
    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
    If IsDevSvr() = true Then   '개발서버
        AGM_CD = 4531
    Else '실서버
        AGM_CD = 1575
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
