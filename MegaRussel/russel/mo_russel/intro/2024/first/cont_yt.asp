<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">

    <!-- 연간 운영 계획 -->
    <p class="recruit-tit">러셀 영통 재수생 우선선발반<br><strong>연간 운영 계획</strong></p>
    <div class="tbl-box">
        <table class="tbl-plan">
            <colgroup> 
                <col style="width:auto">
                <col style="width:40%">
            </colgroup>
            <thead>
                <tr>
                    <th class="on">12~2월  <span>현재 모집중</span></th>
                    <th>3~4월</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="text-align-center">
                        우선선발반
                    </td>
                    <td class="text-align-center">N수생<br>
                    정규반</td>
                </tr>
            </tbody>
        </table>
        <table class="tbl-plan mt10">
            <colgroup> 
                <col style="width:auto">
                <col style="width:auto">
            </colgroup>
            <thead>
                <tr>
                    <th>4~8월</th>
                    <th>9~11월</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="text-align-center">N수생 정규반</td>
                    <td rowspan="2" class="text-align-center" style="border-bottom-right-radius: 10px;">파이널 정규반</td>
                </tr>
                <tr>
                    <td class="text-align-center" style="border-bottom-right-radius: unset;">N수생 반수반</td>
                </tr>
            </tbody>
        </table>
    </div>

    <p class="recruit-tit">러셀 영통 재수생 우선선발반<br><strong>모집요강 및 지원혜택</strong></p>
    <div class="tbl-box">
                
        
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 4370
        Else '실서버
            AGM_CD = 1419
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
        
        
    <!-- <div class="txt-coming">
        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/ico_comming.png" alt="" /></div>
        <p>러셀 영통 <br> <strong>[재수생 우선선발반] 모집요강 및 지원혜택</strong>은<br>
            추후 공지 예정입니다
        </p>
    </div> -->


</div>
