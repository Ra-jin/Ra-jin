<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!-- 입학 절차 -->
<div class="recruit-wrap">
    <div class="inner">
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>단과 수업 <br> 선택 및 결제</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>성적표 제출 및<br>
                최종 등록</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit">1) 단과 수업 선택 및 결제</p>
                <ul class="list-base m0 mt0">
                    <li>- 등록 방법 : 온라인 또는 학원 방문 접수</li>
                    <li>- 등록 비용 : 단과 수업에 따라 상이</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">2) 성적표 제출 및 최종 등록</p>
                <ul class="list-base m0 mt0">
                    <li>- 성적표 : 학년별 성적표 제출 기준이 상이하므로, ‘2025 썸머스쿨’ 모집 요강을 확인해 주시기 바랍니다.</li>
                    <li>- 성적표 제출 : <u>최종 등록 시, 학원 방문하여 성적표 사본(출력물) 제출<span class="color-red">(필수)</span></u></li>
                    <li>※ 제출 가능한 성적표(예) : 전국연합학력평가 성적표</li>
                    <li>- 학교에서 출력한 성적표의 경우, 담임 선생님 서명 또는 학교 직인이 찍혀 있어야 인정됩니다.</li>
                    <li>- ‘리로스쿨’ 앱 현장 확인 되어야 인정됩니다. <br>
                        제출 불가한 성적표(예) : 꼬리표, 리로스쿨 출력본, 수기(오피스) 편집, 인정 사항 확인 불가한 성적표
                    </li>
                </ul>
            </div>
        </div>

        <p class="recruit-tit"><strong>모집 요강 및 지원 혜택</strong></p>
        <div class="tab-wrap tab-wrap01">
            <a href="javascript:void(0)" class="on"><strong>고3</strong></a>
            <a href="javascript::void(0)"><strong>고2</strong></a>
            <a href="javascript::void(0)"><strong>고1</strong></a>
            <a href="javascript::void(0)"><strong>중3</strong></a>
        </div>
        <div class="tab-cont-wrap tab-cont-wrap01">
            <div class="tab-cont on">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 6920
                Else '실서버
                    AGM_CD = 2003
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
            <div class="tab-cont">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 6921
                Else '실서버
                    AGM_CD = 2004
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

            <div class="tab-cont">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 6922
                Else '실서버
                    AGM_CD = 2005
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

            <div class="tab-cont">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 6923
                Else '실서버
                    AGM_CD = 2006
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


        <script>
            $(function(){
                tabMenu('.tab-wrap01','.tab-cont-wrap01 .tab-cont');
            })
        </script>
    </div>
</div>