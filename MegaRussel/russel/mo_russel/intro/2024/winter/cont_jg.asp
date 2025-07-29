<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <!-- 입학 절차 -->
    <p class="recruit-tit">2025 윈터스쿨<br><strong>입학 절차</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span style="letter-spacing:-1px">단과 수업 선택<br>및 결제</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span style="letter-spacing:-1px">성적표 제출 및 <br>최종 등록</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">1) 단과 수업 선택 및 결제</p>
            <ul class="list-bar m0 mt0">
                <li>등록 방법 : 온라인 또는 학원 방문 접수</li>
                <li>등록 비용 : 단과 수업에 따라 상이</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">2) 성적표 제출 및 최종 등록</p>
            <ul class="list-bar m0 mt0">
                <li>성적표 : 학년별 성적표 제출 기준이 상이하므로, ‘2025 윈터스쿨’ 모집요강 확인해주시기 바랍니다.</li>
                <li>성적표 제출 : <span class="f14 underline">최종 등록 시, 학원 방문하여 <strong class="color-red underline">성적표 사본(출력물) 제출(필수)</strong></span></li>
            </ul>
            <ul class="list-bullet" style="margin:5px 0!important;">
                <li>제출 가능한 성적표(예) : 전국연합학력평가 성적표<br>
                    - 학교에서 출력한 성적표의 경우, 담임선생님 서명 또는 학교 직인이  찍혀 있어야 인정됩니다.</li>
                <li>제출 불가한 성적표(예) : 꼬리표, 리로스쿨 출력본, 수기(오피스) 편집, 인적사항 확인 불가한 성적표</li>
            </ul>
        </div>
    </div>

    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">2025 윈터스쿨<br><strong>모집요강 및 지원혜택</strong></p>

    
    <!-- 모집요강 자동화 시스템 영역 -->
    <%
    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
    If IsDevSvr() = true Then   '개발서버
        AGM_CD = 5589
    Else '실서버
        AGM_CD = 1668
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