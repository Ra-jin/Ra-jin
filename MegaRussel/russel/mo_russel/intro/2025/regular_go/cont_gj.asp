<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <div class="inner">
        <!--연간 운영 계획-->
        <p class="recruit-tit"><strong>연간 운영 계획</strong></p>
        <table class="tbl-plan-new typeB">
            <colgroup> 
                <col style="width:30%">
                <col style="width:35%">
                <col style="width:35%">
            </colgroup>
            <tbody>
                <tr>
                    <th>모집 대상</th>
                    <td>고3</td>               
                    <td>고2</td>               
                </tr>
                <tr>
                    <th>1~2월</th>
                    <td colspan="2">윈터스쿨</td>
                </tr>
                <tr>
                    <th>3~6월</th>
                    <td colspan="2">재학생 정규반</td>
                </tr>
                <tr>
                    <th>7~8월</th>
                    <td colspan="2">썸머스쿨</td>
                </tr>
                <tr>
                    <th>9~11월</th>
                    <td colspan="2">재학생 정규반</td>
                </tr>
                <tr>
                    <th>11~12월</th>
                    <td>-</td>
                    <td>프리윈터스쿨</td>
                </tr>
            </tbody>
        </table>
        <p class="color-gray-03 f11 text-align-right mt10">
            * 학원의 사정에 따라 연간 운영 계획은 변동될 수 있으며, <br> 변동 시 별도 안내드립니다.     
        </p>

        <!-- 입학 절차 안내 -->
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>입학상담<br>
                    /원서접수</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>입학기준 <br>
                    확인 후<br>
                    성적표 제출</span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>단과 강의<br>
                    선택 및 결제</span>
            </li>
            <li>
                <div><strong>4</strong></div>
                <span>재학생 정규반<br>
                    최종 등록</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 입학상담/원서접수</p>
                <ul class="list-bar m0 mt0">
                    <li>방문/전화/온라인 상담</li>
                    <li>유선상담 062-462-1010</li>
                </ul>
                <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.');location.href='https://coregj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184'" class="bt-gray-s ml10">원서접수 바로가기</a>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 입학기준 확인 후 성적표 제출</p>
                <ul class="list-bar m0 mt0">
                    <li>모의고사 또는 내신 증빙서류 제출</li>
                    <li>
                        4층 입학팀 또는 “러셀CORE 광주” 카카오 채널로 제출<br>
                        <a href="https://pf.kakao.com/_swxoCb" class="bt-gray-s">성적표 제출 [바로가기]</a>
                    </li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 단과 강의 선택 및 결제</p>
                <ul class="list-bar m0 mt0">
                    <li>현장 또는 온라인 결제 가능</li>
                </ul>
                <ul class="list-bullet m0">
                    <li>선택한 수업은 개강 전까지 변경 및 취소 가능<br>
                        <a href="https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1982" class="bt-gray-s">정규&middot;특강 단과 [바로가기]</a></li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">4) 재학생 정규반 최종 등록</p>
                <ul class="list-bar m0 mt0">
                    <li>바른공부 자습전용관 등록 (현장 또는 온라인 결제 가능)</li>
                </ul>
                <ul class="list-bullet m0">
                    <li>온라인 결제 희망할 경우
                        카카오 채널로 문의<br>
                        <a href="https://pf.kakao.com/_swxoCb" class="bt-gray-s">카카오톡 문의</a></li>
                </ul>
            </div>
        </div>
        <!-- //입학 절차 안내 -->

        <!-- 모집요강 및 지원혜택 -->
        <p class="recruit-tit"><strong>모집요강 및 지원혜택</strong></p>
        
        <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6828
            Else '실서버
                AGM_CD = 1912
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