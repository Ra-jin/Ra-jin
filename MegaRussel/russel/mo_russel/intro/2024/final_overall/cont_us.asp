<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <p class="recruit-tit">러셀 울산 파이널 종합반<br><strong>모집개요</strong></p>
    <div class="tbl-box">
        <table class="tbl-type01 text-align-left">
            <colgroup>
                <col style="width: 18%;">
                <col style="width: %;">
                <col style="width: %;">
            </colgroup>
            <tbody>
                <tr>
                    <th class="bg-sky">모집 대상</th>
                    <td colspan="2">N수</td>
                </tr>
                <tr>
                    <th class="bg-sky">개강일</th>
                    <td colspan="2">10월 7일(월)</td>
                </tr>
                <tr>
                    <th class="bg-sky">수업 기간</th>
                    <td colspan="2"> 2024년 10월 7일(월) ~ 2024년 11월 10일(일), 5주 과정
                    </td>
                </tr>
                <tr>
                    <th class="bg-sky">수업과목</th>
                    <td>국어, 수학, 영어, 탐구(과학탐구), 논술</td>
                </tr>
                <tr>
                    <th class="bg-sky">접수 방법</th>
                    <td colspan="2">현장 또는 온라인 접수<a href="javascript:alert('원서접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=176')" class="bt-gray-s ml10">원서접수 바로가기</a></td>
                </tr>
                <tr>
                    <th class="bg-sky">수강료</th>
                    <td colspan="2">1,675,.000원 (5주)</td>
                </tr>
                <tr>
                    <th class="bg-sky">제출 서류</th>
                    <td colspan="2">
                        2023년 시행 수능 및 9월, 6월 평가원 성적표 중 택 1 (1부) <br>
                        생기부 (1부) ※ 생기부는 내신 성적으로 입학 희망자의 경우에만 제출                                                
                    </td>
                </tr>
                <tr>
                    <th class="bg-sky">상담 안내</th>
                    <td colspan="2">
                        상담 가능 시간 : 오전 10시~오후 8시 (식사 시간 12:00~13:30, 17:00~18:30 제외) <br>
                        ※ 대표번호 : 052-913-1010               
                    </td>
                </tr>
            </tbody>
        </table>
    
    </div>
    <p class="recruit-tit">러셀 울산 파이널 종합반<br><strong>입학 절차 안내</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>입학상담/<br>원서접수</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>전형확인/ <br> 반 편성</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>현장/온라인 <br> 등록</span>
        </li>
    </ul>
    <ul class="setp-diagram">
        <li>
            <div><strong>4</strong></div>
            <span>강좌 선택 <br>및 등록</span>
        </li>
        <li>
            <div><strong>4</strong></div>
            <span>입학 및 개강</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;"> 1) 입학상담/원서접수</p>
            <ul class="list-dot m0">
                <li>방문/전화/온라인 상담</li>
                <li>사전예약금 납부</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">2) 전형확인/ 반 평성</p>
            <ul class="list-dot m0">
                <li>전형 자격요건 확인</li>
                <li>모집 기준 상 반 편성</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">3) 현장/온라인 등록</p>
            <ul class="list-dot m0">
                <li>가상 계좌 발송/카드 결제</li>
                <li>미납 시 등록 취소</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">4) 강좌 선택 및 등록</p>
            <ul class="list-dot m0">
                <li>과목별 선택 수업 선택</li>
                <li>선택한 수업은 개강 전까지 변경 및 취소 가능</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">5) 입학 및 개강</p>
            <ul class="list-dot m0">
                <li>10월 7일(월) 개강</li>
                <li>개강 전 OT 별도 안내</li>
            </ul>
        </div>
    </div>
    <!-- 입학기준 및 장학혜택 -->
    <!-- 모집요강 자동화 시스템 영역 -->
    <%
    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
    If IsDevSvr() = true Then   '개발서버
        AGM_CD = 5650
    Else '실서버
        AGM_CD = 1729
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

