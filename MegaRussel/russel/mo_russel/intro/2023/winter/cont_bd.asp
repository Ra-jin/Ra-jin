<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->


<div class="recruit-wrap pb0 pt0">
    <p class="recruit-tit">러셀 분당 윈터스쿨<br><strong>입학 절차 안내</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>온라인 원서 접수<br>
            (성적표 제출)</span>
            <ol>
                <li>온라인 원서접수</li>
                <li>사전 예약금 결제</li>
            </ol>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>사전 등록금 납부</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>단과 수업 선택<br>
            및 최종 등록</span>
            <ol>
                <li>모집요강 확인</li>
                <li>단과 필수 수강 시수 확인</li>
                <li>단과 수강 신청(결제)</li>
            </ol>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit">1) 온라인 원서 접수(성적표 제출) 
                <a onclick="alert('온라인 대기 신청은 PC 페이지에서 이용 가능합니다.'); location.href='https://russelbd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158';" class="bt-gray-s">온라인 대기 신청</a>
            </p>
            <ul class="list-bar m0 f14">
                <li>접수 방법 : 온라인 원서 접수 후 성적표 등록 
                </li>
                <li>성적표 기준 : 2023년 3월, 6월, 9월 전국연합모의고사 중 택 1
                </li>
            </ul>
            <ul class="list-bullet ml0">
                <li>2023년 11월 전국연합모의고사는 12월에 진행되어 성적 기준에 적용하지 않습니다.</li>
                <li>학생 정보로 회원 가입 후 로그인해야 합니다. (학부모 정보로 접수 시 인정 불가)</li>
                <li>성적표 미 제출 시, 반 배정이 불가하여 이후 입학 절차를 진행할 수 없습니다.
                </li>
                <li>학생 정보 및 성적 확인이 불가한 성적표, 가채점 성적표는 인정되지 않습니다.
                </li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">2) 사전 등록금 납부
            </p>
            <ul class="list-bar m0 f14">
                <li>납부 방법 : 온라인 원서 접수 완료 후 자동 연결되는 결제 페이지에서 진행
                </li>
                <li>사전 등록금 비용 : 62만원
                </li>
            </ul>
            <ul class="list-bullet ml0">
                <li>사전 등록금을 납부하면 온라인 원서 접수가 완료됩니다.
                </li>
                <li>결제가 되지 않는 경우, 온라인 1:1 문의하기를 이용해주시면 안내 드리겠습니다.</li>
                <li class="color-red">사전 등록금은 1월 바자관 비용으로 대체되며, 모집요강에 따라 차액금이 발생할 경우 윈터스쿨 개강 이후 환급받을 수 있습니다.
                </li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">3) 단과 수업 선택 및 최종 등록 (시간표 공개 이후)
            </p>
            <ul class="list-bar m0 f14">
                <li>등록 방법 : 온라인 혹은 학원 방문 접수
                </li>
            </ul>
            <ul class="list-bullet ml0">
                <li>러셀 분당 모든 단과 수업은 윈터스쿨 이용과 관계없이 수강할 수 있습니다.</li>
                <li class="color-red">2024년 단과 시간표 공개 및 등록 일정은 추후 공지합니다.</li>
            </ul>
        </div>
    </div>
    
    <p class="recruit-tit">
        러셀 분당 윈터스쿨<br><strong>모집요강 및 지원혜택</strong>
    </p>
    
    <div class="tbl-box">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 2316
        Else '실서버
            AGM_CD = 1338
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