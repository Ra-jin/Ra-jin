<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit">러셀 대치 파이널 정규반  <strong>입학 절차 안내</strong></h3>
            <div class="coming-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/final/ico_tobe.png" alt="" /></p>
                    <p class="coming-txt">
                        <strong>2025 파이널 정규반의<br>
                         입학 절차 안내</strong>는 추후 공개됩니다.<br>
                    </p>
                </div>
            </div>
            <h3 class="tit mt100">러셀 대치 파이널 정규반  <strong>모집요강 및 지원혜택</strong></h3>
            <div class="coming-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/final/ico_tobe.png" alt="" /></p>
                    <p class="coming-txt">
                        <strong>2025 파이널 정규반의<br>
                        모집요강 및 지원혜택</strong>은 추후 공개됩니다.<br>
                    </p>
                </div>
            </div>
            <!-- <div class="tbl-box">
            </div> -->
            <!-- 모집요강 자동화 시스템 영역 -->
            <!-- <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 4516
            Else '실서버
                AGM_CD = 1593
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
</div>