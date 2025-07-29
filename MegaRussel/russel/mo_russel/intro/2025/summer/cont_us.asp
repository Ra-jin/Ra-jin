<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <div class="inner">
        <!-- 입학 절차 -->
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>원서접수</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>성적표 제출</span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>강의 등록</span>
            </li>
            <li>
                <div><strong>4</strong></div>
                <span>최종 등록</span>
            </li>
        </ul> 
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit">1) 입학 상담 및 온라인 원서접수<br> <span class="color-red fw500">※ 현재 사전예약 중 ※</span>
                </p>
                <ul class="list-dot m0 mt0">
                    <li>썸머스쿨 등록과 관련하여, <strong class="f14">방문/전화/온라인/카카오톡 상담이 가능</strong>합니다. </li>
                    <li>온라인 원서접수를 통한 사전예약을 완료하시면, 문자 또는 유선 안내가 진행됩니다.</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 입학 기준 확인 및 성적표 제출</p>
                <ul class="list-dot m0 mt0">
                    <li>썸머스쿨 모집 요강 확정 시, 홈페이지를 통해 공지 및 사전 예약자 대상 별도 안내 예정입니다.
                    </li>
                    <li>성적표 미제출 시 반배정 불가하며, 이후 입학 절차 진행이 불가합니다.</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 단과 강의 수강 신청(현장 및 온라인 접수)</p>
                <ul class="list-dot m0 mt0"> 
                    <li>모집 요강에 따른 각 반별 수강 강좌 수 미충족 시, 입학이 제한됩니다.</li>
                    <li>수강 강좌 수에 따른 바른공부 자습전용관 장학 혜택은 단과 완강 시 적용됩니다. (수강 강좌 충족 및 유지 조건에 한함)</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">4) 썸머스쿨 최종 등록 확인</p>
                <ul class="list-dot m0 mt0">
                    <li>단과 수강 신청(결제)을 완료하시면, 바른공부 자습전용관 & 교재 & 학습 콘텐츠 & 급식 및 셔틀버스와 관련된 안내를 드립니다. </li>
                    <li>최종 등록(입학)이 완료되면, 개별적으로 등원 안내 문자 및 사전 오리엔테이션이 진행될 예정입니다.</li>
                </ul>
            </div>
        </div>

        <!-- 모집 요강 및 지원혜택 -->
        <p class="recruit-tit"><strong>모집 요강 및 지원 혜택</strong></p>
        <!-- 모집 요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집 요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6935
        Else '실서버
            AGM_CD = 2018
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
        <!-- //모집 요강 자동화 시스템 영역 -->
        <!-- <a href="https://mrusselus.megastudy.net/board/notice_view.asp?code=33081" class="btn-link mt20">설명회 온라인 사전예약 </a> -->
      
    </div>
</div>


