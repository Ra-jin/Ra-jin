<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <!-- 입학 절차 안내 -->
    <p class="recruit-tit">러셀 중계 N수 정규반<br><strong>입학 절차 안내</strong></p>
    <!-- 입학절차 -->
    <ul class="setp-diagram">
        <li>
            <strong>1</strong>
            <span>단과 수업 선택 <br> 및 결제</span>
        </li>
        <li>
            <strong>2</strong>
            <span>성적표 제출 및 <br>최종 등록</span>
        </li>
        <li>
            <strong>3</strong>
            <span>입학</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit">1. 단과 수업 선택 및 결제</p>
            <ul class="list-bar m0 f14">
                <li>등록 방법 : 온라인 또는 학원 방문 접수</li>
                <li>등록 비용 : 단과 수업에 따라 상이</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">2. 성적표 제출 및 최종 등록</p>
            <ul class="list-bar m0 f14">
                <li>성적표 : 반마다 성적표 제출 기준이 상이하므로, ‘2025 N수 정규반‘ 모집요강을 꼭 확인해주시기 바랍니다.</li>
                <li>성적표 제출 : <span class="underline">최종 등록 시, 학원 방문하여 <span class="color-red bold">성적표 사본(출력물) 제출(필수)</span></span></li>
            </ul>
            <ul class="list-bullet m0 mt10">
                <li>제출 불가한 성적표 : (예) 꼬리표, 수기(오피스) 편집, 인적사항 확인 불가한 성적표</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">3. 입학</p>
            <ul class="list-bar m0 f14">
                <li>OT : 개별 안내</li>
            </ul>
        </div>
    </div>
    <!-- //입학절차 -->

    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀 중계 N수 정규반<br><strong>모집요강 및 지원혜택</strong></p>
    <div class="tbl-box">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 4447
        Else '실서버
            AGM_CD = 1496
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
    <!-- //모집요강 및 장학혜택 -->

</div>