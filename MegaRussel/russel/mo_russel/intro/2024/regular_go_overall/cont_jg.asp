<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <p class="recruit-tit">러셀 중계 재학생 종합반<br><strong>모집 개요</strong></p>
    <table class="tbl-type01">
        <colgroup>
            <col style="width: 20%;">
            <col style="width: %;">
        </colgroup>
        <tbody>
            <tr>
                <th class="bg-sky">모집 대상</th>
                <td class="text-align-left pl10">의대&middot;서&middot;연&middot;고 입학을 희망하는 학생들을 위한 특별관리 프로그램</td>
            </tr>
            <tr>
                <th class="bg-sky">개강일</th>
                <td class="text-align-left pl10">3/1(금)</td>
            </tr>
            <tr>
                <th class="bg-sky">수업 과목</th>
                <td class="text-align-left pl10">국어, 수학, 영어, 탐구(과학탐구Ⅰ, 사회탐구)</td>
            </tr>
            <tr>
                <th class="bg-sky">접수 방법</th>
                <td class="text-align-left pl10">학원 방문 접수</td>
            </tr>
            <tr>
                <th class="bg-sky">수강료</th>
                <td class="text-align-left pl10">반별 수강료 상이<span class="color-red">(하단 확인 필수)</span></td>
            </tr>
            <tr>
                <th class="bg-sky">상담 안내</th>
                <td class="text-align-left pl10">
                    상담 가능 시간 : 오전 10시 ~ 오후 8시(식사시간 11:50~12:30, 17:00~17:40 제외) <br>
                    ※ 대표번호 : 02-6316-1010 또는 온라인 상담 <a href="https://mrusseljg.megastudy.net/board/consult_list.asp" class="bt-gray-s ml10">온라인 상담 바로가기</a>
                </td>
            </tr>
        </tbody>
    </table>


    <p class="recruit-tit">러셀 중계 재학생 종합반<br><strong>모집요강 및 지원혜택</strong></p>
    <!-- 모집요강 자동화 시스템 영역 -->
    <%
    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
    If IsDevSvr() = true Then   '개발서버
        AGM_CD = 4486
    Else '실서버
        AGM_CD = 1535
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