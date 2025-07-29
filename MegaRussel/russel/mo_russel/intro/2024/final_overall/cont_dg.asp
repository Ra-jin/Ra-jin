<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <!-- 입학 절차 안내 -->
    <p class="recruit-tit">러셀 대구 파이널 종합반<br><strong>모집개요</strong></p>
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
                    <td colspan="2">2025학년도 수능 재도전 학생</td>
                </tr>
                <tr>
                    <th class="bg-sky">개강일</th>
                    <td colspan="2">10월 초 순차 개강</td>
                </tr>
                <tr>
                    <th class="bg-sky">수업과목</th>
                    <td>국어,수학, 영어, 탐구(과학탐구 I, 사회탐구), 논술(수리논술, 인문논술)</td>
                </tr>
                <tr>
                    <th class="bg-sky">접수 방법</th>
                    <td colspan="2">온라인접수 <a href="javascript:alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=176'" class="bt-gray-s ml10">원서접수 바로가기</a></td>
                    <!-- <td colspan="2">온라인접수 <a href="https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=176" class="bt-gray-s ml10">원서접수 바로가기</a></td> -->
                </tr>
                <tr>
                    <th class="bg-sky">수강료</th>
                    <td colspan="2">1,400,000원 (4주 기준)</td>
                </tr>
                <tr>
                    <th class="bg-sky">제출 서류</th>
                    <td colspan="2">
                        * 2024학년도 수능성적 증명서(*필수) 및 평가원 모의고사 (9월 혹은 6월) 성적표(*선택) <br>
                        * 성적증명서(1학년 1학기부터 3학년 2학기(중간/기말 포함)까지 성적 반영) 1부 <br>
                        ※ 성적증명서는 내신 성적으로 입학 희망자의 경우에만 제출                        
                    </td>
                </tr>
                <tr>
                    <th class="bg-sky">상담 안내</th>
                    <td colspan="2">
                        상담 가능 시간 : 오전 9시30분~오후 8시30분 (식사시간 12:00~13:00, 17:30~18:30 제외) <a href="https://mrusseldg.megastudy.net/board/consult_list.asp" class="bt-gray-s ml10">온라인 상담 바로가기</a> <br>
                        ※ 대표번호 : 053-291-1010 또는 온라인 상담                    
                    </td>
                </tr>
            </tbody>
        </table>
    
    </div>
    <p class="recruit-tit">러셀 대구 파이널 종합반<br><strong>입학 절차 안내</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>입학상담/ <br> 원서접수</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>전형확인/ <br> 반편성</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>현장/온라인 <br> 등록</span>
        </li>
    </ul>
    <ul class="setp-diagram">
        <li>
            <div><strong>4</strong></div>
            <span>강좌 선택 <br> 및 등록</span>
        </li>
        <li>
            <div><strong>5</strong></div>
            <span>입학 및 개강</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit"> 1) 입학상담/원서접수</p>
            <ul class="list-dot m0 mt5">
                <li>방문/전화/온라인 상담</li>
                <li>사전예약금 납부</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">2) 전형확인/반 편성</p>
            <ul class="list-dot m0 mt5">
                <li>전형 자격요건 확인</li>
                <li>모집 기준 상 반 편성</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">3) 현장/온라인 등록</p>
            <ul class="list-dot m0 mt5">
                <li>가상 계좌 발송/카드 결제</li>
                <li>미납 시 등록 취소</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">4) 강좌 선택 및 등록</p>
            <ul class="list-dot m0 mt5">
                <li>과목별 선택 수업 선택</li>
                <li>선택한 수업은 개강 전까지 변경 및 취소 가능</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">5) 입학 및 개강</p>
            <ul class="list-dot m0 mt5">
                <li>9월 순차 개강</li>
                <li>개강 전 OT 별도 안내</li>
            </ul>
        </div>
    </div>

    <p class="recruit-tit">러셀 대구 파이널 종합반<br><strong>모집요강</strong></p>
    <div class="tbl-box type01">
        
        <div class="tab-wrap">
            <a href="javascript:void(0)" class="on"><strong>N수생(자연계열)</strong></a>
            <a href="javascript::void(0)"><strong>N수생(인문계열)</strong></a>
        </div>
        <div class="tab-cont on">
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5611
            Else '실서버
                AGM_CD = 1690
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
        <div class="tab-cont">
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5612
            Else '실서버
                AGM_CD = 1691
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

    <p class="recruit-tit">러셀 대구 파이널 종합반<br><strong>장학혜택</strong></p>
    <div class="tbl-box type02">
        
        <div class="tab-wrap">
            <a href="javascript:void(0)" class="on"><strong>자연계열</strong></a>
            <a href="javascript::void(0)"><strong>인문계열</strong></a>
        </div>
        <div class="tab-cont on">
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5613
            Else '실서버
                AGM_CD = 1692
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
        <div class="tab-cont">
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5614
            Else '실서버
                AGM_CD = 1693
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
<script>
    $(function(){
        tabMenu('.type01 .tab-wrap','.type01 .tab-cont');
        tabMenu('.type02 .tab-wrap','.type02 .tab-cont');
    })
</script>