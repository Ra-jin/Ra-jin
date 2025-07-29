<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->


<div class="recruit-wrap">
    <div class="inner">
        <!-- 입학 절차 -->
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>단과 수업<br>
                선택 및 결제</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>성적표 제출<br>
                및 최종 등록</span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>입학</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit">1) 단과 수업 선택 및 결제
                </p>
                <ul class="list-bar m0 mt0">
                    <li>등록 방법 : 온라인 또는 학원 방문 접수</li>
                    <li>등록 비용 : 단과 수업에 따라 상이</li>
                </ul>
            </div>
            
            <div class="step-txt">
                <p class="step-tit">2) 성적표 제출 및 최종 등록</p>
                <ul class="list-bar m0 mt0">
                    <li>성적표 : 반마다 성적표 제출 기준이 상이하므로, ‘2026 파이널 정규반’ 모집 요강을 꼭 확인해 주시기 바랍니다.</li>
                    <li>성적표 제출 : <span class="underline f14">최종 등록 시, 학원 방문하여 <strong class="color-red">성적표 사본(출력물) 제출(필수)</strong></span></li>    
                </ul>
                <ul class="list-bullet ml0">
                    <li>제출 불가한 성적표 : (예) 꼬리표, 수기(오피스) 편집, 인적사항 확인 불가한 성적표</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 입학</p>
                <ul class="list-bar m0 mt0">
                    <li>OT : 개별 안내</li>
                </ul>
            </div>
        </div>
        <!-- 모집요강 및 지원혜택 -->
        <p class="recruit-tit"><strong>모집 요강 &amp; 지원 혜택</strong></p>
        <div class="tbl-box p0">
            <div class="txt-coming">
                <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/ico_comming.png" alt="" /></div>
                <p>
                    파이널 정규반의 <br>
                    <strong>모집 요강 및 지원 혜택</strong>은<br>
                    추후 공개 예정입니다.
                </p>
            </div>
        </div>
        <!-- 모집요강 자동화 시스템 영역 -->
        <!-- <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6862
        Else '실서버
            AGM_CD = 1963
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