<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!-- 연간 운영 계획/입학 절차 안내 -->
<div class="container bg-gray">
    <p class="recruit-tit pt0">2023년 러셀 강남 썸머스쿨<br><strong>연간 운영 계획</strong></p>
    <table class="tbl-plan">
        <thead>
            <tr>
                <th style="width: 50%;">1월</th>
                <th>2월</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>윈터스쿨</td>
                <td>윈터스쿨 PLUS</td>
            </tr>
        </tbody>
    </table>
    <table class="tbl-plan mt10">
        <thead>
            <tr>
                <th>3~6월</th>
                <th class="on">7~8월</th>
                <th>9~11월</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>재학생<br>최상위권반</td>
                <td>썸머스쿨</td>
                <td>파이널 정규반</td>
            </tr>
        </tbody>
    </table>
    <ul class="list-bullet ml0">
        <li class="color-gray-03 f11">입학 시기에 따라 모집요강 및 장학혜택이 다릅니다. <br>입학 시기에 해당하는 모집요강을 확인해주시기 바랍니다.</li>
    </ul>


    <p class="recruit-tit">2023년 러셀 강남 썸머스쿨<br><strong>입학 절차</strong></p>
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
            <span>강의 선택 및 결제</span>
        </li>
        <li>
            <div><strong>4</strong></div>
            <span>최종 등록</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit">1) 원서접수</p>
            <ul class="step-list">
                <li>① 온라인 원서접수</li>
                <li>② 사전 예약금 납부</li>
            </ul>
            <ul class="list-bullet m0 f14">
                <li class="color-red">현재 전 학년 마감되었습니다. 대기 접수는 받지 않습니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 성적표 제출 <a href="https://pf.kakao.com/_hKnRb" class="bt-gray-s ml10">성적표 제출하기</a></p>
            <ul class="list-bullet m0 f14">
                <li>입학 대상자는 개별적으로 연락 드려 성적표 제출을 요청 드립니다.</li>
                <li>성적표 미 제출 시 그린반으로 배정됩니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">3) 강의 선택 및 결제</p>
            <ul class="list-bullet m0 f14">
                <li>성적표 제출 및 반배정 완료 후 모집요강에 따른 필수 수강시수에 맞춰 강의를 등록해 주세요.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">4) 최종 등록</p>
            <ul class="list-bullet m0 f14">
                <li>강의 등록 후 '마이페이지' 에서 바자관 등록까지 완료해 주세요.</li>
                <li>바자관 전액지원인 경우에도 '0원'결제하기로 결제 단계를 끝까지 진행해 주세요.</li>
                <li>최종 등록 내역 확인 후 사전예약금은 전액 환불해드립니다.</li>
            </ul>
        </div>
    </div>
</div>
<!-- //연간 운영 계획/입학 절차 안내 -->

<div class="container">
    <!-- 모집요강 및 장학혜택 -->
    <p class="recruit-tit pt0">2023년 러셀 강남 썸머스쿨<br><strong>모집요강 및 지원혜택</strong></p>
    <div class="tbl-box">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 1251
        Else '실서버
            AGM_CD = 1273
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





