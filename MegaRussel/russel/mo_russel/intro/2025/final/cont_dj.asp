<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <div class="inner">
        <div class="event-area">
            <p class="recruit-tit pt0"><strong>파이널 정규반 프로모션</strong></p>
            <div><img src="<%=Application("img_path_russel")%>/m_russel/core_dj/2025/final/banner_promotion.jpg" alt="" /></div>
        </div>
        <!-- 입학 절차 안내 -->
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>
                    온라인<br>원서 접수 후<br> 
                    사전 예약금 <br>
                    납부
                </span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>
                    입학 기준<br>
                    확인 후<br>
                    성적표 제출
                </span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>
                    단과 강의<br>
                    선택 및 결제
                </span>
            </li>
            <li>
                <div><strong>4</strong></div>
                <span>
                    파이널 <br>정규반<br>
                    최종 등록 <br> 확인
                </span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit mb0" style="display:inline-block;margin-right: 5px;">1) 온라인 원서접수 후 사전 예약금 납부
                    <!-- <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'" class="bt-gray-s ml10">원서접수 바로가기</a></p> -->
                    <a class="bt-gray-s ml10" onclick="alert('추후 오픈 예정입니다.');">원서접수 바로가기</a>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 입학 기준 확인 후 성적표 제출</p>
                <ul class="list-star m0 mt0">
                    <li>카카오톡 채널 or 현장 제출</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 단과 강의 선택 및 결제</p>
                <ul class="list-star m0 mt0">
                    <li>단과 강의 8월 중순 결제 가능</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit mb0">4) 파이널 정규반 최종 등록 확인</p>
            </div>
        </div>
        <!-- 모집요강 및 지원혜택 -->
        <p class="recruit-tit"><strong>모집 요강</strong> </p>

        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6964
        Else '실서버
            AGM_CD = 2047
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
