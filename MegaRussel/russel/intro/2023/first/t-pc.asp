<div class="cont js-cont">
    <div class="cont00 bg-lgray">
        <div class="inner02">
            <p class="mb90"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/first/cont00_tit01.png" alt="모집요강"></p>
            <div class="tbl-box">
                 <!-- 모집요강 자동화 시스템 영역 -->
                 <%
                 '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                 If IsDevSvr() = true Then   '개발서버
                     AGM_CD = 1054
                 Else '실서버
                     AGM_CD = 77
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
            <p class="mb90" style="padding-top: 100px;"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/first/cont00_tit02.png" alt="장학혜택"></p>
            <div class="tbl-box">
                 <!-- 모집요강 자동화 시스템 영역 -->
                 <%
                 '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                 If IsDevSvr() = true Then   '개발서버
                     AGM_CD = 1055
                 Else '실서버
                     AGM_CD = 78
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
</div>