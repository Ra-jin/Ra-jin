<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

    <!-- 등록 안내 -->
<div class="container bg-01">
    <p class="recruit-tit">러셀 목동 재학생 정규반<br><strong>등록 안내</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>학원 방문&amp;<br>자습관 등록<br>신청서 작성</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>성적표 제출<br>및 반 배정</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>재학생<br>정규반<br>결제 및 등록</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <ul class="list-bullet color-gray-01 f14">
            <li class="txt-red">재학생 정규반 등록은 '현장'에서만 가능합니다.</li>
            <li>성적표 제출은 필수입니다. (미제출 시 고3은 "그린반" 고2는 "B-CLASS"로 배정됩니다.)</li>
            <li>위조한 성적증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
            <li>전형별 모집요강에 따른 의무 T수를 충족 및 유지해야 합니다. (“T”는 주당 수업 시간 의미)</li>
            <li>단과 수강 신청은 온라인 수강 신청 또는 현장 수강 신청이 가능합니다.</li>
        </ul>
    </div>
    <!-- 등록 안내 -->
</div>

<!-- 모집요강 및 장학혜택 -->
<%
'관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
If IsDevSvr() = true Then   '개발서버
    AGM_CD = 1126
Else '실서버
    AGM_CD = 1148
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
<!-- //모집요강 및 장학혜택 -->




