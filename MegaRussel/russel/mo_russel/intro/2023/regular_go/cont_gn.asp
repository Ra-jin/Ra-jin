<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!-- 연간 운영 계획 -->
<div class="container">
    <p class="recruit-tit pt0">2023년 러셀 강남<br><strong>재학생반 연간 운영 계획</strong></p>
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
                <th>7~8월</th>
                <th class="on">9~11월 <span>현재 모집중</span></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>재학생<br>최상위권반</td>
                <td>썸머스쿨</td>
                <td>재학생 최상위권반 <br>(고2, 고1) <br> <a style="margin-top: 23px;" href="https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=152" onclick="alert('원서접수는 PC페이지에서 이용 가능합니다.')" target="_blank" alt="">온라인 원서접수</a></td>
            </tr>
        </tbody>
    </table>
    <ul class="list-bullet ml0">
        <li class="color-gray-03 f11">입학 시기에 따라 모집요강 및 장학혜택이 다릅니다. <br>입학 시기에 해당하는 모집요강을 확인해주시기 바랍니다.</li>
    </ul>

</div>
<!-- //연간 운영 계획 -->


<!-- 입학 절차 안내 -->
<div class="container bg-01">
    <p class="recruit-tit">러셀 강남 재학생 최상위권반<br><strong>입학 절차 안내</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>온라인 원서접수</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>성적표 제출</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>최종 등록</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit">1) 2024 재학생 최상위권반  원서접수</p>
            <a href="https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=152" class="bt-gray02 btn-regular-go" onclick="alert('원서접수는 PC페이지에서 이용 가능합니다.')" target="_blank">원서접수 바로가기</a>
            <ul class="list-bullet m0 f14">
                <li>원서접수를 완료한 학생, 학부모 대상으로 문자를 통해 입학 절차 안내가 이뤄집니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">2) 성적표 제출 <a href="http://pf.kakao.com/_hKnRb" class="bt-gray-s">성적표 제출하기</a></p>
            <ul class="list-bullet m0 f14">
                <li>원서접수 후, <span class="color-blue">성적표 제출하기 버튼 클릭 > 러셀 강남 입학처 플친 추가 > 상담원 채팅 > 성적표 이미지 파일을 전송</span>해주시기 바랍니다.</li>
                <li>문서 번호가 작성된 성적증명서 제출은 필수이며, 위조한 성적증명서로 판명될 경우 수강료 납부 및 퇴원 절차를 진행합니다. </li>
                <li><span class="color-blue">성적표 미 제출 시 그린반으로 배정</span>됩니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">3) 최종 등록 <a href="https://mrusselgn.megastudy.net/board/notice_view.asp?code=25371" class="bt-gray-s">시간표 보러가기</a></p>
            <ul class="step-list">
                <li>모집요강 확인 및 단과 수강 신청 (결제)</li>
            </ul>
            <ul class="list-bullet m0 f14">
                <li>성적표 제출 후 반편성이 완료되면, 단과 수강 여부를 결정하고 단과 등록을 완료 합니다. (단과 온라인 결제)</li>
                <li>단과 결제 완료 후, 학원으로 연락주시면 자습관 등록 안내 드립니다. </li>
                <li><strong class="txt-blue">급식 이용 시 등원일 3일 전(평일 기준)까지 등록을 완료</strong>해 주시기 바랍니다.<br>(예시 : 월요일 등원 시, 전주 수요일까지 등록해야 월요일 급식 예약 가능)</li>
            </ul>
        </div>
    </div>
</div>
<!-- //입학 절차 안내 -->

<!-- 모집요강 및 장학혜택 -->
<%
'관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
If IsDevSvr() = true Then   '개발서버
    AGM_CD = 1125
Else '실서버
    AGM_CD = 1147
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
<!-- //모집요강 및 장학혜택 -->






