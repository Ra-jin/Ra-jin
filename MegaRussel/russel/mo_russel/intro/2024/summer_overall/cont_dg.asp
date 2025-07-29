<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <p class="recruit-tit">러셀 대구 썸머스쿨 종합반<br><strong>입학 절차 안내</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>입학상담/ <br> 원서접수</span>
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
            <span>강좌 선택 <br> 및 등록</span>
        </li>
        <li>
            <div><strong>5</strong></div>
            <span>입학 및 <br> 개강</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">1) 입학상담/원서접수<% if curYmdhmin < 202404301000 then %><a href="javascript:void(0)" onclick="alert('4/30(화) 10시 부터 가능합니다.')" class="bt-gray-s ml10">원서접수 바로가기</a><% else %><a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.')" href="https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=172" class="bt-gray-s ml10">원서접수 바로가기</a><% end if %></p>
            <ul class="list-dot m0">
                <li>방문/전화/온라인 상담</li>
                <li>온라인 원서 접수</li>
                <li>사전예약금 납부</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">2) 전형확인/반 편성</p>
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
                <li>과목별 수업 선택</li>
                <li>선택한 수업은 개강 전까지 변경 및 취소 가능</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">5) 입학 및 개강</p>
            <ul class="list-dot m0">
                <li>7/20(토) 개강</li>
                <li>개강 전 OT 별도 안내</li>
            </ul>
        </div>
    </div>

    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀 대구 썸머스쿨 종합반<br><strong>입학기준</strong></p>

    <div class="tbl-box inCon">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 5524
        Else '실서버
            AGM_CD = 1598
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

