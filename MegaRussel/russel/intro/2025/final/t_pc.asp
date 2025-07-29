<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            
            <!-- 입학절차 *** a-process 스텝이 4개 이상일 경우 'step-over'클래스 추가 / 가이드 참고해 주세요-->
            <h3>러셀 평촌 파이널 정규반 <strong>입학 절차 안내</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>성적표 제출 및 원서 접수</p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>전형 확인 및 강의 선택</p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>최종 등록</p>
                </li>
            </ul>
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>성적표 제출 및 원서 접수</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>전형에 맞는 성적표 제출을 통해 입학 절차 안내가 이뤄집니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>전형 확인 및 강의 선택</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>성적표 제출 후 반 편성이 완료되면, 강의 필수 수강 조건에 해당하는 경우에 강의를 등록합니다. (필수 수강 시수 미충족 시 입학불가)</li>
                        </ul>
                        <ul class="list-02 m0">
                            <li>성적표 미제출 시 그린전형으로 배정됩니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>최종 등록</p>
                </div>
            </div>
            <!-- //입학 절차 안내 -->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100">러셀 평촌 파이널 정규반 <strong>모집 요강 & 지원 혜택</strong></h3>
            <div class="tbl-box type02">
                 <!-- 모집요강 자동화 시스템 영역 -->
                <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 6957
                    Else '실서버
                        AGM_CD = 2040
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
            <!-- //모집요강 및 장학혜택 -->
        </div>
    </div>
</div>