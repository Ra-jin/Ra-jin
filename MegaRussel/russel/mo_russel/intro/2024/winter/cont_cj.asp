<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <!-- 연간 운영 계획 -->
    <p class="recruit-tit">러셀CORE 청주 <strong>재학생 정규반<br>연간 운영 계획</strong></p>
    <table class="tbl-plan-new typeB">
        <colgroup> 
            <col style="width:30%">
            <col style="width:auto">
            <col style="width:auto">
            <col style="width:auto">
        </colgroup>
        <tbody>
            <tr>
                <th>2025년</th>
                <td>고3</td>
                <td class="bl">고2</td>
                <td class="bl">고1</td>
            </tr>
            <tr>
                <th >1월</th>
                <td colspan="3" rowspan="2">윈터스쿨</td>             
            </tr>
            <tr>
                <th>2월</th>
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
                <td>파이널<br>정규반</td>
                <td colspan="2">정규반</td>
            </tr>
            <tr>
                <th>11~12월</th>
                <td>-</td>
                <td colspan="2">프리 윈터스쿨</td>
            </tr>
        </tbody>
    </table>

    <!-- 입학 절차 안내 -->
    <p class="recruit-tit">2025 윈터스쿨<br><strong>입학 절차 안내</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>온라인 원서접수</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>성적표 제출</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>윈터스쿨<br>반 편성</span>
        </li>
    </ul>
    <ul class="setp-diagram">
        <li>
            <div><strong>3</strong></div>
            <span>단과 강의<br>
                수강신청</span>
        </li>
        <li>
            <div><strong>4</strong></div>
            <span>2025 윈터스쿨<br>
                최종 등록 확인</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">1) 온라인 원서접수<br>
            <a href="javascript:alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corecj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173';" class="bt-gray-s ml10">원서접수 바로가기</a></p>
        </div>
        <div class="step-txt">
            <p class="step-tit">2) 성적표 제출</p>
            <ul class="list-star m0 mt0">
                <li>성적표 제출 방식은 추후 안내 예정</li>
            </ul>
        </div>

        <div class="step-txt">
            <p class="step-tit">3) 윈터스쿨 반 편성</p>
            <ul class="list-star m0 mt0">
                <li>성적표 확인 후 최종 반 편성 진행</li>
            </ul>
        </div>

        <div class="step-txt">
            <p class="step-tit">4) 단과 강의 수강신청</p>
            <ul class="list-star m0 mt0">
                <li>반 편성에 따른 수강 강좌 수 확인</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">5) 2025 윈터스쿨 최종 등록 확인</p>
            <ul class="list-star m0 mt0">
                <li>개강 전 사전 OT 필수참여</li>
            </ul>
        </div>
    </div>

    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">2025 윈터스쿨<br><strong>모집요강 및 지원혜택</strong></p>



    
    <!-- 모집요강 자동화 시스템 영역 -->
    <%
    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
    If IsDevSvr() = true Then   '개발서버
        AGM_CD = 5674
    Else '실서버
        AGM_CD = 1754
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
    <!-- //모집요강 및 장학혜택 -->       
        

</div>