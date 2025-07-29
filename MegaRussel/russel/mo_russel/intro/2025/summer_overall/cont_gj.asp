<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <div class="inner">
        <p class="recruit-tit"><strong>모집 개요</strong></p>
        <!-- 모집 개요 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6910
        Else '실서버
            AGM_CD = 1993
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
        <!-- //모집 개요 자동화 시스템 영역 -->



        <!-- 입학 절차 -->
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>
                    입학 상담/<br>
                    원서 접수
                </span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>
                    입학 기준<br>
                    확인 후 <br>
                    성적표 제출
                </span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>
                    단과 강의 <br> 선택 및 결제
                </span>
            </li>
            <li>
                <div><strong>4</strong></div>
                <span>
                    썸머스쿨 <br> 최종 등록
                </span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 입학 상담/원서 접수
                <ul class="list-dot m0 mt0">
                    <li>방문/전화/온라인 상담</li>
                    <li>유선 상담 062-462-1010
                        <br>
                        <a href="http://pf.kakao.com/_swxoCb" class="bt-gray-s">온라인 상담 바로가기</a>
                    </li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 입학 기준 확인 후 성적표 제출</p>
                <ul class="list-dot m0 mt0">
                    <li>
                        현장 또는 카카오톡 채널에 제출 가능<br>
                        <a href="http://pf.kakao.com/_swxoCb" class="bt-gray-s">성적표 제출 바로가기</a>
                    </li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 단과 강의 선택 및 결제</p>
                <ul class="list-dot m0 mt0">
                    <li>현장 또는 온라인 결제 가능</li>
                    <li>선택한 수업은 개강 전까지 변경 및 취소 가능</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">4) 썸머스쿨 최종 등록</p>
                <ul class="list-dot m0 mt0">
                    <li>바른공부 자습전용관 등록(현장 또는 온라인 결제 가능)</li>
                </ul>
            </div>
        </div>

        <!-- 모집요강 및 지원혜택 -->
        <p class="recruit-tit"><strong>모집 요강 및 지원 혜택</strong></p>
        <div class="txt-coming">
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/ico_comming.png" alt="" /></div>
            <p>
                러셀CORE 광주  
                <strong>썸머스쿨 종합반 <br> 모집 요강 및 지원 혜택</strong>은 <br>
                추후 공개될 예정입니다.
            </p>
        </div>
        <!-- 모집요강 자동화 시스템 영역 -->
        <!-- <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6830
        Else '실서버
            AGM_CD = 1908
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