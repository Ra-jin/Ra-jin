<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    
    <!-- cont00 -->
    <div class="cont00 bc">
        <div class="inner02">
            <!-- 러셀 부천 입학절차안내 -->
            <p class="mb60"><img src="<%=Application("img_path_russel")%>/russel_bc/2023/half/cont00_tit02.png" alt=""></p>
            <div class="tbl-box">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width: 30%;">
                        <col style="width: 40%;">
                        <col style="width: 30%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>1. 입학 상담</th>
                            <th>2. 등록</th>
                            <th>3. 입학</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="txt_left pl20">
                                ① 방문상담 : 상담일시 예약 필수<br>
                                ② 온라인 상담 <a href="https://pf.kakao.com/_sFgGxj" class="btn-gray-s">바로가기</a><br>
                                ③ 유선상담 032.265.1010
                            </th>
                            <td class="txt_left pl20">
                                ① 모집요강 확인<br>
                                ② 단과 수업 선택 및 등록(현장 또는 온라인 결제 가능) <br><a href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1402" class="btn-gray-s ml10">AM단과</a><a href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1351" class="btn-gray-s ml10">정규&middot;특강단과</a> <br>
                                ③ 성적표 제출 및 바른공부 자습전용관 등록 (현장 등록만 가능)
                            </td>
                            <td class="txt_left pl20">
                                신규생 오리엔테이션 참석 필수<br>
                                ※ 등록생에게 별도 안내
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
           <!-- //러셀 부천 입학절차안내 -->

            <p class="mt90 mb60"><img src="<%=Application("img_path_russel")%>/russel_bc/2023/half/cont00_tit03.png" alt="N수 정규반 모집요강 및 장학혜택"></p>
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 1204
                Else '실서버
                    AGM_CD = 1224
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