<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <!-- 입학 절차 안내 -->
    <p class="recruit-tit">러셀CORE 광주 썸머스쿨<br><strong>입학 절차 안내</strong></p>
    
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>입학 <br> 상담</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>입학기준 <br> 확인 후 <br> 성적표 제출</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>단과 강의 선택<br> 및 결제</span>
        </li>
        <li>
            <div><strong>4</strong></div>
            <span>썸머스쿨 <br> 최종 등록</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;"> 1) 입학상담</p>
            <ul class="list-bar">
                <li>온라인 상담 <a href="http://pf.kakao.com/_swxoCb" class="bt-gray-s ml10">바로가기</a></li>
                <li>유선상담 062-462-1010</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 입학기준 확인 후 성적표 제출</p>
            <p class="step-notice">* 현장 또는 카카오톡 채널에 제출 가능 <br> <a href="http://pf.kakao.com/_swxoCb" class="bt-gray-s ml10 mt5">성적표 제출 [바로가기]</a></p>
            <p class="step-notice">※ 온라인 접수(원서접수 바로가기)를 통해 예약한 경우 추가로 성적표를 제출하지 않아도 됩니다.</p>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">3) 단과 강의 선택 및 결제</p>
            <p class="step-notice">* 현장 또는 온라인 결제 가능 <br><a href="https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1637" class="bt-gray-s ml10 mt5">정규·특강 단과 [바로가기]</a></p>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">4) 썸머스쿨 최종 등록</p>
            <p class="step-notice">
                바른공부 자습전용관 등록(현장 또는 온라인 결제 가능) <br>
                ※ 온라인 결제 희망할 경우 학원에 문의                
            </p>
        </div>
    </div>


    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀CORE 광주 썸머스쿨<br><strong>모집요강 및 지원혜택</strong></p>
    
    <div class="tbl-box p0 pt10">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 5537
        Else '실서버
            AGM_CD = 1616
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