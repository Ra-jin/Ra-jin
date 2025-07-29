<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/russel_jg/2024/regular_go_overall/cont00_tit04.png" alt="모집개요"></p>
            <div class="tbl-box">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width: 20%;">
                        <col style="width: %;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="bg-sky">모집 대상</th>
                            <td class="txt_left pl10">의대&middot;서&middot;연&middot;고 입학을 희망하는 학생들을 위한 특별관리 프로그램</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">개강일</th>
                            <td class="txt_left pl10">3/1(금)</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">수업 과목</th>
                            <td class="txt_left pl10">국어, 수학, 영어, 탐구(과학탐구Ⅰ, 사회탐구)</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">접수 방법</th>
                            <td class="txt_left pl10">학원 방문 접수</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">수강료</th>
                            <td class="txt_left pl10">반별 수강료 상이<span class="red_txt">(하단 확인 필수)</span></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">상담 안내</th>
                            <td class="txt_left pl10">
                                상담 가능 시간 : 오전 10시 ~ 오후 8시(식사시간 11:50~12:30, 17:00~17:40 제외) <br>
                                ※ 대표번호 : 02-6316-1010 또는 온라인 상담 <a href="https://russeljg.megastudy.net/russel/info/qna/qna.asp" class="bt-apply">온라인 상담 바로가기</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- 모집요강 및 장학혜택 -->
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/russel_jg/2024/regular_go_overall/cont00_tit03.png" alt="모집요강 및 장학혜택"></p>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 4485
                Else '실서버
                    AGM_CD = 1534
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