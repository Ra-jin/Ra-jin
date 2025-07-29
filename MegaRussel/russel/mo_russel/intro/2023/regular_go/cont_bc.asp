<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!-- 연간 운영 계획 -->
<div class="container pb0">
    <p class="recruit-tit pt0">러셀 부천 고3 정규반<br><strong>연간 운영 계획</strong></p>
    <table class="tbl-plan">
        <thead>
            <tr>
                <th style="width: 50%;">1월</th>
                <th>2월</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>윈터스쿨<br>※ 종료 ※</td>
                <td>윈터스쿨 PLUS<br>
                    ※ 종료 ※
                </td>
            </tr>
        </tbody>
    </table>
    <table class="tbl-plan mt10">
        <colgroup>
            <col style="width: 34%;">
            <col style="width: 32%;">
            <col style="width: 34%;">
        </colgroup>
        <thead>
            <tr>
                <th>3~6월</th>
                <th>7~8월</th>
                <th class="on">9~11월 <span>모집 예정</span></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>고3 정규반<br>※ 종료 ※</td>
                <td>썸머스쿨<br>
                    <!-- <br>[재원생 :<br> 현장 접수]<br>[신규생 :<br> 온라인 접수]<br> -->
                    ※ 마감 ※</td>
                <td>파이널 정규반</td>
            </tr>
        </tbody>
    </table>
    <ul class="list-bullet ml0">
        <li class="color-gray-03 f11">입학 시기에 따라 모집요강 및 장학혜택이 다릅니다.<br>
            입학 시기에 해당하는 모집요강을 확인해주시기 바랍니다.</li>
    </ul>

</div>
<!-- //연간 운영 계획 -->


<!-- 모집요강 및 장학혜택 -->
 <%
 '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
 If IsDevSvr() = true Then   '개발서버
     AGM_CD = 1139
 Else '실서버
     AGM_CD = 1161
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