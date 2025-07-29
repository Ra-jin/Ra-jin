<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!-- 연간 운영 계획 -->
<div class="recruit-wrap">
    <div class="inner">
        <p class="recruit-tit">러셀 대치 N수 연간 운영 계획</p>
        <table class="tbl-plan-new typeA">
            <colgroup>
                <col style="width:30%">
                <col style="width:auto">
                <col style="width:auto">
            </colgroup>
            <thead>
                <tr>
                    <th>모집대상</th>
                    <th>N수</th>
                    <th>반수</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>1월</th>
                    <td class="bg-gray02 text-align-center" style="border-right:1px solid #2D2D2D;">우선선발반</td>
                    <td class="bg-gray02 text-align-center" rowspan="2">-</td>
                </tr>
                <tr>
                    <th>2~5월</th>
                    <td class="bg-gray02 text-align-center" rowspan="4" style="border-right:1px solid #2D2D2D;">정규반</td>
                </tr>
                <tr>
                    <th>6월</th>
                    <td class="bg-gray02 text-align-center" rowspan="3">반수반</td>
                </tr>
                <tr>
                    <th>7~8월</th>
                </tr>
                <tr>
                    <th>9~11월</th>
                </tr>
            </tbody>
        </table>
        <p class="r-txt">※ 입학 시기에 따라 모집요강 및 지원혜택이 상이함<br>
            ※ 학원 사정에 따라 연간 운영계획은 변동될 수 있음</p>
    </div>
</div>

<!-- 입학 절차 -->
<div class="recruit-wrap">
    <div class="inner">
        <p class="recruit-tit">입학 절차</p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>원서접수/<br>
                    성적표 제출</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>강의 선택 및<br>
                    결제</span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>최종 등록</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">
                    1) 원서접수/성적표 제출
                    <% if curYmdhmin < 202412031100 then %>
                    <% Else %>

                        <% If InStr(LCase(fncRequestVariables("HTTP_HOST")) ,"dev.megastudy.net") > 0 Then 'next server%>
                        <!-- 개발서버 -->
                        <a href="javascript:;" onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://devrussel.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=4170')" class="bt-gray-s ml10">원서접수 바로가기</a>
                        <% Else %>
                        <!-- 실서버 -->
                        <a href="javascript:;" onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://russeldc.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179')" class="bt-gray-s ml10">원서접수 바로가기</a>
                        <% End If %>
                    <% End If %>
                </p>
                <ul class="list-bullet m0 mt0">
                    <li>원서접수 - 학원 홈페이지에서 ‘학생ID’로 로그인</li>
                    <li>
                        성적표 필수 첨부 - 2025학년도 6/9평, 수능 성적 기준<br>
                        - 탐구(1) : 탐구 1과목<br>
                        - 평가원 성적표 전체 이미지 업로드<br>
                        - 성적표 미제출시, 그린반 임의 배정
                    </li>
                    <li>대학교 특별 전형 - 입학 기준에 해당하는 대학교의 재학/합격 증명서 제출 필수<br>
                        - 아래 모집요강 및 지원혜택 참고</li>
                    <li>문의 : 자주하는 질문 FAQ 참고 <a href="https://russeldc.megastudy.net/russel/info/qna/faq.asp" class="bt-gray-s ml10">FAQ 바로가기</a></li>

                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 강의 선택 및 결제 <a href="https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1805" class="bt-gray-s ml10">바로가기</a><br>
                    <span class="f14" style="font-weight:400;">(온라인 진행 > 홈페이 지 단과시간표 안내/결제)</span></p>
                <ul class="list-bullet m0 mt0">
                    <li>원서 및 성적표 검토 후 강의 등록 안내문자 발송</li>
                    <li>바른공부 자습전용관 반별 모집요강의 “최저 입학 기준” 이상  강의 선택 및 결제 (마감 대기 강의는 시수에 미포함)</li>
                    <li>최종 등록 전, 강의 변경 가능</li>
                    <li>강의 결제 문의<br>
                        - 온라인 신청 > 1:1 온라인 상담 신청<br>
                        - 유선 문의 02-2138-1010 <a href="/board/consult_list.asp" class="bt-gray-s ml10">온라인 상담 바로가기</a>
                    </li>
                    <li>바자관 지원혜택은 등록 강좌를 ★완강★ 한 경우에만 적용됩니다.</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 최종 등록</p>
                <p class="stxt">■ 등록 방법 : 강의 시수(T) 및 아이젠(수학관리프로그램) 결제 확인에 따라 바른공부 자습전용관 결제 링크 개별 발송<br>
                    <span class="pl15">※ 바자관 비용 및 아이젠 결제는 각각 발송</span><br>
                    <span class="pl15">※ 아이젠 수학 프로그램 FAQ 확인 <a href="https://russeldc.megastudy.net/russel/info/qna/faq.asp" class="bt-gray-s ml_10">보기</a><br>
                        <strong class="pl15">검색창에서 “아이젠” 입력</strong></span>
                </p>
                <ul class="list-bullet m0 mt0">
                    <li>개인별 강의 등록 시수(T)에 따라 지원혜택 상이</li>
                    <li>“최저 입학 기준” 미달 시, 최종 등록 불가 </li>
                    <li>최종 등록 문의 - 온라인 신청 > 1:1 온라인 상담 신청<br>
                        - 유선 문의 02-2138-1010</li>
                </ul>
                <p class="stxt">급식 신청 (선택)</p>
                <p class="stxt">※ 참고 : 온라인 신청 > 급식식권 신청</p>
                <p class="stxt">■ 담임T 및 좌석 : 입학일 전 안내문자 발송</p>
                <p class="stxt">■ 오리엔테이션 : 입학 전 안내문자 발송 (미참석의 경우 담임T 개별 진행)</p>
            </div>
        </div>
    </div>
</div>

<!-- 모집요강 및 지원혜택 -->
<div class="recruit-wrap type02">
    <div class="inner">
        <p class="recruit-tit">모집요강 및 지원혜택</p>
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 5711
        Else '실서버
            AGM_CD = 1788
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
<!-- //모집요강 및 장학혜택 -->
