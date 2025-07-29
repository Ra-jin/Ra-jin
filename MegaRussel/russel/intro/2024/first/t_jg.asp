<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
  <!-- cont00 -->
  <div class="cont00">
      <div class="inner">
        <!-- 입학 절차 안내 -->
        <p class="mb70"><img src="<%=Application("img_path_russel")%>/russel_jg/2024/first/cont00_tit01.png" alt="러셀 중계 재수생 우선선발반 입학 절차 안내"></p>
        <ul class="a-process">
            <li>
                <div class="flag">STEP 1</div>
                <p>전형확인/반 편성</p>
                <ul class="list-03">
                    <li> 전형 자격요건 확인</li>
                    <li> 모집 기준 상 반 편성</li>
                </ul>
            </li>
            <li>
                <div class="flag">STEP 2</div>
                <p>단과 수업 선택 및 등록</p>
                <ul class="list-03">
                    <li> 등록 방법 : 온라인 또는 현장 접수
                    </li>
                    <li> 등록 비용 : 단과 수업에 따라 상이</li>
                </ul>
            </li>
            <li>
                <div class="flag">STEP 3</div>
                <p>성적표 제출
                </p>
                <ul class="list-03">
                    <li> 최종 등록 시, 학원 방문하여<br>
                    <span class="red_txt fz16">성적표 사본(출력물) 제출(필수)</span></li>
                </ul>
            </li>
            <li>
                <div class="flag">STEP 4</div>
                <p>입학 및 개강</p>
                <ul class="list-03">
                    <li> 1월 개강<br>
                        - 1차 : 1/1(월)<br>
                        - 2차 : 1/15(월)
                        </li>
                    <li> OT : 추후 안내</li>
                </ul>
            </li>
        </ul>
        <!-- //입학 절차 안내 -->
        <!-- 모집요강 -->
        <p class="mb70 mt120"><img src="<%=Application("img_path_russel")%>/russel_jg/2024/first/cont00_tit02.png" alt="러셀 중계 재수생 우선선발반 모집요강"></p>

            
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 4364
        Else '실서버
            AGM_CD = 1413
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
        
        <!-- //모집요강 -->

        <!-- 지원혜택 -->
        <p class="mb70 mt120"><img src="<%=Application("img_path_russel")%>/russel_jg/2024/first/cont00_tit03.png" alt="러셀 중계 재수생 우선선발반 지원혜택"></p>

        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 4365
        Else '실서버
            AGM_CD = 1414
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
        
        <!-- //지원혜택 -->

        <!-- 최상위권 이과전문관N 모집개요 -->
        <p class="mb90 mt100"><img src="<%=Application("img_path_russel")%>/russel_jg/2024/first/cont00_tit04.png" alt="러셀 중계 재수생 최상위권 이과전문관N 모집개요"></p>
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 4383
        Else '실서버
            AGM_CD = 1430
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
        <!-- //최상위권 이과전문관N 모집개요 -->

        <!-- 최상위권 이과전문관N 모집요강 및 지원혜택 -->
        <p class="mb90 mt100"><img src="<%=Application("img_path_russel")%>/russel_jg/2024/first/cont00_tit05.png" alt="러셀 중계 재수생 최상위권 이과전문관N 모집요강 및 지원혜택"></p>
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 4382
        Else '실서버
            AGM_CD = 1429
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
        <!-- //최상위권 이과전문관N 모집요강 및 지원혜택 -->
      </div>
  </div>
  <!-- //cont00 -->
</div>