<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00" style="padding-top: 220px;">
        <div class="inner02">

            <!--연간운영계획-->
            <p class="mb60"><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular_go/cont00_tit01.png" alt="재학생반 연간 운영 계획"></p>
            <table class="tbl-plan">
                <colgroup>
                    <col style="width:20%" />
                    <col style="width:20%" />
                    <col style="width:20%" />
                    <col style="width:20%" />
                    <col style="width:20%" />
                </colgroup>
                <thead>
                    <tr>
                        <th>1월</th>
                        <th>2월</th>
                        <th>3~6월</th>
                        <th>7~8월</th>
                        <th class="on">9~11월 <span>모집 예정</span></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>윈터스쿨<br>※ 종료 ※</td>
                        <td>윈터스쿨 PLUS<br>
                            ※ 종료 ※
                        </td>
                        <td>고3정규반<br>※ 종료 ※</td>
                        <td>썸머스쿨
                            <!-- <br>[재원생 : 현장 접수]<br>[신규생 : 온라인 접수] -->
                            <br>※ 마감 ※</td>
                        <td>파이널 정규반</td>
                    </tr>
                </tbody>
            </table>
            <p class="plan-txt">※ 입학 시기에 따라 모집요강 및 장학혜택이 다릅니다. 입학 시기에 해당하는 모집요강을 확인해주시기 바랍니다.</p>
            <!--//연간운영계획-->


            <p class="mb60 mt100"><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular_go/cont00_tit03.png" alt="모집요강 및 장학혜택"></p>
            <div class="tbl-box">
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 1143
            Else '실서버
                AGM_CD = 1165
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
    <!-- //cont00 -->
</div>