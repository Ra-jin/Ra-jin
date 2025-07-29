<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_jg">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학절차 -->
            <h3 class="tit">러셀 중계 썸머스쿨 <strong>입학 절차 안내</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>단과 수업 선택 및 결제</p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>성적표 제출 및 최종 등록</p>
                </li>
            </ul>
            <!-- //입학절차 -->
            <!--입학절차 상세설명-->
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>단과 수업 선택 및 결제

                    </p>
                    <div class="box">
                        <ul class="list-04">
                            <li>등록 방법 : 온라인 또는 학원 방문 접수</li>
                            <li>등록 비용 : 단과 수업에 따라 상이</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>성적표 제출 및 최종 등록
                    </p>
                    <div class="box">
                        <ul class="list-04">
                            <li>성적표 : 학년별 성적표 제출 기준이 상이하므로, ‘2025 썸머스쿨’ 모집 요강을 확인해 주시기 바랍니다.                  
                            </li>
                            <li>성적표 제출 : <span class="underline">최종 등록 시, 학원 방문하여 성적표 사본(출력물) 제출<span class="red_txt">(필수)</span></span>
                            </li>
                        </ul>
                        <ul class="list-02 mt0">
                            <li>제출 가능한 성적표(예) : 전국연합학력평가 성적표</li>
                        </ul>
                        <ul class="list-04 mt0">
                            <li>학교에서 출력한 성적표의 경우, 담임 선생님 서명 또는 학교 직인이 찍혀 있어야 인정됩니다.</li>
                            <li>‘리로스쿨’ 앱 현장 확인 되어야 인정됩니다.<br>
                            
                                제출 불가한 성적표(예) : 꼬리표, 리로스쿨 출력본, 수기(오피스) 편집, 인정 사항 확인 불가한 성적표 
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--//입학절차 상세설명-->

            <!-- 모집요강 -->
            <h3 class="tit mt100">러셀 중계 썸머스쿨 <strong>모집 요강 및 지원 혜택</strong></h3>
            
            <div class="tab-cont-wrap type01">
                <div class="bt-tab">
                    <a href="javascript:void(0)" class="br-0 on"><strong>고3</strong></a>
                    <a href="javascript::void(0)" class="bl-0"><strong>고2</strong></a>
                    <a href="javascript::void(0)" class="bl-0"><strong>고1</strong></a>
                    <a href="javascript::void(0)" class="bl-0"><strong>중3</strong></a>
                </div>
                <div class="cont-box on">
                    <!-- 모집요강 자동화 시스템 영역 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 6916
                    Else '실서버
                        AGM_CD = 1999
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
                <div class="cont-box">
                    <!-- 모집요강 자동화 시스템 영역 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 6917
                    Else '실서버
                        AGM_CD = 2000
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
                <div class="cont-box">
                    <!-- 모집요강 자동화 시스템 영역 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 6918
                    Else '실서버
                        AGM_CD = 2001
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
                <div class="cont-box">
                    <!-- 모집요강 자동화 시스템 영역 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 6919
                    Else '실서버
                        AGM_CD = 2002
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
    <!-- //cont00 -->
</div>

<script>
    $(function(){
        tabMenu('.bt-tab','.cont-box');
    })
</script>