<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<div class="recruit-wrap pb0">

    <p class="recruit-tit pt0">러셀 센텀 재학생 대상<br><strong>연간 운영 계획</strong></p>
    <table class="tbl-plan">
        <colgroup> 
            <col style="width:auto">
            <col style="width:40%">
            <col style="width:auto">
        </colgroup>
        <thead>
            <tr>
                <th>1월</th>
                <th class="on">2월<span>현재 모집중</span></th>
                <th>3~6월</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>
                    윈터스쿨
                </td>
                <td>
                    윈터스쿨<br>PLUS<br><a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158';">온라인 원서접수</a>
                </td>
                <td>
                    재학생<br>정규반
                </td>
            </tr>
        </tbody>
    </table>
    <table class="tbl-plan mt10">
        <colgroup> 
            <col style="width:auto">
            <col style="width:auto">
            <col style="width:auto">
        </colgroup>
        <thead>
            <tr>
                <th>7~8월</th>
                <th>9~11월</th>
                <th>11~12월</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>썸머스쿨</td>
                <td>파이널 정규반</td>
                <td>프리<br>
                윈터스쿨</td>
            </tr>
        </tbody>
    </table>
    <ul class="list-bullet ml0">
        <li class="color-gray-03 f11">입학 시기에 따라 모집요강 및 장학혜택이 다릅니다. <br>입학 시기에 해당하는 모집요강을 확인해주시기 바랍니다.</li>
    </ul>
    
    <p class="recruit-tit">러셀 센텀 윈터스쿨<br><strong>입학 절차 안내</strong></p>
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
            <!-- <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158'; class="bt-gray02 btn-regular btn-pc">원서접수 바로가기</a> -->
            <ul class="list-bullet m0 f14">
                <li>사전 예약금 (58만원)까지 결제가 되어야 원서접수가 완료됩니다.
                </li>
                <li>원서접수를 완료한 학생, 학부모 대상으로 문자를 통해 입학 절차가 안내됩니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 성적표 제출</p>
            <ul class="list-bullet m0 f14">
                <li>모집요강이 확정되면 성적표 제출 안내드리며, 성적표 확인 후 반배정 확정됩니다.</li>
                <li>성적표 미 제출 시 그린반으로 배정됩니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">3) 강의 선택 및 결제</p>
            <ul class="list-bullet m0 f14">
                <li>윈터특강 시간표가 확정되면 맞춤 수업에 따른 강의 등록 안내 드립니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">4) 최종 등록</p>
            <ul class="list-bullet m0 f14">
                <li>강의 등록 내역 확인 후 바자관 최종 등록해드립니다.</li>
                <li>예약금은 전액 환불됩니다.</li>
            </ul>
        </div>
    </div>

    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀 센텀 윈터스쿨<br><strong>모집요강 및 지원혜택</strong></p>
    <div class="tbl-box">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 2320
        Else '실서버
            AGM_CD = 1344
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