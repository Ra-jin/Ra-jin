<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
  <!-- cont00 -->
  <div class="cont00">
      <div class="inner02">
        <!-- 입학절차 -->
        <p class="mb90"><img src="<%=Application("img_path_russel")%>/russel_jg/2023/winter/cont00_tit02.png" alt="러셀 중계 윈터스쿨 입학절차 안내"></p>
        <div class="step-wrap">
            <div class="step-info-wrap">
                <div class="step-list">
                    <p class="tit"><span>1</span>단과 수업 선택 및 결제</p>
                </div>
                <div class="step-list">
                    <p class="tit"><span>2</span>성적표 제출 및 최종 등록</p>
                </div>
            </div>
            <div class="step-box" style="position: relative;">
                <p class="tit">1) 단과 수업 선택 및 결제
                </p>
                <div class="box">
                    <ul class="list-bar">
                        <li>등록 방법 : 온라인 또는 학원 방문 접수</li>
                        <li>등록 비용 : 단과 수업에 따라 상이</li>
                    </ul>
                    <ul class="shape-list mt10">
                        <li>윈터스쿨 시간표가 최종 확정되면, 필수 수강 시수에 따른 강의 등록 안내 드립니다. 
                        </li>
                    </ul>
                </div>
                <p class="tit">2) 성적표 제출 및 최종 등록
                </p>
                <div class="box">
                    <ul class="list-bar">
                        <li>성적표 : 학년별 성적표 제출 기준이 상이하므로, ‘2024 윈터스쿨’ 모집요강 확인해주시기 바랍니다. </li>
                        <li>성적표 제출 : <span class="underline fz16">최종 등록 시, 학원 방문하여 <strong class="red_txt">성적표 사본(출력물) 제출(필수)</strong></span></li>
                    </ul>
                    <ul class="shape-list mt10">
                        <li>제출 가능한 성적표(예) : 전국연합학력평과 성적표<br>
                        - 학교에서 출력한 성적표의 경우, 담임선생님 서명 또는 학교 직인이 찍혀 있어야 인정됩니다.</li>
                        <li>제출 불가한 성적표(예) : 꼬리표, 리로스쿨 출력본, 수기(오피스) 편집, 인적사항 확인 불가한 성적표</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- //입학절차 -->
        <!-- 모집요강 -->
        <p class="mb90 mt100"><img src="<%=Application("img_path_russel")%>/russel_jg/2023/winter/cont00_tit03.png" alt="러셀 중계 윈터스쿨 모집요강"></p>

        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 2331
        Else '실서버
            AGM_CD = 1355
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
        <p class="mb90 mt100"><img src="<%=Application("img_path_russel")%>/russel_jg/2023/winter/cont00_tit04.png" alt="러셀 중계 윈터스쿨 지원혜택"></p>
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 2332
        Else '실서버
            AGM_CD = 1356
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


      </div>
  </div>
  <!-- //cont00 -->
</div>