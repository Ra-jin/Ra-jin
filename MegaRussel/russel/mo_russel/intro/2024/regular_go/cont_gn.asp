<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">

    <p class="recruit-tit">러셀 강남 재학생반<br><strong>연간 운영 계획</strong></p>
    <table class="tbl-plan-new typeA">
        <colgroup> 
            <col style="width:30%">
            <col style="width:auto">
        </colgroup>
        <tbody>
            <tr>
                <th class="bg-gray">1월</th>
                <td class="bg-gray02">윈터스쿨</td>             
            </tr>
            <tr>
                <th class="bg-gray">2월</th>
                <td class="bg-gray02">윈터스쿨 PLUS</td>
            </tr>
            <tr>
                <th class="bg-gray">
                    <!-- <span>현재 모집 중</span> <br> -->
                    3~6월
                </th>
                <td class="bg-gray02">재학생 최상위권반 <br>
                    <!-- <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168';">온라인 원서접수</a> -->
                </td>
            </tr>
            <tr>
                <th class="bg-gray">7~8월</th>
                <td class="bg-gray02">썸머스쿨</td>
            </tr>
            <tr>
                <th><span>현재 모집 중</span><br>9~11월</th>
                <td>[고3] 파이널 정규반<br>
                    [고2, 고1] 재학생 최상위권반</td>
            </tr>
            <tr>
                <th class="bg-gray">11~12월</th>
                <td class="bg-gray02">[중3] 고등 대비반
                </td>
            </tr>
        </tbody>
    </table>
    <p class="color-gray-03 f11 text-align-right mt10">※입학 시기에 따라 모집요강 및 지원혜택이 다릅니다. <br>입학 시기에 해당하는 모집요강을 확인해주시기 바랍니다.<br>
        ※원서접수는 최초 입학 시 한번만 하시면 됩니다. <br>(예: 1월 재원생은 2월 원서접수 불필요 / 재등록 별도 안내)
    </p>

    
    <p class="recruit-tit">러셀 강남 재학생 최상위권반<br><strong>입학 절차 안내</strong></p>
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
            <span>강의 등록 <br>
                (선택 사항)</span>
        </li>
        <li>
            <div><strong>4</strong></div>
            <span>최종 등록</span>
        </li>
    </ul>


    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;"> 1) 원서접수</p>
            <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168';" class="bt-gray-s ml10">원서접수 바로가기</a>
            <ul class="list-bullet m0 f14">
                <li>원서접수를 완료한 학생, 학부모 대상으로 문자를 통해 입학 절차가 안내됩니다. </li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 성적표 제출</p>
            <a href="https://pf.kakao.com/_hKnRb" class="bt-gray-s ml10">성적표 제출하기</a>

            <ul class="list-bullet m0 f14">
                <li><span class="color-blue">제출 방법 : 성적표 제출하기 버튼 클릭 &gt; 러셀강남학원 입학처 카카오톡 추가 &gt; 상담원 채팅 &gt; 성적표 이미지 파일 전송</span></li>
                <li>문서 번호가 작성된 증명서 제출은 필수이며, 위조한 증명서로 판명될 경우 수강료 납부 및 퇴원 절차를 진행합니다.
                </li>
                <!-- <li>성적표 확인 후 반편성이 확정되며, <span class="color-blue">성적표 미 제출 시 그린반으로 배정됩니다. </span>
                </li> -->
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">3) 강의 등록 (선택 사항)</p><br>
            <!-- <a href="https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1518" class="bt-gray-s ml10">고3 시간표</a> -->
            <a href="https://mrusselgn.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=242" class="bt-gray-s">고2/고1 시간표</a>
        </div>
        <div class="step-txt">
            <p class="step-tit">4) 최종등록</p>
            <ul class="list-bullet m0 f14">
                <li> 강의 등록 여부 확인 후 최종 등록 안내 드립니다.</li>
                <li class="color-red"> 개강 전 입학 취소 시 바자관 및 단과 결제 비용은 전액 환불됩니다. </li>
            </ul>
        </div>
    </div>

    <!-- 모집요강 자동화 시스템 영역 -->
    <%
    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
    If IsDevSvr() = true Then   '개발서버
        AGM_CD = 4470
    Else '실서버
        AGM_CD = 1519
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
