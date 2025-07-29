<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 연간 운영 계획 -->
            <p class="mb70"><img src="<%=Application("img_path_russel")%>/russel_bc/2024/regular_go/cont00_tit01.png" alt="연간 운영 계획"></p>
            <table class="tbl-plan">
                <colgroup>
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                </colgroup>
                <thead>
                    <tr>
                        <th>2024년</th>
                        <th>1월</th>
                        <th>2월</th>
                        <th class="on">3~6월<span>현재 모집 중 </span></th>
                        <th>7~8월</th>
                        <th>9~11월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>고3</td>
                        <td>윈터스쿨</td>
                        <td>윈터스쿨 PLUS</td>
                        <td>고3 정규반</td>
                        <td>썸머스쿨</td>
                        <td>파이널 정규반</td>
                    </tr>
                </tbody>
            </table>
            <p class="plan-txt txt_right">
                * 학원의 사정에 따라 연간 운영 계획은 변동될 수 있으며, 변동 시 별도 안내드립니다.
            </p>

            <!-- 입학절차 -->
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/russel_bc/2024/regular_go/cont00_tit02.png" alt="입학절차 안내"></p>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit">
                            <span>1</span> 입학 상담
                        </p>
                    </div>
                    <div class="step-list">
                        <p class="tit">
                            <span>2</span> 등록
                        </p>
                    </div>
                    <div class="step-list">
                        <p class="tit">
                            <span>3</span> 입학
                        </p>
                    </div>
                </div>    
                <div class="step-box">
                    <p class="tit">1) 입학 상담</p>
                    <div class="box">
                        <ul class="list-base">
                            <li>① 방문상담 : 상담일시 예약 필수</li>
                            <li>② 온라인 상담 <a href="https://pf.kakao.com/_sFgGxj" class="btn-gray-s">바로가기</a></li>
                            <li>③ 유선상담 032.265.1010</li>
                        </ul>
                    </div>
                    <p class="tit">2) 등록</p>
                    <div class="box">
                        <ul class="list-base">
                            <li>① 모집요강 확인</li>
                            <li>② 단과 수업 선택 및 등록 (현장 또는 온라인 결제 가능) <a href="https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1521" class="btn-gray-s">3월 정규·특강 단과 [바로가기]</a></li>
                            <li>
                                ③ 바른공부 자습전용관 등록 (현장 등록만 가능)
                            </li>
                        </ul>
                    </div>
                    <p class="tit">3) 입학</p>
                    <div class="box">
                        <p class="shape-list fz16">
                            신규생 오리엔테이션 참석 필수 <br>
                            ※ 등록생에게 별도 안내
                        </p>
                    </div>
                </div>
            </div>

            <!-- 모집요강 및 장학혜택 -->
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/russel_bc/2024/regular_go/cont00_tit03.png" alt="모집요강 및 장학혜택"></p>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 4439
                Else '실서버
                    AGM_CD = 1488
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