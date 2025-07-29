<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_dg">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 모집개요 -->
            <h3 class="tit">러셀 대구 썸머스쿨 종합반 
                <strong>모집 개요</strong>
            </h3>
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6903
            Else '실서버
                AGM_CD = 1986
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

            <!-- 입학절차 -->
            <h3 class="tit mt100">러셀 대구 썸머스쿨 종합반 <strong>입학 절차 안내
            </strong></h3>
            <ul class="a-process step-over full-step">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학 상담/원서 접수</p>
                    <ul class="list-03">
                        <li>방문/전화/온라인 상담</li>
                        <li>사전 예약금 납부</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>전형 확인/반 편성</p>
                    <ul class="list-03">
                        <li>전형 자격 요건 확인
                        </li>
                        <li>모집 기준 상 반 편성</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>현장/온라인 등록</p>
                    <ul class="list-03">
                        <li>가상 계좌 발송<br>
                        /카드 결제
                        </li>
                        <li>미납 시 등록 취소
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>강좌 선택 및 등록
                    </p>
                    <ul class="list-03">
                        <li>과목별 선택 수업 선택
                        </li>
                        <li>선택한 수업은 개강 전<br>
                        
                            까지 변경 및 취소 가능
                          </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>입학 및 개강</p>
                    <ul class="list-03">
                        <li>개강 전 OT  별도 안내
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!-- 모집요강 -->
            <h3 class="tit mt100">러셀 대구 썸머스쿨 종합반 <strong>입학 기준</strong></h3>
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6904
            Else '실서버
                AGM_CD = 1987
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
    <!-- //cont00 -->
</div>

<script>
    $(function(){
        tabMenu('.bt-tab','.cont-box');
    })
</script>