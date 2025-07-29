<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_bd">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학절차 -->
            <h3 class="tit"><strong>입학 절차 안내</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>온라인 원서접수 <br>(성적표 제출)</p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>단과 수업 선택</p>                  
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>정규반 <br>최종 등록</p>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!--입학절차 상세설명-->
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>온라인 원서접수 (성적표 제출)<a href="https://russelbd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184" class="btn-gray-s ml_10">대기 접수 바로가기</a></p>
                    <div class="box">
                        <ul class="list-04">
                            <li>접수 방법 : 온라인 원서접수 후 성적표 등록</li>
                        </ul>
                        <ul class="list-02 mt10">
                            <li>성적표 미 제출 시 반 배정이 불가하여 이후 입학 절차를 진행할 수 없습니다. </li>
                            <li>반 별 모집요강 및 지원혜택은 학원 사정에 의해 변동될 수 있습니다.</li>
                            <li>온라인 원서접수를 완료하면, 이후 입학 절차를 개별적으로 안내드립니다. </li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>단과 수업 선택 </p>
                    <div class="box">   

                        <ul class="list-04">
                            <li>등록 방법 : 러셀 분당 홈페이지 또는 학원 방문 접수</li>
                        </ul>
                        <ul class="list-02 mt10">
                            <li>입학 전형(반)에 따른 단과 의무 수강 시수 신청(결제)은 필수이며, 미충족 시 입학이 불가합니다.
                            </li>
                            <li>지원혜택에 포함된 단과 수업 결석 시 회차 환불은 불가합니다.
                            </li>
                            <li>선택한 단과 수업의 휴강 일정(내신 기간 등)에 따라 바자관 지원혜택이 일부 조정될 수 있습니다. </li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>정규반 최종 등록
                    </p>
                    <div class="box">   
                        <ul class="list-04">
                            <li>등록 방법 : 개별 안내 예정
                            </li>
                        </ul>
                        <ul class="list-02 mt10">
                            <li>수업 신청(결제) 완료 후 바자관 및 학습 콘텐츠 결제를 안내 드립니다.</li>
                            <li>최종 등록(입학)이 완료되면 등록 완료 안내문자가 발송됩니다.</li>
                            <li>입학일 전, 등원 방법 등을 개별적으로 안내 드립니다. </li>
                            <li>등원 후 빠른 적응을 위한 오리엔테이션을 진행합니다.</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--//입학절차 상세설명-->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100"><strong>모집요강 및 지원혜택</strong></h3>
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6787
            Else '실서버
                AGM_CD = 1869
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
            <!-- <div class="tbl-box coming-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/winter/ico_tobe.png" alt="" /></p>
                    <p class="coming-txt">
                        <strong>재학생(고3) 정규반의 <br>
                        모집요강 및 지원혜택</strong>은 추후 공개 예정입니다. <br>
                    </p>
                </div>
            </div> -->
        </div>
    </div>
    <!-- //cont00 -->
</div>