<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->


<!--첫번째 타이틀만 margin-top 140px(mt140), 나머지는 모두 margin-top 100px(mt100)로 클래스 추가 필수-->
<!--스페셜 페이지 있을 경우, 첫번째 타이틀에 margin-top 클래스 삭제-->
<div class="cont js-cont russel_dc">

    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 연간 운영 계획 -->
            <h3 class="tit mt140"><strong>러셀 대치 N수 연간 운영 계획</strong></h3>
            <table class="tbl-plan type02 p0">
                <colgroup>
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                </colgroup>
                <thead>
                    <tr>
                        <th>모집대상</th>
                        <th>1월</th>
                        <th>2~5월</th>
                        <th>6월</th>
                        <th>7~8월</th>
                        <th>9~11월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>N수</td>
                        <td>우선선발반</td>
                        <td colspan="4">정규반</td>
                    </tr>
                    <tr>
                        <td>반수</td>
                        <td colspan="2">-</td>
                        <td colspan="3">반수반</td>
                    </tr>
                </tbody>
            </table>
            <ul class="list-02">
                <li>입학 시기에 따라 모집요강 및 지원혜택이 상이함</li>
                <li>학원 사정에 따라 연간 운영계획은 변동될 수 있음</li>
            </ul>

            <!-- 입학절차 -->
            <h3 class="tit mt100"><strong>입학절차</strong></h3>

            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>
                        원서접수/ <br> 성적표 제출
                    </p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>
                        강의 선택 및 결제
                    </p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>
                        최종 등록
                    </p>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!--입학절차 상세설명-->
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit">
                        <span>STEP 1</span>원서접수/성적표 제출

                        <% if curYmdhmin < 202412031100 then %>
                        <% Else %>
                            <% If InStr(LCase(fncRequestVariables("HTTP_HOST")) ,"dev.megastudy.net") > 0 Then 'next server%>
                            <!-- 개발 서버 -->
                            <a href="https://devrussel.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=4170" class="btn-gray-s ml_10">원서접수 바로가기</a>
                            <% Else %>
                            <!-- 실서버 -->
                            <a href="https://russeldc.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179" class="btn-gray-s ml_10">원서접수 바로가기</a>
                            <% End If %>
                        <% End If %>
                    </p>
                    <div class="box">
                        <ul class="list-02">
                            <li>원서접수 - 학원 홈페이지에서 ‘학생ID’로 로그인</li>
                            <li>
                                성적표 필수 첨부 - 2025학년도 6/9평, 수능 성적 기준<br>
                                - 탐구(1) : 탐구 1과목<br>
                                - 평가원 성적표 전체 이미지 업로드<br>
                                - 성적표 미제출시, 그린반 임의 배정
                            </li>
                            <li>대학교 특별 전형 - 입학 기준에 해당하는 대학교의 재학/합격 증명서 제출 필수<br>
                                - 아래 모집요강 및 지원혜택 참고</li>
                            <li>문의 : 자주하는 질문 FAQ 참고 <a href="https://russeldc.megastudy.net/russel/info/qna/faq.asp" class="btn-gray-s ml_10">FAQ 바로가기</a></li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>강의 선택 및 결제 (온라인 진행 > 홈페이지 단과시간표 안내/결제) <a href="https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1805" class="btn-gray-s ml_10">바로가기</a></p>
                    <div class="box">
                        <ul class="list-02">
                            <li>원서 및 성적표 검토 후 강의 등록 안내문자 발송</li>
                            <li>바른공부 자습전용관 반별 모집요강의 "최저 입학 기준" 이상  강의 선택 및 결제 (마감 대기 강의는 시수에 미포함)</li>
                            <li>최종 등록 전, 강의 변경 가능</li>
                            <li>
                                강의 결제 문의 - 온라인 신청 > 1:1 온라인 상담 신청  <a href="https://russeldc.megastudy.net/russel/info/qna/qna.asp" class="btn-gray-s ml_10">바로가기</a><br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;- 유선 문의 02-2138-1010
                            </li>
                            <li>바자관 지원혜택은 등록 강좌를 ★완강★ 한 경우에만 적용됩니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>최종 등록</p>
                    <div class="box">
                        <ul class="list-base">
                            <li>■ 등록 방법 : 강의 시수(T) 및 아이젠(수학관리프로그램) 결제 확인에 따라 바른공부 자습전용관 결제 링크 개별 발송</li>
                            <li>※ 바자관 비용 및 아이젠 결제는 각각 발송</li>
                            <li>※ 아이젠 수학 프로그램 FAQ 확인 <a href="https://russeldc.megastudy.net/russel/info/qna/faq.asp" class="btn-gray-s ml_10">보기</a><br>
                                <strong class="pl15">검색창에서 “아이젠” 입력</strong></li>
                            <li>※ 개인별 강의 등록 시수(T)에 따라 지원혜택 상이</li>
                            <li>※ “최저 입학 기준” 미달 시, 최종 등록 불가</li>
                            <li>
                                ※ 최종 등록 문의 - 온라인 신청 > 1:1 온라인 상담 신청 <br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- 유선 문의 02-2138-1010
                            </li>
                            <li>■ 급식 신청 (선택)</li>
                            <li>※ 참고 : 온라인 신청 > 급식식권 신청 <a href="https://russeldc.megastudy.net/russel/entinfo/online/fns.asp" class="btn-gray-s ml_10">보기</a></li>
                            <li>■ 담임T 및 좌석 : 입학일 전 안내문자 발송</li>
                            <li>■ 오리엔테이션 : 입학 전 안내문자 발송 (미참석의  경우 담임T 개별 진행)</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--//입학절차 상세설명-->


            <!-- 모집요강 -->
            <h3 class="tit mt100"><strong>모집요강 및 지원혜택</strong></h3>
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5710
            Else '실서버
                AGM_CD = 1789
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
    <!-- //cont00 -->
</div>

<script>
    $(function(){
        tabMenu('.bt-tab','.tbl-box .cont-box');
    })
</script>