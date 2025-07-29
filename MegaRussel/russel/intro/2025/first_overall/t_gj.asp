<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<!--첫번째 타이틀만 margin-top 140px(mt140), 나머지는 모두 margin-top 100px(mt100)로 클래스 추가 필수-->
<!--스페셜 페이지 있을 경우, 첫번째 타이틀에 margin-top 클래스 삭제-->
<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 모집개요 -->
            <h3 class="tit mt140"><strong>모집개요</strong></h3>
            <table class="tbl-01 type02">
                <colgroup>
                    <col style="width: 30%;">
                    <col style="width: %;">
                </colgroup>
                <tbody>
                    <tr>
                        <th class="bg-th">모집 대상</th>
                        <td class="txt-left">2026년 재수생</td>
                    </tr>
                    <tr>
                        <th class="bg-th">개강일</th>
                        <td class="txt-left">2월 순차 개강</td>
                    </tr>
                    <tr>
                        <th class="bg-th">수업 기간</th>
                        <td class="txt-left">12월~2025년 2월(9주 완성)</td>
                    </tr>
                    <tr>
                        <th class="bg-th">수업 과목</th>
                        <td class="txt-left">국어, 수학, 영어, 탐구(과학탐구)</td>
                    </tr>
                    <tr>
                        <th class="bg-th">접수 방법</th>
                        <td class="txt-left">현장 또는 온라인 접수</td>
                    </tr>
                    <tr>
                        <th class="bg-th">수강료</th>
                        <td class="txt-left">1,252,000원(1달 기준)</td>
                    </tr>
                    <tr>
                        <th class="bg-th">제출 서류</th>
                        <td class="txt-left">
                            - 6평, 9평, 수능 성적표 1부 <br>
                            - 성적증명서 (고등학교 전체 성적 평균 반영) 1부 <br>
                            ※ 성적증명서는 내신 성적으로 입학 희망자의 경우에만 제출
                        </td>
                    </tr>
                    <tr>
                        <th class="bg-th">상담 안내</th>
                        <td class="txt-left">상담 가능 시간 : 오전 10시~오후 8시</td>
                    </tr>
                </tbody>
            </table>


            <!-- 입학 절차 안내 -->
            <h3 class="tit mt140"><strong>입학 절차 안내</strong></h3>
            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>
                        입학상담/원서접수
                    </p>
                    <ul class="list-03">
                        <li>방문/전화/온라인 상담</li>
                    </ul>
                    <a href="javascript:alert('추후 오픈 예정입니다.')" class="btn-gray-s mt15">원서접수 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>
                        성적표 제출
                    </p>
                    <ul class="list-03">
                        <li>
                            모의고사 또는
                            내신 증빙서류 제출
                        </li>
                        <li>
                            4층 입학팀 또는
                            “러셀CORE 광주”
                            카카오 채널로 제출
                        </li>
                    </ul>
                    <a href="https://pf.kakao.com/_swxoCb" class="btn-gray-s mt15">성적표 제출 [바로가기]</a>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>
                        반 편성 후 안내
                    </p>
                    <ul class="list-03">
                        <li>
                            성적표 확인 후, 모집  
                            기준 상 반 편성 및 안내
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>
                        강좌 선택 및 등록
                    </p>
                    <ul class="list-03">
                        <li>과목별 선택 수업 선택</li>
                        <li>
                            선택한 수업은 개강 전
                            까지 변경 및 취소 가능
                            ※ 강좌 선택 추후 안내
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>
                        입학 및 개강
                    </p>
                    <ul class="list-03">
                        <li>2024년 12월 개강</li>
                        <li>개강 전 OT 진행 예정</li>
                    </ul>
                </li>
            </ul>
            <!-- //입학 절차 안내 -->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100"><strong>입학 기준 및 지원혜택</strong></h3>
            <div class="tbl-box type02">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 5693
                Else '실서버
                    AGM_CD = 1773
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

            <!-- //모집요강 및 지원혜택 -->
        </div>
    </div>
    <!-- //cont00 -->
</div>