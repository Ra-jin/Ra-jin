<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->


<!--프로모션 영역-->
<!-- <div class="event-area">
    <p class="recruit-tit">러셀 센텀<br>
    2026 N수 정규반 <strong>이벤트</strong></p>
        <div><img src="<%=Application("img_path_russel")%>/m_russel/russel_ct/2025/regular/cont_pro_img.jpg" alt="" /></div>
</div> -->
<div class="recruit-wrap">
    <div class="inner">
        <!-- 입학 절차 -->
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
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
                <span>강좌<br> 선택 
                    및 결제</span>
            </li>
            <li>
                <div><strong>4</strong></div>
                <span>최종 등록</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 원서접수
                    <a class="bt-gray-s ml10" onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'">원서접수 바로가기</a>
                </p>
                <p class="f14" style="color:#626262;letter-spacing:-0.5px;">① 온라인 원서접수 ② 사전 예약금 납부</p>
                <ul class="list-bullet m0 mt10">
                    <li>사전 예약금(60만원)까지 결제 진행되어야 ‘온라인 원서접수’가 완료됩니다.</li>
                    <li>원서접수를 완료한 학생, 학부모 대상으로 추후 문자를 통해 2025 썸머스쿨 입학 절차가 안내됩니다.</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 성적표 제출</p>
                <ul class="list-bullet m0 mt0">
                    <li>성적표 기준은 모집 요강에 명시된 제출 기준으로 진행되며, 성적표 확인 후 반 배정 확정됩니다.</li>
                    <li>기간 내 성적표 미 제출 시, 그린반으로 자동 배정됩니다.</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 강좌 선택 및 결제</p>
                <ul class="list-bullet m0 mt0">
                    <li>모집 요강 명시된 ‘반 별 의무T수’에 충족한 강좌 선택을 온라인에서 결제 진행됩니다. </li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">4) 최종 등록</p>
                <p class="f14" style="color:#626262;letter-spacing:-0.5px;">2025 썸머스쿨 등록 완료</p>
                <ul class="list-bullet m0 mt0">
                    <li>강좌 등록 내역 확인 후 바른공부 자습전용관 최종 등록 별도 안내드립니다.</li>
                    <li>기존 사전 예약금은 전액 환불됩니다. </li>
                </ul>
            </div>
        </div>

        <!-- 모집요강 및 지원혜택 -->
        <p class="recruit-tit"><strong>모집 요강 및 지원 혜택</strong></p>

        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6933
        Else '실서버
            AGM_CD = 2016
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