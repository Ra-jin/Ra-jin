<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <!-- 입학 절차 안내 -->
    <p class="recruit-tit">러셀CORE 청주 파이널 정규반<br><strong>입학 절차 안내</strong></p>
    
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>온라인 <br> 원서접수</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>입학기준 <br>확인 후 <br>성적표 제출</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>단과 강의<br> 선택 및 결제</span>
        </li>
        <li>
            <div><strong>4</strong></div>
            <span>
                파이널 <br> 정규반<br> 최종 등록 <br> 확인
            </span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;"> 1) 온라인 원서접수</p> <br>
            <a href="javascript:void(0)" onclick="alert('추후 오픈 예정입니다.')" class="bt-gray-s ml10 mt5">온라인 원서접수</a>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 입학기준 확인 후 성적표 제출</p>
            <p class="step-notice">* 성적표 제출 방식 : 별도 안내 예정</p>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">3) 단과 강의 선택 및 결제</p>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">4) 파이널 정규반 최종 등록 확인</p>
        </div>
    </div>


    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀CORE 청주 파이널 정규반<br><strong>모집요강 및 지원혜택</strong></p>
    
    <div class="tbl-box">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 5572
        Else '실서버
            AGM_CD = 1651
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