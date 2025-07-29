<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<div class="inner">
    <h3 class="tit"><strong>입학 절차</strong></h3>
    <ul class="a-process step-over">
        <li>
            <div class="flag">STEP 1</div>
            <p>원서접수</p>
        </li>
        <li>
            <div class="flag">STEP 2</div>
            <p>성적표 제출</p>
        </li>
        <li>
            <div class="flag">STEP 3</div>
            <p>입학일 결정</p>
        </li>
        <li>
            <div class="flag">STEP 4</div>
            <p>최종 등록</p>
        </li>
    </ul>
    <!-- //입학절차 -->

    <!--입학절차 상세설명-->
    <div class="step-box type02">
        <div class="step-wrap">
            <p class="tit"><span>STEP 1</span>원서접수
                <a href="https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=183" class="btn-gray-s ml_10">원서접수 바로가기</a>
            </p>
            <div class="box">
                <ul class="list-02">
                    <li>원서접수를 완료한 학생, 학부모대상으로 문자 및 해피콜 안내를 통해 입학 절차가 안내됩니다.</li>
                </ul>
            </div>
        </div>
        <div class="step-wrap">
            <p class="tit"><span>STEP 2</span>성적표 제출
                <a href="https://pf.kakao.com/_hKnRb" class="btn-gray-s ml_10" target="_blank">성적표 제출하기</a>
            </p>
            <div class="box">
                <ul class="list-02">
                    <li>원서접수 후, <span class="blue2">성적표 제출하기 버튼 클릭 > 러셀 강남 입학처 카카오톡 추가 > 상담원 채팅 > 성적표 이미지 파일을 전송해주시기 바랍니다.</span></li>
                    <li>문서 번호가 작성된 성적증명서 제출은 필수이며, 위조한 성적증명서로 판명될 경우 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                    <li>성적표 미제출 및 입학요건 성적 미충족 시 입학이 제한됩니다. (*성적 미충족, 전년 성적 미보유한 경우 정규반 그린반으로 입학 가능)</li>
                </ul>
            </div>
        </div>
        <div class="step-wrap">
            <p class="tit"><span>STEP 3</span>입학일 결정</p>
            <div class="box">
                <ul class="list-02">
                    <li>입학 절차 안내 및 입학일 설문 시 희망 입학일 결정해주시면 빠른 순서대로 입학 예정자에 등록됩니다.</li>
                    <li>바른공부 자습전용관 입학은 매주 <span class="red_txt">월, 목요일</span>에 진행합니다. </li>
                </ul>
            </div>
        </div>
        <div class="step-wrap">
            <p class="tit"><span>STEP 4</span>최종 등록</p>
            <div class="box">
                <ul class="list-02">
                    <li>월 중간 입학의 경우, 이용 일수 일할 계산하여 이용료 산정합니다. </li>
                    <li class="red_txt">개강 전 입학 취소 시 바자관 및 단과 결제 비용은 전액 환불됩니다. </li>
                </ul>
            </div>
        </div>
    </div>
    <!--//입학절차 상세설명-->

    <!-- 모집요강 및 지원혜택 -->
    <h3 class="tit mt100"><strong>모집요강</strong></h3>
    <div class="tbl-box type02">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6746
        Else '실서버
            AGM_CD = 1828
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