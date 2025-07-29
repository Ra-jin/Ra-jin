<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <p class="mb60"><img src="<%=Application("img_path_russel")%>/russel_jg/2023/summer/cont00_tit01.png" alt="사전예약 안내"></p>
            <div class="tbl-box txt_left fz18">
                <ol class="bold">
                    <li>1. 대상 : 2023년 재학생(고1, 고2, 고3)</li>
                    <li>2. 사전 예약금 : 144,000원</li>
                    <li>3. 사전예약 등록기간</li>
                </ol>
                <ul>
                    <li>1) 바자관 재원생 : 4/20(목) ~ 4/27(목)까지<span class="red_txt fz16">(*조기마감 주의)</span></li>
                    <li>2) 2023 윈터스쿨 이용한 재학생 : 4/28(금)~4/30(일)까지
                    </li>
                    <li>3) 신규생 : 5/9(화)~5/17(수)까지
                    </li>
                </ul>
                <p class="bold red_txt mt30">※ 안내사항</p>
                <p>- 사전예약기간 기준, 바자관을 이용하고 있는 재학생 및 2023 윈터스쿨 이용한 학생은 현장접수만 가능합니다.</p>
                <p>- 온라인 사전예약은 신규생 등록기간에 오픈 될 예정입니다.</p>
            </div>
            <p class="mb60 mt70"><img src="<%=Application("img_path_russel")%>/russel_jg/2023/summer/cont00_tit02.png" alt="모집요강"></p>
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 1225
            Else '실서버
                AGM_CD = 1247
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




            <p class="mb60 mt70"><img src="<%=Application("img_path_russel")%>/russel_jg/2023/summer/cont00_tit03.png" alt="장학혜택"></p>
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 1226
            Else '실서버
                AGM_CD = 1248
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
    <!-- //cont00 -->
</div>