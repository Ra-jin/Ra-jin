<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <!-- 러셀 센텀 재학생 대상 연간 운영 계획 -->
    <p class="recruit-tit">러셀 센텀 재학생 대상<br><strong>연간 운영 계획</strong></p>
    <table class="tbl-plan-new typeA">
        <colgroup> 
            <col style="width:30%">
            <col style="width:auto">
        </colgroup>
        <tbody>
            <tr>
                <th class="bg-gray">12월</th>
                <td class="bg-gray02">사전이용기간<br>
                    <span class="f12">[ 12/23(월) ~ 12/31(화) ]<br>
                    
                     ※ 전액장학지원<br>
                      [윈터스쿨 실등록자에 한 함]
                    </span></td>
            </tr>
            <tr>
                <!-- <th><span>현재 모집 중</span><br> 1월</th> -->
                <th class="bg-gray">1월</th>
                <td class="bg-gray02">윈터스쿨<br>
                    <span class="f12">[ 1/1(수) ~ 2/2(일) ]</span>
                </td>             
            </tr>
            <tr>
                <th><span>대기 접수 중</span><br>2월</th>
                <td>윈터스쿨 PLUS<br>
                    <span class="f12">[ 2/3(월) ~ 3/2(일) ]</span><br>
                    <a onclick="alert('대기자 접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'">대기자 원서접수 </a>
                </td>
            </tr>
            <tr>
                <th class="bg-gray">3~6월</th>
                <td class="bg-gray02">재학생 정규반</td>
            </tr>
            <tr>
                <th class="bg-gray">7~8월</th>
                <td class="bg-gray02">썸머스쿨</td>
            </tr>
            <tr>
                <th class="bg-gray">9~11월</th>
                <td class="bg-gray02">파이널 정규반</td>
            </tr>
            <tr>
                <th class="bg-gray">11~12월</th>
                <td class="bg-gray02">프리 윈터스쿨</td>
            </tr>
        </tbody>
    </table>

    <!-- 입학 절차 -->
    <p class="recruit-tit">2025 윈터스쿨<br><strong>입학 절차</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>원서 접수</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>성적표 제출</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>강의 선택<br>및 결제</span>
        </li>
        <li>
            <div><strong>4</strong></div>
            <span>최종 등록</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">1) 원서접수</p>
            <p style="font-size:1.5rem;letter-spacing:-0.5px;">① 온라인 원서 접수 ② 사전 예약금 납부 <a onclick="alert('대기자 접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173';" class="bt-gray-s ml10">대기자 원서접수 </a></p>
            <ul class="list-dot m0 mt0">
                <li>사전 예약금 (58만원)까지 결제해 주셔야 원서접수가 완료됩니다.</li>
                <li>원서접수를 완료한 학생, 학부모 대상으로 문자를 통해 입학 절차가 안내됩니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">2) 성적표 제출</p>
            <ul class="list-dot m0 mt0">
                <li>모집요강이 확정되면 성적표 제출 안내드리며, 성적표 확인 후 반배정 확정됩니다.</li>
                <li>성적표 미제출 시 그린반으로 배정됩니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">3) 강의 선택 및 결제</p>
            <ul class="list-dot m0 mt0">
                <li>윈터특강 시간표가 확정되면 의무 T수에 따른 강의 등록 안내 드립니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">4) 최종 등록</p>
            <ul class="list-dot m0 mt0">
                <li>강의 등록 내역 확인 후 바른공부 자습전용관 최종 등록해 드립니다.</li>
                <li>예약금은 전액 환불됩니다.</li>
            </ul>
        </div>
    </div>

    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">2025 윈터스쿨<br><strong>모집요강 및 장학혜택</strong></p>

    <!-- 모집요강 자동화 시스템 영역 -->
    <%
    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
    If IsDevSvr() = true Then   '개발서버
        AGM_CD = 5618
    Else '실서버
        AGM_CD = 1697
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