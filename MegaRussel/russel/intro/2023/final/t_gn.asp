<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<p class="mb60"><img src="<%=Application("img_path_russel")%>/intro/2023/final/t_gn.png" alt="러셀 강남 파이널 정규반 입학 절차"></p>
<div class="step-info-wrap">
    <div class="step-list">
        <p class="tit"><span>1</span> 원서접수</p>
    </div>
    <div class="step-list">
        <p class="tit"><span>2</span> 성적표 제출</p>
    </div>
    <div class="step-list">
        <p class="tit"><span>3</span> 강의 선택 및 결제</p>
    </div>
    <div class="step-list">
        <p class="tit"><span>4</span> 최종 등록</p>
    </div>
</div>
<div class="step-box">  
    <p class="tit">1) 원서접수 <a href="https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=159" class="btn-gray-s">원서접수 바로가기</a></p>
    <div class="box">
        <ul class="shape-list">
            <li>원서접수를 완료한 학생, 학부모 대상으로 문자를 통해 입학 절차 안내가 이뤄집니다.</li>
        </ul>
    </div>
    <p class="tit">2) 성적표 제출 <a href="https://pf.kakao.com/_hKnRb" target="_blank" class="btn-gray-s">성적표 제출하기</a></p>
    <div class="box">
        <ul class="shape-list">
            <li>원서접수 후, <span class="blue">성적표 제출하기 버튼 클릭 > 러셀 강남 입학처 플친 추가 > 상담원 채팅 > 성적표 이미지 파일을 전송</span>해주시기 바랍니다.</li>
            <li>문서 번호가 작성된 성적증명서 제출은 필수이며, 위조한 성적증명서로 판명될 경우 수강료 납부 및 퇴원 절차를 진행합니다.</li>
            <li><span class="blue">성적표 미 제출 시 그린반으로 배정됩니다.</span></li>
        </ul>
    </div>
    <p class="tit">3) 강의 선택 및 결제 <a href="https://russelgn.megastudy.net/russel/info/notice/notice_view.asp?Code=25371&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1" class="btn-gray-s">시간표 보러가기</a></p>
    <div class="box">
        <ul class="shape-list">
            <li>성적표 제출 후 반편성이 완료되면, 단과 필수수강 조건에 해당하는 경우 단과 등록 진행합니다. (필수수강 미충족시 입학 불가) </li>
            <li>단과 결제는 온라인으로 진행합니다. </li>
        </ul>
    </div>
    <p class="tit">4) 최종 등록</p>
    <div class="box">
        <ul class="shape-list">
            <li>단과 결제 완료 후, 학원으로 연락주시면 자습관 등록 안내 드립니다. </li>
            <li><span class="blue">급식 이용 시 등원일 3일 전(평일 기준)까지 등록을 완료해 주시기 바랍니다.</span><br>(예시 : 월요일 등원 시, 전주 수요일까지 등록해야 월요일 급식 예약 가능)</li>
        </ul>
    </div>
</div>

<p class="mt100 mb60"><img src="<%=Application("img_path_russel")%>/intro/2023/final/t_gn02.png" alt="모집요강 및 장학혜택"></p>
<!-- tab-cont-wrap -->
<div class="tab-cont-wrap">
    <div class="bt-tab final-bt-tab">
        <a href="#" class="on"><strong>N수</strong></a>
        <a href="#"><strong>고3</strong></a>
    </div>

    <!-- N수 -->
    <div class="cont-box final-cont-box on">
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 2270
        Else '실서버
            AGM_CD = 1293
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
    </div>
    <!-- //N수 -->

    <!-- 고3 -->
    <div class="cont-box final-cont-box">
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 2271
        Else '실서버
            AGM_CD = 1294
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
    </div>
    <!-- //고3 -->
</div>
<!-- //tab-cont-wrap -->
