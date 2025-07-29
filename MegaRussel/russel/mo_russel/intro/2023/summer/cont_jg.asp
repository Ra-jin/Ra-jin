<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="container">
    <!-- 모집요강 및 장학혜택 -->
    <p class="recruit-tit pt0">2023년 러셀 중계 썸머스쿨<br><strong>사전예약 안내</strong></p>
    <div class="tbl-box jg">

        <b>1. 대상 : 2023년 재학생(고1, 고2, 고3)</b> <br>
        <b>2. 사전예약금 : 144,000원</b><br>
        <b>3. 사전예약 등록기간</b><br>
        1) 바자관 재원생 : 4/20(목) ~ 4/27(목)까지<br>
        <span class="color-red">(*조기마감 주의)</span><br>
        2) 2023 윈터스쿨 이용한 재학생 : 4/28(금)~4/30(일)까지<br>
        3) 신규생 : 5/9(화)~5/17(수)까지<br><br>

        <b><span class="color-red">※ 안내사항</span></b>
        <ul class="list-bar">
            <li>사전예약기간 기준, 바자관을 이용하고 있는 재학생 및 2023 윈터스쿨 이용한 학생은 현장접수만 가능합니다.</li>
            <li>온라인 사전예약은 신규생 등록기간에 오픈 될 예정입니다.</li>
        </ul>
        

    </div>

    <p class="recruit-tit">2023년 러셀 중계 썸머스쿨<br><strong>모집요강</strong></p>
    <div class="tbl-box">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 1228
        Else '실서버
            AGM_CD = 1250
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
    <p class="recruit-tit">2023년 러셀 중계 썸머스쿨<br><strong>지원혜택</strong></p>
    <div class="tbl-box">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 1229
        Else '실서버
            AGM_CD = 1251
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
    <!-- //모집요강 및 장학혜택 -->
</div>

