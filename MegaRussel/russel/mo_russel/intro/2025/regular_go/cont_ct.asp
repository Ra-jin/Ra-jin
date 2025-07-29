<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->


<div class="recruit-wrap">
    <div class="inner">
        <!--연간 운영 계획-->
        <p class="recruit-tit"><strong>연간 운영 계획</strong></p>
        <table class="tbl-plan-new typeB">
            <colgroup> 
                <col style="width:30%">
                <col style="width:23%">
                <col style="width:23%">
                <col style="width:23%">
            </colgroup>
            <tbody>
                <tr>
                    <th>모집 대상</th>
                    <td>고3</td>               
                    <td>고2</td>               
                    <td>고1</td>               
                </tr>
                <tr>
                    <th>1~2월</th>
                    <td colspan="3">윈터스쿨</td>
                </tr>
                <tr>
                    <th>3~6월</th>
                    <td colspan="3">재학생 정규반</td>
                </tr>
                <tr>
                    <th>7~8월</th>
                    <td colspan="3">썸머스쿨</td>
                </tr>
                <tr>
                    <th>9~11월</th>
                    <td colspan="3">파이널 정규반</td>
                </tr>
                <tr>
                    <th>11~12월</th>
                    <td>-</td>
                    <td colspan="2">프리윈터스쿨</td>
                </tr>
            </tbody>
        </table>
        <p class="color-gray-03 f11 text-align-right mt10">
            * 학원의 사정에 따라 연간 운영 계획은 변동될 수 있으며, <br> 변동 시 별도 안내드립니다.
        </p>


        <!-- 입학 절차 -->
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>원서접수</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>성적표 <br> 제출</span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>강좌 선택 <br>
                    및 결제</span>
            </li>
            <li>
                <div><strong>4</strong></div>
                <span>최종 등록</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 원서접수</p>
                <p class="f14" style="color:#626262;letter-spacing:-0.5px;">
                    ① 온라인 원서접수 ② 사전예약금 납부 <br>
                    <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.');location.href='https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184'" class="bt-gray-s mt10">온라인 원서접수 바로가기</a>
                </p>
                <ul class="list-bar m0 mt10">
                    <li>사전 예약금 (60만원)까지 결제해 주셔야 원서접수가 완료됩니다.</li>
                    <li>원서접수를 완료한 학생, 학부모 대상으로 문자를 통해 입학 절차가 안내됩니다.</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 성적표 제출</p>
                <ul class="list-bar m0 mt0">
                    <li>모집요강이 확정되면 성적표 제출 안내드리며, 성적표 확인 후 반배정 확정됩니다.</li>
                    <li>성적표 미제출 시 그린반으로 배정됩니다.</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 강좌 선택 및 결제</p>
                <ul class="list-bar m0 mt0">
                    <li>의무 T수에 따른 강의 선택 및 결제 진행 부탁드립니다.</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">4) 최종 등록</p>
                <ul class="list-bar m0 mt0">
                    <li>강의 등록 내역 확인 후 바른공부 자습전용관 최종 등록해 드립니다.</li>
                    <li>예약금은 전액 환불됩니다.</li>
                </ul>
            </div>
        </div>

        <!-- 모집요강 및 지원혜택 -->
        <p class="recruit-tit"><strong>모집요강 및 지원혜택</strong></p>
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6786
            Else '실서버
                AGM_CD = 1868
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
    // $('.r-pop-open').click(function(){
    //     $('.r-layer-wrap').addClass('on');
    // })
    // $('.r-layer-wrap .close-btn').click(function(){
    //     $('.r-layer-wrap').removeClass('on');
    // })
</script>