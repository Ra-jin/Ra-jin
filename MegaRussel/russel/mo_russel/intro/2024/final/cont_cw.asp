<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <p class="recruit-tit">러셀CORE 창원 파이널 정규반<br><strong>입학 절차 안내</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>온라인 <br> 원서접수 후 <br> 사전예약금 <br> 납부</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>입학기준 <br> 확인 후 <br> 성적표 제출</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>단과 강의 <br> 선택 및 결제</span>
        </li>
        <li>
            <div><strong>4</strong></div>
            <span>파이널 <br> 정규반 <br> 최종 등록<br> 확인</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit">1) 온라인 원서접수 후 사전예약금 납부</p>
            <ul class="list-star m0">
                <li>사전예약금 납부 시 입학 안내 문자 발송<a href="https://corecw.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=175" onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.')" class="bt-gray-s ml10">온라인 원서접수</a></li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 입학기준 확인 후 성적표 제출</p>
            <ul class="list-star m0 f14">
                <li>성적표 제출 방식 추후 안내</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">3) 단과 강의 선택 및 결제</p>
            <ul class="list-star m0 f14">
                <li>
                    반에 따라 수강 강좌 수 상이
                </li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">4) 파이널 정규반 최종 등록 확인</p>
        </div>
    </div>

    <p class="recruit-tit">러셀CORE 창원 파이널 정규반<br><strong>모집요강 및 지원혜택</strong></p>
            
    <!-- 모집요강 자동화 시스템 영역 -->
    <%
    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
    If IsDevSvr() = true Then   '개발서버
        AGM_CD = 5587
    Else '실서버
        AGM_CD = 1666
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