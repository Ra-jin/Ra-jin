<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!-- 입학 절차 안내 -->
<div class="container">
    <p class="recruit-tit">러셀 강남 파이널 정규반<br><strong>입학 절차</strong></p>
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
            <p class="step-tit">1) 원서접수 <a href="https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=159" onclick="alert('원서접수는 PC페이지에서만 가능합니다.')" class="bt-gray-s ml10">원서접수 바로가기</a></p>
            <ul class="list-bullet m0 f14">
                <li>원서접수를 완료한 학생, 학부모 대상으로 문자를 통해 입학 절차 안내가 이뤄집니다.</li>
            </ul>          
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 성적표 제출 <a href="https://pf.kakao.com/_hKnRb" class="bt-gray-s ml10">성적표 제출하기</a></p>
            <ul class="list-bullet m0 f14">
                <li>원서접수 후, <span class="color-blue">성적표 제출하기 버튼 클릭 > 러셀 강남 입학처 플친 추가 > 상담원 채팅 > 성적표 이미지 파일을 전송</span>해주시기 바랍니다.</li>
                <li>문서 번호가 작성된 성적증명서 제출은 필수이며, 위조한 성적증명서로 판명될 경우 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                <li><span class="color-blue">성적표 미 제출 시 그린반으로 배정됩니다.</span></li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">3) 강의 선택 및 결제 <a href="https://mrusselgn.megastudy.net/board/notice_view.asp?code=25371" class="bt-gray-s ml10">시간표 보러가기</a></p>
            <ul class="list-bullet m0 f14">
                <li>성적표 제출 후 반편성이 완료되면, 단과 필수수강 조건에 해당하는 경우 단과 등록 진행합니다. (필수수강 미충족시 입학 불가)</li>
                <li>단과 결제는 온라인으로 진행합니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">4) 최종 등록</p>
            <ul class="list-bullet m0 f14">
                <li>단과 결제 완료 후, 학원으로 연락주시면 자습관 등록 안내 드립니다.</li>
                <li>
                    <span class="color-blue">급식 이용 시 등원일 3일 전(평일 기준)까지 등록을 완료해 주시기 바랍니다.</span><br>
                    (예시 : 월요일 등원 시, 전주 수요일까지 등록해야 월요일 급식 예약 가능)
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- //입학 절차 안내 -->

<div class="container">
    <!-- 모집요강 및 장학혜택 -->
    <p class="recruit-tit pt0">러셀 강남 파이널 정규반<br><strong>N수 모집요강 및 장학혜택</strong></p>
    <div class="tbl-box">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 1268
        Else '실서버
            AGM_CD = 1291
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
    
    <p class="recruit-tit">러셀 강남 파이널 정규반<br><strong>고3 모집요강 및 장학혜택</strong></p>
    <div class="tbl-box">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 1269
        Else '실서버
            AGM_CD = 1292
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





