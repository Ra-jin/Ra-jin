<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
  <!-- cont00 -->
  <div class="cont00">
    <div class="inner">

        <p class="mb70"><img src="<%=Application("img_path_russel")%>/russel_jg/2024/regular/cont00_tit01.png" alt="입학 절차 안내"></p>            
        <div class="step-wrap">
            <div class="step-info-wrap">
                <div class="step-list">
                    <p class="tit"><span>1</span>단과 수업 선택 및 결제</p>
                </div>
                <div class="step-list">
                    <p class="tit"><span>2</span>성적표 제출 및 최종 등록</p>
                </div>
                <div class="step-list">
                    <p class="tit"><span>3</span>입학</p>
                </div>
            </div>
            <div class="step-box">
                <p class="tit">1) 단과 수업 선택 및 결제</p>
                <div class="box">
                    <ul class="list-04 mt5">
                        <li>등록 방법 : 온라인 또는 학원 방문 접수</li>
                        <li>등록 비용 : 단과 수업에 따라 상이</li>
                    </ul>
                </div>
                <p class="tit">2) 성적표 제출 및 최종 등록</p>
                <div class="box">
                    <ul class="list-04">
                        <li>성적표 : 반마다 성적표 제출 기준이 상이하므로, '2025 N수 정규반' 모집요강을 꼭 확인해주시기 바랍니다.</li>
                        <li>성적표 제출 : <p class="underline" style="display: inline-block;">최종 등록 시, 학원 방문하여 <span class="red_txt bold">성적표 사본(출력물) 제출(필수)</span></p></li>
                    </ul>
                    <ul class="list-02">
                        <li>제출 불가한 성적표 : (예) 꼬리표, 수기(오피스) 편집, 인적사항 확인 불가한 성적표</li>
                    </ul>
                </div>
                <p class="tit">3) 입학</p>
                <div class="box">
                    <ul class="list-04">
                        <li>OT : 개별 안내</li>
                    </ul>
                </div>
            </div>
        </div>
        <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/russel_jg/2024/regular/cont00_tit02.png" alt="모집요강 및 장학혜택"></p>

        <div class="tbl-box">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 4448
        Else '실서버
            AGM_CD = 1497
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
  </div>
  <!-- //cont00 -->
</div>