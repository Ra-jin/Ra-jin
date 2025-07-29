<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 연간 운영계획 -->
            <p class="mb70"><img src="<%=Application("img_path_russel")%>/russel_yt/2024/first/cont00_tit01.png" alt="러셀 영통 재수생 우선선발반 연간 운영 계획"></p>
            <table class="tbl-plan type02">
                <colgroup>
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                </colgroup>
                <thead>
                    <tr>
                        <th class="on">12~2월<span>현재 모집중</span></th>
                        <th>3~4월</th>
                        <th>4~8월</th>
                        <th>9~11월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td rowspan="2" class="bl-r">우선선발반
                            <!-- <a href="https://russelyt.megastudy.net/russel/info/waiting/list.asp?ClsCode=2">온라인 대기 접수 바로가기</a> -->
                        </td>
                        <td rowspan="2">N수생<br>
                        정규반</td>
                        <td>N수생 정규반</td>
                        <td rowspan="2" class="br-r">파이널 정규반</td>
                    </tr>
                    <tr>
                        <td>N수생 반수반</td>
                    </tr>
                </tbody>
            </table> 
            <p class="l-txt mt20">※ 입학 시기에 따라 모집요강 및 지원혜택이 다릅니다. 입학 시기에 해당하는 모집요강을 확인해주시기 바랍니다.
            </p>

            <!-- 모집요강 및 지원혜택 -->
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/russel_yt/2024/first/cont00_tit02.png" alt="모집요강 및 지원혜택"></p>
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 4371
            Else '실서버
                AGM_CD = 1420
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

            <!-- <div class="tobe type02">
                <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_tobe.png" alt="" /></div>
                <p>러셀 영통 <strong>[재수생 우선선발반] 모집요강 및 지원혜택</strong>은<br>
                    추후 공지 예정입니다
                </p>
            </div> -->
            
            <!-- //모집요강 및 장학혜택 -->
        </div>
    </div>
    <!-- //cont00 -->
</div>