<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <div class="inner">

        <!-- 입학 절차 -->
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>온라인 원서접수<br>
                또는 유선/방문 접수</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>입학 기준 확인<br>
                후 성적표 제출</span>
            </li>
        </ul>
        <ul class="setp-diagram">
            <li>
                <div><strong>3</strong></div>
                <span>단과 강의<br>
                선택 및 결제</span>
            </li>
            <li>
                <div><strong>4</strong></div>
                <span>파이널 정규반<br>
                최종 등록 확인</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit">1) 온라인 원서접수 또는 유선/방문 접수
                </p>
            </div>
            
            <div class="step-txt">
                <p class="step-tit">2) 입학 기준 확인 후 성적표 제출</p>
                <ul class="list-star m0 mt0">
                    <li>성적표 제출 방식 : 별도 안내 예정</li>    
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 단과 강의 선택 및 결제</p>
            </div>

            <div class="step-txt">
                <p class="step-tit">4) 파이널 정규반 최종 등록 확인</p>
            </div>
        </div>
        <!-- 모집요강 및 지원혜택 -->
        <p class="recruit-tit"><strong>모집 요강 &amp; 지원 혜택</strong></p>
        <div class="tbl-box p0">
            <div class="txt-coming">
                <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/ico_comming.png" alt="" /></div>
                <p>
                    파이널 정규반의<br>
                    <strong>모집 요강 및 지원 혜택</strong>은<br>
                    추후 공개 예정입니다.
                </p>
            </div>
        </div>
        <!-- 모집요강 자동화 시스템 영역 -->
        <!-- <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6800
        Else '실서버
            AGM_CD = 1882
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
        %>                 -->
        <!-- //모집요강 자동화 시스템 영역 -->
            
            
    </div>
</div>