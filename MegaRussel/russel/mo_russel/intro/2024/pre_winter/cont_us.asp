<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<div class="recruit-wrap">
    <p class="recruit-tit">러셀 울산 프리윈터스쿨<br><strong>모집요강 및 지원혜택</strong></p>
    <!-- 모집요강 및 지원혜택 -->
    <!-- 모집요강 자동화 시스템 영역 -->
    <%
    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
    If IsDevSvr() = true Then   '개발서버
        AGM_CD = 5654
    Else '실서버
        AGM_CD = 1733
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

<script>
    document.querySelector('.bt-gray-s').addEventListener('click', function() {
        event.preventDefault();  // 기본 클릭 이벤트 제거
        alert('수강신청은 PC 페이지에서 이용 가능합니다.');
        window.open('https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=178', '_blank');
    });
</script>