<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <p class="recruit-tit">러셀 울산 재학생 정규반<br><strong>연간 운영 계획</strong></p>
    <table class="tbl-plan-new typeB">
        <colgroup> 
            <col style="width:25%">
            <col style="width:25%">
            <col style="width:25%">
            <col style="width:25%">
        </colgroup>
        <tbody>
            <tr>
                <th>2024년</th>
                <td>고3</td>             
                <td class="bl">고2</td>             
                <td class="bl">고1</td>             
            </tr>
            <tr>
                <th>3~6월</th>
                <td colspan="3">정규반</td>
            </tr>
            <tr>
                <th>7~8월</th>
                <td colspan="3">썸머스쿨</td>
            </tr>
            <tr>
                <th>9~11월</th>
                <td>정규반</td>
                <td>정규반<br>얼리버드<br>수능<br>집중반</td>
                <td>정규반</td>
            </tr>
            <tr>
                <th>11~12월</th>       
                <td>-</td>  
                <td>정규반<br>얼리버드<br>수능<br>집중반</td>
                <td>정규반</td>
            </tr>
        </tbody>
    </table>
    <p class="color-gray-03 f11 text-align-right m-mt6">* 학원의 사정에 따라 연간 운영 계획은 변동될 수 있으며,<br>
        변동 시 별도 안내드립니다.
    </p>
    <!-- 입학 절차 안내 -->
    <p class="recruit-tit">러셀 울산 재학생 정규반<br><strong>입학 절차 안내</strong></p>
    
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>입학상담</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>온라인<br>원서 접수</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>단과<br>강의 선택 <br>및 결제</span>
        </li>
        <li>
            <div><strong>4</strong></div>
            <span>최종 등록</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;"> 1) 입학상담</p>
            <ul class="list-dot">
                <li>방문/전화/온라인 상담</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 온라인 원서 접수</p>

            <ul class="list-dot mt0 f14">
                <li>모집요강 지원자격 확인</li>
                <li>접수 완료 시, 성적표 제출 및 입학절차 개별 안내 예정</li>
            </ul>
            <a href="https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168" onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.')" class="bt-gray-s ml10 mt10">원서접수 바로가기</a>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">3) 단과 강의 선택 및 결제</p>
        </div>
        <div class="step-txt">
            <p class="step-tit">4) 최종 등록</p>
            <ul class="list-dot mt0 f14">
                <li>등원일 확정</li>
                <li>사전 OT 진행</li>
            </ul>
        </div>
    </div>

    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀 울산 재학생 정규반<br><strong>모집요강 및 장학혜택</strong></p>

    <!-- 모집요강 자동화 시스템 영역 -->
    <%
    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
    If IsDevSvr() = true Then   '개발서버
        AGM_CD = 4482
    Else '실서버
        AGM_CD = 1531
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