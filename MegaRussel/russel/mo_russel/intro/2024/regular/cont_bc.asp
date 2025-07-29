<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <!-- 입학 절차 안내 -->
    <p class="recruit-tit">러셀 부천 N수 정규반<br><strong>입학 절차 안내</strong></p>
    
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>입학 상담</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>등록</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>입학</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;"> 1) 입학 상담</p>
            <ol class="m0 f14">
                <li>① 방문상담 : 상담일시 예약 필수</li>
                <li>② 온라인 상담 <a href="https://pf.kakao.com/_sFgGxj" class="bt-gray-s ml10">바로가기</a></li>
                <li>③ 유선상담 032.265.1010</li>
            </ol>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 전형 확인 및 강의 선택</p>
            <ol class="m0 f14">
                <li>① 모집요강 확인</li>
                <li>② 성적표 제출 (현장 또는 상담 채널 제출) <a href="https://pf.kakao.com/_sFgGxj" class="bt-gray-s ml10">성적표 제출하기</a></li>
                <li>③ 단과 수업 선택 및 등록<br>
                    (현장/온라인/링크 결제 中 택1)</li>
                <li>④ 바른공부 자습전용관 등록 (현장/링크 결제 中 택1)</li>
            </ol>
            <p class="txt">※ 성적표 제출 방법 : 성적표 제출하기 버튼 클릭 > 러셀 부천학원 채널 추가 > 상담원 채팅 > 성적표 이미지 파일 전송</p>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">3) 입학</p>
            <p class="f14">신규생 오리엔테이션 참석 필수<br>
                ※ 등록생에게 별도 안내</p>
        </div>
    </div>

    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀 부천 N수 정규반<br><strong>모집요강 및 지원혜택</strong></p>
    <div class="tbl-box">
        <!-- 모집요강 자동화 시스템 영역 -->    
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 4406
        Else '실서버
            AGM_CD = 1455
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
