<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!--프로모션 영역-->
<!-- <div class="cont-pro mt60">
    <p><img src="<%=Application("img_path_russel")%>/m_russel/russel_pc/2024/first/cont_pro_tit.jpg" alt="러셀 평촌 재수생 우선선발반 12월 특별 프로모션"></p>
    <p><img src="<%=Application("img_path_russel")%>/m_russel/russel_pc/2024/first/cont_pro_img.jpg" alt=""></p>
</div> -->
<!--//프로모션 영역-->

<div class="recruit-wrap">
    <p class="recruit-tit">러셀 평촌 재수생 PRE 정규반<br><strong>입학 절차 안내</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>성적표 제출 및 <br> 입학전형 확인</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>단과 수업 <br> 선택 및 등록</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>최종 등록</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit">1) 성적표 제출 및 입학 전형 확인</p>
            <ul class="list-dot m0 f14">
                <li>현장 성적표 제출  후 바른공부 자습전용관  입학 전형 확인</li>
            </ul>
            <ul class="list-bullet m0 f14">
                <li>실 성적표 제출 필수</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 단과 수업 선택 및 등록 (등록방법 - 학원 홈페이지)</p>
            <ul class="list-dot m0 f14">
                <li>
                    학습 성향 및 수준, 반별 모집요강에 맞게 수강 희망 단과 선택과 등록
                </li>
                <li>
                    최종 등록 전, 단과 강좌 변경 및 취소 가능
                </li>
                <li>해당 월 개강일이 지난 강좌는 현장에서 등록 가능</li>
            </ul>
            <ul class="list-bullet">
                <li>최저 입학기준(의무수강 강좌 수) 충족 시 입학 가능합니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">3) 최종 등록</p>
            <ul class="list-dot m0 f14">
                <li>입학일자 확인 후 최종등록</li>
            </ul>
        </div>
    </div>
    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀 평촌 재수생 PRE 정규반<br><strong>모집요강 및 지원혜택</strong></p>
    
    <!-- 모집요강 자동화 시스템 영역 -->
    <%
    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
    If IsDevSvr() = true Then   '개발서버
        AGM_CD = 3377
    Else '실서버
        AGM_CD = 1402
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
    <!-- //모집요강 및 장학혜택 -->

</div>
