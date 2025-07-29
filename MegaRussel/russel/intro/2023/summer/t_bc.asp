<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner02">
            <p class="mb60"><img src="<%=Application("img_path_russel")%>/russel_bc/2023/summer/cont00_tit01.png" alt="입학절차"></p>
            <div class="tbl-box">
                
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:10%;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                    </colgroup>
                    <thead>
                        <tr>
                            <th>구분</th>
                            <th>1. 온라인 원서접수</th>
                            <th>2. 사전예약금 결제<br><br><span class="txt_thin">사전예약금을 결제해야<br>사전예약이 완료됩니다.</span></th>
                            <th>3. 성적표 제출<br><br><span class="txt_thin">사전예약자 대상으로<br>별도 안내 예정입니다.</span></th>
                            <th>4. 최종 등록</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th>신규생</th>
                            <td>
                                <a href='javascript:alert(`온라인 원서접수 마감되었습니다. 현장 방문 또는 유선 접수해주세요.`);' class='bt-apply'>원서접수 바로가기</a><br>
                                ※ 반드시 ‘학생’ 계정으로<br>
                                진행해야 하며 학생 계정이<br>
                                아닐 경우 사전예약이<br>
                                취소됩니다.
                            </td>
                            <td class="txt_left pl10">
                                &middot; 원서접수 완료후, 학원으로 유선문의 및 방문하여 사전예약금 결제필요<br>
                                &middot; 사전예약금은 추후 환불됩니다
                            </td>
                            <td rowspan="2" class="txt_left pl10">
                                <span class="red_txt">&middot; 문서 번호가 작성된 성적증명서 제출은 필수</span>입니다.(*온라인 모의고사 성적은 적용 불가) <br>
                                &middot; 성적 증빙 자료를 제출하지 않을 경우, 그린반으로 배정됩니다. (*추후 반 변경 불가)

                            </td>
                            <td rowspan="2" class="txt_left pl10">
                                &middot; 모집요강 확인<br>
                                &middot; 단과 필수 수강 시수 확인<br>
                                &middot; 수업 선택 및 최종 등록
                            </td>
                        </tr>
                        <tr>
                            <th>현재<br>재원생</th>
                            <td>현재 재원생은<br>
                                온라인 원서접수 대상자가<br>
                                아닙니다.
                            </td>
                            <td>3층 입학처 문의</td>
                        </tr>
                    </tbody>
                </table>
                
                <!-- <ul class="list-02">
                    <li>사전예약금 결제로 연결되지 않고 원서접수가 완료되었을 경우, 팝업차단을 해제해 주세요.<br>팝업차단 해제 후 [온라인 원서 접수] 버튼을 다시 클릭하면 사전예약금 결제로 연결됩니다. </li>
                </ul> -->
            </div>
            <p class="mb60 mt70"><img src="<%=Application("img_path_russel")%>/russel_bc/2023/summer/cont00_tit02.png" alt="모집요강 및 지원혜택"></p>
            <!-- tab-cont-wrap -->
            <div class="tab-cont-wrap">
                <!-- bt-tab -->
                <div class="bt-tab">
                    <a href="#" class="on" id="n_open"><strong>고3</strong></a>
                    <a href="#"><strong>고2</strong></a>
                    <a href="#"><strong>고1</strong></a>
                    <a href="#"><strong>중3</strong></a>
                </div>
                
                <!-- 고3 -->
                <div class="cont-box tbl-box on">
                    <!-- 모집요강 어드민 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 1237
                    Else '실서버
                        AGM_CD = 1259
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
                    <!-- //모집요강 어드민 -->
                    

                </div>

                <!-- 고2 -->
                <div class="cont-box tbl-box">
                    <!-- 모집요강 어드민 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 1238
                    Else '실서버
                        AGM_CD = 1260
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
                    <!-- //모집요강 어드민 -->
                    <!-- 고2 모집요강-->
                </div>
                
                <!-- 고1 -->
                <div class="cont-box tbl-box">
                    <!-- 모집요강 어드민 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 1239
                    Else '실서버
                        AGM_CD = 1261
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
                    <!-- //모집요강 어드민 -->

                    

                </div>
                <!-- //고1 -->

                <!-- 중3 -->
                <div class="cont-box tbl-box">
                    <!-- 모집요강 어드민 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 1240
                    Else '실서버
                        AGM_CD = 1262
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
                    <!-- //모집요강 어드민 -->
                </div>
                <!-- //중3 -->

                

            </div>
            <!-- //tab-cont-wrap -->
        </div>
    </div>
    <!-- //cont00 -->
</div>

<script>
    $(function(){
        tabMenu('.bt-tab','.cont-box');
    })
</script>