<div class="cont campus-wrap bc">
    <p class="recruit-tit"><%=caumpus_name%> N수 정규반<br><span>입학 절차 안내</span></p>
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
            <p class="step-tit">1) 2024 N수 정규반 입학 상담</p>
            <ul class="list-bullet m0 f14">
                <dd>① 방문상담 : 상담일시 예약 필수</dd>
                <dd>② 온라인 상담<a href="https://pf.kakao.com/_sFgGxj" class="apply-btn">바로가기</a></dd>
                <dd>③ 유선상담 032.265.1010</dd>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 등록</p>
            <ul class="list-bullet m0 f14">
                <dd>① 모집요강 확인</dd>
                <dd>② 단과 수업 선택 및 등록(현장 또는 온라인 결제 가능)</dd>
                <dd>③ 성적표 제출 및 바른공부 자습전용관 등록 (현장 등록만 가능)</dd>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">3) 입학</p>
            <ul class="list-bullet m0 f14">
                <dd>신규생 오리엔테이션 참석 필수</dd>
                <dd>※ 등록생에게 별도 안내</dd>
            </ul>
        </div>
    </div>
    <p class="recruit-tit"><%=caumpus_name%> N수 정규반<br><span>모집요강 및 장학혜택</span></p>
    <div class="tbl-box">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 1103
        Else '실서버
            AGM_CD = 126
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
