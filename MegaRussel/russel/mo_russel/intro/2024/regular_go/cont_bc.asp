<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<div class="recruit-wrap">
    <!-- 연간 운영 계획 -->
    <p class="recruit-tit">러셀 부천 고3 정규반<br><strong>연간 운영 계획</strong></p>
    <table class="tbl-plan-new typeA">
        <colgroup> 
            <col style="width:30%">
            <col style="width:auto">
        </colgroup>
        <tbody>
            <tr>
                <th class="bg-gray">1월</th>
                <td>윈터스쿨</td>             
            </tr>
            <tr>
                <th class="bg-gray">2월</th>
                <td class="bg-gray02">윈터스쿨 PLUS<br></td>
            </tr>
            <tr>
                <th><span>현재 모집 중</span> <br>3~6월</th>
                <td>고3 정규반</td>
            </tr>
            <tr>
                <th class="bg-gray">7~8월</th>
                <td class="bg-gray02">썸머스쿨</td>
            </tr>
            <tr>
                <th class="bg-gray">9~11월</th>
                <td class="bg-gray02">파이널 정규반</td>
            </tr>
        </tbody>
    </table>
    <p class="color-gray-03 f11 text-align-right mt10">* 학원의 사정에 따라 연간 운영 계획은 변동될 수 있으며,<br> 변동 시 별도 안내드립니다.  </p>
    <!-- 입학 절차 안내 -->
    <p class="recruit-tit">러셀 부천 고3 정규반<br><strong>입학 절차 안내</strong></p>
    
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
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 등록</p>
            <ol class="m0 f14">
                <li>① 모집요강 확인</li>
                <li>② 단과 수업 선택 및 등록(현장 또는 온라인 결제 가능) <br>
                    <a href="https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1521" class="bt-gray-s ml10">3월 정규·특강 단과 [바로가기]</a></li>
                <li>③ 바른공부 자습전용관 등록</li>
                <li style="padding-left: 4.5%;">(현장 등록만 가능)</li>
            </ol>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">3) 입학</p>
            <p class="f14">신규생 오리엔테이션 참석 필수<br>
                ※ 등록생에게 별도 안내</p>
        </div>
    </div>

    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀 부천 고3 정규반<br><strong>모집요강 및 지원혜택</strong></p>
    <div class="tbl-box">
        <!-- 모집요강 자동화 시스템 영역 -->

            
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 4440
        Else '실서버
            AGM_CD = 1489
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
