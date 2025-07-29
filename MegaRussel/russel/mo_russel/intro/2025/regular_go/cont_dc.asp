<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <div class="inner">
        <!--연간 운영 계획-->
        <p class="recruit-tit"><strong>연간 운영 계획</strong></p>
        <table class="tbl-plan-new typeB">
            <colgroup> 
                <col style="width:30%">
                <col style="width:%">
            </colgroup>
            <tbody>
                <tr>
                    <th>모집 대상</th>
                    <td>고3</td>               
                </tr>
                <tr>
                    <th>1~2월</th>
                    <td>윈터스쿨</td>
                </tr>
                <tr>
                    <th>3~6월</th>
                    <td>재학생 정규반</td>
                </tr>
                <tr>
                    <th>7~8월</th>
                    <td>썸머스쿨</td>
                </tr>
                <tr>
                    <th>9~11월</th>
                    <td>재학생 정규반</td>
                </tr>
            </tbody>
        </table>
        <p class="color-gray-03 f11 text-align-right mt10">
            * 학원의 사정에 따라 연간 운영 계획은 변동될 수 있으며, <br> 변동 시 별도 안내드립니다.
        </p>

        <!-- 입학 절차 -->
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>원서접수 방법<br>
                    및 합격자 발표</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>단과 수업<br>
                    선택 및 등록</span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>바자관<br>
                    최종 등록<br>
                    (문자 안내)</span>
            </li>
        </ul>
        <!-- //입학절차 -->

        <!--입학절차 상세설명-->
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit mb0" style="display:inline-block;margin-right: 5px;">1) 원서접수 방법 및 합격자 발표
                    <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russeldc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184'" class="bt-gray-s ml10">온라인 원서접수 바로가기</a>
                </p>
                <div class="box">
                    <ul class="list-bullet m0">
                        <li>원서접수 방법 [온라인]</li>
                    </ul>
                    <ul class="list-dot m0">
                        <li>반드시 “학생 ID” 로그인 (학부모 ID 불가)</li>
                        <li>전국연합 모의고사, 내신 성적 증빙자료 첨부 [필수]</li>
                        <li>성적표 미제출시, 그린반 임의 배정</li>
                    </ul>

                    <ul class="list-bullet ml0">
                        <li>합격자 발표 [입학 절차 포함 문자 안내]</li>
                    </ul>
                </div>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 단과 수업 선택 및 등록</p>
                <div class="box">
                    <ul class="list-bullet m0">
                        <li>등록 방법 [온라인 또는 학원 방문]</li>
                    </ul>
                    <ul class="list-dot m0">
                        <li>합격자는 학습 성향 및 수준, 반별 모집요강에 맞게 희망 단과 선택 및 등록</li>
                        <li>의무시수(최저 입학기준) 미충족시, 바자관 이용 불가</li>
                        <li>개강한 단과는 학원에서 등록 가능 (대기신청 단과는 시수 미포함)</li>
                        <li>안내 기한까지 단과 미등록시, 원서접수 취소</li>
                    </ul>
                </div>
            </div>
            <div class="step-txt">
                <p class="step-tit">3) 바자관 최종 등록(문자 안내)</p>
                <div class="box">
                    <ul class="list-bullet m0">
                        <li>등록 방법 [온라인 또는 학원 방문]</li>
                    </ul>
                    <ul class="list-dot m0">
                        <li>반별 모집요강과 개인별 단과 수강 시수( T )에 따라 바자관 지원혜택 적용</li>
                        <li>최종 등록 전, 단과 변경 및 취소 가능 ( 카드혜택 취소 유의 )</li>
                        <li>입학 전 담임선생님 및 좌석 배정 문자 안내</li>
                        <li>입학 후 담임선생님에게 성적 증명서 추가 제출 必 ( 성적표 위조 방지 )</li>
                        <li>학원 문의는 러셀 대치 홈페이지 온라인 상담글 또는 전화 이용 ( 02-2138-1010 )</li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- 모집요강 및 지원혜택 -->
        <p class="recruit-tit"><strong>모집요강 및 지원혜택</strong></p>
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6820
        Else '실서버
            AGM_CD = 1899
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


