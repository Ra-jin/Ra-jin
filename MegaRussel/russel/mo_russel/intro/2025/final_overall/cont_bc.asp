<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <div class="inner">
        <!-- 모집 개요 -->
        <p class="recruit-tit"><strong>모집 개요</strong></p>
        
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6983
        Else '실서버
            AGM_CD = 2066
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

        <!-- <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.');" href="https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=181" class="btn-link mt20">원서접수 바로가기</a> -->
         <!-- <a onclick="alert('추후 오픈 예정입니다.')" href="javascript:void(0)" class="btn-link mt20">원서접수 바로가기</a> -->

        <!-- 입학 절차 -->
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>
                    입학 상담
                </span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>
                    현장 등록
                </span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>강좌 선택<br>
                    및 등록</span>
            </li>
            <li>
                <div><strong>4</strong></div>
                <span>
                    입학 및 개강
                </span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 입학 상담</p>
                <ul class="list-bar m0 mt0">
                    <li>방문 상담 : 상담 일시 예약 필수</li>
                    <li>전화 상담 : 032-265-1010</li>
                    <li>온라인 상담 <a href="https://pf.kakao.com/_sFgGxj" class="bt-gray-s">바로가기</a></li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 현장 등록</p>
                <ul class="list-base m0 mt0">
                    <li>① 모집 요강 확인</li>
                    <li>② 성적표 제출 및 등록 (현장 등록만 가능)</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 강좌 선택 및 등록</p>
                <ul class="list-bar m0 mt0">
                    <li>과목별 선택 수업 선택</li>
                    <li>선택한 수업은 개강 전까지 변경 및 취소 가능</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">4) 입학 및 개강</p>
                <ul class="list-bar m0 mt0">
                    <li>개강 전 OT 진행 예정 (※ 등록생에게 별도 안내)</li>
                </ul>

                <ul class="list-dot ml0 mt20">
                    <li>N수 국수영 종합반의 모든 프로그램은 의무 수강입니다.</li>
                    <li>N수 국수영 종합반 지원 혜택은 강좌 완강 시 적용됩니다.</li>
                    <li>의무 콘텐츠는 3월부터 진행 예정입니다.</li>
                    <li>다른 지원 혜택과 중복 지원 불가합니다.</li>
                    <li>상기 내용은 학원 사정에 의해 변경될 수 있습니다.</li>
                </ul>
            </div>
        </div>


        <!-- 이벤트 프로모션 -->
        <div class="event-area pt0">
            <p class="recruit-tit"><strong>파이널 종합반 지원 혜택</strong></p>
            <div><img src="<%=Application("img_path_russel")%>/m_russel/russel_bc/2025/final_overall/banner_promotion.jpg" alt="" /></div>
        </div>
        <!-- 모집요강 자동화 시스템 영역 -->
        <!-- <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6808
        Else '실서버
            AGM_CD = 1889
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
        %> -->
        <!-- //모집요강 자동화 시스템 영역 -->
    </div>
</div>