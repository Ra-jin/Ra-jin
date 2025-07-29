<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<div class="cont js-cont">
    <div class="cont00">
        <div class="inner">
            <!-- 모집 개요 -->
            <h3>러셀CORE 광주 파이널 종합반 <strong>모집 개요</strong></h3>
            <div class="tbl-box">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:12%;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="bg-gray">모집 대상</th>
                            <td class="tal">2024년 N수, 고3</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">개강일</th>
                            <td class="tal">10월  순차 개강</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 기간</th>
                            <td class="tal">2024년 수능일까지</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 과목</th>
                            <td class="tal">국어, 수학, 영어, 탐구(과학탐구) </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">접수 방법</th>
                            <td class="tal">현장 접수</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수강료</th>
                            <td class="tal">1,422,000원(1달 기준)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">제출 서류</th>
                            <td class="tal">
                                - 6평, 9평, 수능 성적표 1부 <br>
                                -  성적증명서 (고등학교 전체 성적 평균 반영) 1부<br>
                                ※ 성적증명서는 내신 성적으로 입학 희망자의 경우에만 제출
                            </td>
                        </tr>   
                        <tr>
                            <th class="bg-gray">상담 안내</th>
                            <td class="tal">
                                상담 가능 시간 : 오전 10시~오후 8시
                            </td>
                        </tr>                    
                    </tbody>
                </table>
            </div>
            <!-- //모집 개요 -->
    
            <!-- 입학 절차 안내 -->
            <h3 class="mt100">러셀CORE 광주 파이널 종합반  <strong>입학 절차 안내</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학상담/원서접수</p>
                    <ul class="list-03">
                        <li> 방문/전화/온라인 상담</li>                 
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>전형확인/반 편성</p>
                    <ul class="list-03">
                        <li> 전형 자격요건 확인</li>
                        <li> 모집 기준 상 반 편성</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>현장 등록</p>
                    <ul class="list-03">
                        <li> 가상 계좌 발송/카드 결제</li>
                        <li> 미납 시 등록 취소</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>강좌 선택 및 등록</p>
                    <ul class="list-03">
                        <li> 과목별 선택 수업 선택</li>
                        <li> 선택한 수업은 개강 전<br>
                            까지 변경 및 취소 가능
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>입학 및 개강</p>
                    <ul class="list-03">
                        <li> 9월 순차 개강</li>
                        <li> 개강 전 OT 별도 안내</li>
                    </ul>
                </li>
            </ul>
            <!-- //입학 절차 안내 -->
    
            <!-- 입학기준 및 지원혜택 -->
            <h3 class="tit mt100">러셀CORE 광주 파이널 종합반  <strong>입학 기준 및 지원혜택</strong></h3>
            <div class="tbl-box">
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 5598
                Else '실서버
                    AGM_CD = 1677
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

            </div>           
        </div>
    </div>
</div>

