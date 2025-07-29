<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
 
<div class="inner">
    <p class="recruit-tit"><strong>입학 절차</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>성적표 제출</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>입학일 결정</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>최종 등록</span>
        </li>
    </ul> 
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit">1) 성적표 제출 <a class="bt-gray-s ml10" href="https://pf.kakao.com/_sFgGxj">성적표 제출하기 </a></p>
            <ul class="list-bullet m0 mt0">
                <li>성적표 제출하기 버튼 클릭 > 러셀 부천 입학처 카카오톡 추가 > 상담원 채팅 > 성적표 이미지 파일을 전송해주시기 바랍니다.</li>
                <li>문서 번호가 작성된 성적증명서 제출은 필수이며, 위조한 성적증명서로 판명될 경우 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                <li>성적표 미제출 및 입학요건 성적 미충족 시 입학이 제한됩니다. (*성적 미충족, 전년 성적 미보유한 경우 정규반 그린반으로 입학 가능)</li>
            </ul>
        </div>

        <div class="step-txt">
            <p class="step-tit">2) 입학일 결정</p>
            <ul class="list-bullet m0 mt0">
                <li>입학 절차 안내 및 입학일 설문 시 희망 입학일 결정해주시면 빠른 순서대로 입학 예정자에 등록됩니다.</li>
                <li>바른공부 자습전용관 입학은 매주 <span class="txt-red f14">월, 수, 금요일</span>에 진행합니다.</li>
            </ul>
        </div>

        <div class="step-txt">
            <p class="step-tit mb0">3) 최종 등록</p>
            <ul class="list-bullet m0 mt0">
                <li class="txt-red">개강 전 입학 취소 시 바자관 및 단과 결제 비용은 전액 환불됩니다.</li>
            </ul>
        </div>
    </div>

    <p class="recruit-tit"><strong>모집요강</strong></p>
    <div class="tbl-box">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6748
        Else '실서버
            AGM_CD = 1831
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