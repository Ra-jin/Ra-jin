<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="container">
    <!-- 모집요강 및 장학혜택 -->
    <p class="recruit-tit pt0">2023년 러셀 부천 썸머스쿨<br><strong>입학 절차</strong></p>
    <div class="tbl-box">
        <div class="tbl-scroll-x">
            <table class="tbl-type01" style="width: 150%;">
                <colgroup>
                    <col style="width:15%" />
                    <col style="width:%" />
                    <col style="width:%" />
                </colgroup>
                <thead>
                    <tr>
                        <th>구분</th>
                        <th>신규생</th>
                        <th>현재 재원생</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="bg-sky">
                            <span class="color-blue">Step.1</span> <br>
                            온라인<br>
                            원서접수
                        </th>
                        <td>
                            온라인 원서접수는<br> 반드시 ‘학생’ 계정<br>
                            으로 진행해야 하며<br>
                            학생 계정이 아닐<br>
                            경우 사전예약이<br>
                            취소됩니다.
                        </td>
                        <td>
                            현재 재원생은<br>
                            온라인 원서접수<br>
                            대상자가 아닙니다.
                        </td>
                    </tr>
                    <tr>
                        <th class="bg-sky">
                            <span class="color-blue">Step.2</span><br>
                            사전예약금 결제
                        </th>
                        <td>
                            &middot; 원서접수 완료후,<br> 학원으로 유선문의 및 방문하여<br> 사전예약금 결제필요 <br><br>
                            &middot; 사전예약금은<br>
                            추후 환불됩니다.
                        </td>
                        <td>
                            3층 입학처 문의
                        </td>
                    </tr>
                    <tr>
                        <th class="bg-sky">
                            <span class="color-blue">Step.3</span><br>
                            성적표<br>
                            제출
                        </th>
                        <td colspan="2" class="text-align-left">
                            &middot; <span class="txt-red">문서 번호가 작성된 성적증명서 제출은
                                필수</span>입니다.<br>(*온라인 모의고사 성적은 적
                            용 불가)<br><br>
                            &middot; 성적 증빙 자료를 제출하지 않을 경우, <br>그린반으로 배정됩니다.<br> (*추후 반 변경 불가)
                        </td>
                    </tr>
                    <tr>
                        <th class="bg-sky">
                            <span class="color-blue">Step.4</span><br>
                            최종 등록
                        </th>
                        <td colspan="2" class="text-align-left">
                            &middot; 모집요강 확인<br>
                            &middot; 단과 필수 수강 시수 확인<br>
                            &middot; 수업 선택 및 최종 등록
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!-- <ul class="list-bullet">
            <li>사전예약금 결제로 연결되지 않고 원서접수가 완료되었을 경우, 팝업차단을 해제해 주세요. 팝업차단 해제 후 [온라인 원서 접수] 버튼을 다시 클릭하면 사전예약금 결제로 연결됩니다.</li>
        </ul> -->
    </div>
    <p class="recruit-tit">2023년 러셀 부천 썸머스쿨<br><strong>모집요강 및 장학혜택</strong></p>
    
    <!-- recuit-tab -->
    <div class="recuit-tab">
        <a href="" class="on">고3</a>
        <a href="">고2</a>
        <a href="">고1</a>
        <a href="">중3</a>
    </div>
    <!-- //recuit-tab -->

    <div class="campus-wrap">
        <!-- 고3 -->
        <div class="recuit-cont on">
            <div class="tbl-box">
                <!-- 모집요강 어드민 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 1241
                Else '실서버
                    AGM_CD = 1263
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
            
            



        </div>

        <!-- 고2 -->
        <div class="recuit-cont">
            <div class="tbl-box">
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 1242
                Else '실서버
                    AGM_CD = 1264
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
            </div>
        </div>

        <!-- 고1 -->
        <div class="recuit-cont">
            <div class="tbl-box">
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 1243
                Else '실서버
                    AGM_CD = 1265
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
            </div>
        </div>

        <!-- 중3 -->
        <div class="recuit-cont">
            <div class="tbl-box">
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 1244
                Else '실서버
                    AGM_CD = 1266
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
            </div>
            
        </div>
        <!-- //중3 -->
    </div>

    <!-- //모집요강 및 장학혜택 -->
</div>

<script>
    tabMenu('.recuit-tab','.recuit-cont')
</script>
