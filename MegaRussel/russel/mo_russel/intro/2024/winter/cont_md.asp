<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <!-- 입학 절차 및 유의사항 안내 -->
    <p class="recruit-tit">2025 윈터스쿨<br><strong>입학 절차 및 유의사항 안내</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>온라인 원서 접수 및<br>
                사전 예약금 결제</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>강의 선택 및<br>
                학원 방문 실등록<br>
                (11월 예정)</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">① 온라인 원서 접수 및 사전 예약금 결제 <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.');" href="https://russelmd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173" class="bt-gray-s ml10 mt5">원서접수 바로가기</a></p>
            <ul class="list-bar m0 mt0">
                <li>반드시 학생 ID로 로그인 하신 후 온라인 원서 접수 진행 바랍니다.</li>
                <li>온라인 원서 접수 시, 성적표 사진 파일 등록은 필수입니다.</li>
                <li class="color-red">성적표 재제출로 인한 전형 변경은 자리 이동 없이 12/30(월)까지만 가능합니다. (해당 기간 이후 변경 불가능)</li>
                <li>온라인 원서 접수 시, 학년 및 성별 등 개인정보 오기입의 경우 추후 실등록이 불가할 수 있습니다.</li>
                <li class="color-red">사전 예약금까지 결제하셔야 원서 접수가 완료됩니다.<br>
                    ※ 결제창이 보이지 않는 경우, 팝업 허용 후 다시 원서접수 버튼을 눌러서 진행해주시면 됩니다.</li>
                <li>사전 예약금은 실등록 시 환불 또는 자습관 비용으로 대체됩니다.</li>
                <li class="color-red">2025년 기준 윈터스쿨은 전석 마감되었으며 현재 대기자 접수만 가능합니다. (사전예약금 X)</li>
                <li class="color-red">11월 중순 실등록 이후 대기자 분들께 순차적으로 등록 안내 예정입니다.
                </li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">② 강의 선택 및 학원 방문 실등록</p>
            <ul class="list-bar m0 mt0">
                <li>전형별 모집 요강에 따른 의무 T수를 충족 및 유지해야합니다. (“T”는 주당 수업 시간 의미)</li>
                <li>위조한 성적증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                <li>단과 수강 신청은 온라인 수강 신청 또는 현장 수강 신청이 가능합니다.</li>
                <li>윈터스쿨 실등록은 ‘현장’ 에서만 가능합니다.</li>
                <li>단과 시간표 및 자습관 실등록 일정은 사전 예약자분들께 추후 문자로 안내 예정입니다. <span class="color-red f14">(11월 예정)</span></li>
            </ul>
        </div>
    </div>

    <!-- 모집요강 및 장학혜택 -->
    <p class="recruit-tit">2025 윈터스쿨<br><strong>모집요강 및 지원혜택</strong></p>
    
    <!-- 모집요강 자동화 시스템 영역 -->
    <%
    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
    If IsDevSvr() = true Then   '개발서버
        AGM_CD = 5585
    Else '실서버
        AGM_CD = 1664
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

<script>
    // 환불/취소 약관 팝업
    $('.r-pop-open').click(function(){
        $('.r-layer-wrap').addClass('on');
    })
    $('.r-layer-wrap .close-btn').click(function(){
        $('.r-layer-wrap').removeClass('on');
    })
</script>