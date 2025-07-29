<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <p class="recruit-tit">러셀CORE 광주 재수생 우선선발반<br><strong>입학 절차 안내</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>원서접수</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>성적표 제출</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>강의 선택 <br> 및 결제</span>
        </li>
        <li>
            <div><strong>4</strong></div>
            <span>최종 등록</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit">1) 원서접수 <a href="javascript:void(0)" onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coregj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163';" class="bt-gray-s ml10">원서접수 바로가기</a></p>
            <ul class="step-list">
                <li>① 온라인 원서접수</li>
                <li>② 사전 예약금 납부(성적표 지참)</li>
            </ul>
            <!-- <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158'; class="bt-gray02 btn-regular btn-pc">원서접수 바로가기</a> -->
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 성적표 제출</p>
            <ul class="list-bullet m0 f14">
                <li>입학기준 확인 후 성적표 제출</li>
                <li>
                    성적표 제출 방식 
                    (온라인,러셀CORE 광주 카카오채널, 현장 제출)   
                </li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">3) 1월 단과 강의 선택 및 결제</p>
            <ul class="list-bullet m0 f14">
                <li>
                    단과 강의 11월 21일 이후
                    결제 가능
                </li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">4) 우선선발반 최종 등록 확인</p>
        </div>
    </div>

    <p class="recruit-tit">러셀CORE광주 재수생 우선선발반<br><strong>모집요강 및 지원혜택</strong></p>
    <!-- 모집요강 및 지원혜택 -->
    <div class="tbl-box">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 3373
        Else '실서버
            AGM_CD = 1398
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
