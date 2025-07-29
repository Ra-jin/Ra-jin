<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<div class="cont js-cont">
    <div class="cont00">
        <div class="inner">
            <!-- 모집 개요 -->
            <h3>러셀 울산 파이널 종합반 <strong>모집 개요</strong></h3>
            <div class="tbl-box">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:12%;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="bg-gray">모집 대상</th>
                            <td class="tal">N수</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">개강일</th>
                            <td class="tal">10월 7일(월)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 기간</th>
                            <td class="tal">2024년 10월 7일(월) ~ 2024년 11월 10일(일), 5주 과정
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 과목</th>
                            <td class="tal">국어, 수학, 영어, 탐구(과학탐구), 논술</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">접수 방법</th>
                            <td class="tal">현장 또는 온라인 접수 <a class='bt-apply' href='https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=176'>원서접수 바로가기</a> </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수강료</th>
                            <td class="tal">1,675,000원 (5주)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">제출 서류</th>
                            <td class="tal">
                                2023년 시행 수능 및 9월, 6월 평가원 성적표 중 택 1 (1부)<br>
                                생기부 (1부) ※ 생기부는 내신 성적으로 입학 희망자의 경우에만 제출
                            </td>
                        </tr>   
                        <tr>
                            <th class="bg-gray">상담 안내</th>
                            <td class="tal">
                                상담 가능 시간 : 오전 10시~오후 8시 (식사 시간 12:00~13:30, 17:00~18:30 제외) <br>
                                ※ 대표번호 : 052-913-1010   
                            </td>
                        </tr>                    
                    </tbody>
                </table>
            </div>
            <!-- //모집 개요 -->
    
            <!-- 입학 절차 안내 -->
            <h3 class="mt100">러셀 울산 파이널 종합반  <strong>입학 절차 안내</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학상담/원서접수</p>
                    <ul class="list-03">
                        <li> 방문/전화/온라인 상담</li>
                        <li> 사전예약금 납부</li>                    
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
                    <p>현장/온라인 등록</p>
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
                        <li> 선택한 수업은 개강 전 <br>
                            까지 변경 및 취소 가능
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>입학 및 개강</p>
                    <ul class="list-03">
                        <li> 10월 7일(월) 개강</li>
                        <li> 개강 전 OT 별도 안내</li>
                    </ul>
                </li>
            </ul>
            <!-- //입학 절차 안내 -->
    
            <!-- 입학기준 및 장학혜택 -->
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5649
            Else '실서버
                AGM_CD = 1728
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
</div>

