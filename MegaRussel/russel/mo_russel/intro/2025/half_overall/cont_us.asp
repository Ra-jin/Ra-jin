<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <div class="inner">
        <!-- 입학 절차 -->
        <p class="recruit-tit"><strong>모집 개요</strong></p>
        <div class="tbl-box" style="padding: 4% !important;" >
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6942
            Else '실서버
                AGM_CD = 2025
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
        <a onclick="alert(`원서접수는 PC페이지에서 가능합니다.`); location.href=`https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=188`" class="btn-link mt20">원서접수 바로가기</a>

        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>
                    입학상담/<br>
                    원서접수
                </span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>
                    전형확인/ <br>
                    반 편성
                </span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>
                    현장/온라인 등록
                </span>
            </li>
        </ul>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>
                    강좌 선택 및 등록
                </span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>
                    입학 및 개강
                </span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit">1) 입학상담/원서접수</p>
                <ul class="list-dot m0 mt0">
                    <li>방문/전화/온라인 상담</li>
                    <li>온라인 원서접수</li>
                    <li>
                        사전예약금 납부 <br>
     
                        <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=188';" class="bt-gray-s ml10">원서접수 바로가기</a>
                    </li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 전형확인/반 편성</p>
                <ul class="list-dot m0 mt0">
                    <li>전형 자격요건 확인</li>
                    <li>모집 기준 상 반 편성</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 현장/온라인 등록</p>
                <ul class="list-dot m0 mt0"> 
                    <li>가상 계좌 발송/카드 결제</li>
                    <li>미납 시 합격 취소</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">4) 강좌 선택 및 등록</p>
                <ul class="list-dot m0 mt0">
                    <li>과목별 선택 수업 선택</li>
                    <li>선택한 수업은 개강 전까지 변경 및 취소 가능</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">5) 입학 및 개강</p>
                <ul class="list-dot m0 mt0">
                    <li>6월 2일(월) 개강</li>
                    <li>개강 전 OT 진행 진행</li>
                </ul>
            </div>
        </div>

        <!-- 모집요강 및 장학혜택 -->
        <p class="recruit-tit"><strong>모집요강 및 장학혜택</strong></p>
        <div class="tbl-box">
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6845
            Else '실서버
                AGM_CD = 1928
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


