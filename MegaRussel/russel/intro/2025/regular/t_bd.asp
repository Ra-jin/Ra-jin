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
                    <p>온라인 원서접수 <br> (성적표 제출)</p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>단과 수업 선택<br>
                    및 등록</p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>정규반 <br> 최종 등록</p>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!--입학절차 상세설명-->
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>온라인 원서접수 (성적표 제출 필수) <a href="https://russelbd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180" class="btn-gray-s">원서접수 바로가기</a></p>
                    <div class="box">
                        <ul class="list-04">
                            <li>접수 방법 : 온라인 원서접수</li>
                        </ul>
                        <ul class="list-02">
                            <li>성적표 미 제출 시, 반 배정이 불가하여 이후 입학절차를 진행할 수 없습니다.
                            </li>
                            <li>온라인 접수를 완료하면, 이후 입학절차를 개별적으로 안내드립니다.
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>단과 수업 선택 및 등록</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>등록 방법 : 러셀 분당 홈페이지 또는 학원 방문 접수</li>
                        </ul>
                        <ul class="list-02">
                            <li>단과 수업은 러셀 분당 홈페이지 > 단과 시간표에서 확인할 수 있습니다.</li>
                            <li>대기 중인 마감 강의는 시수에 포함되지 않습니다.</li>
                            <li>지원혜택에 포함된 단과 수업 결석 시 회차 환불은 불가합니다. 
                            </li>
                            <li>일부 수업은 연휴 및 내신 기간에 휴강이 있을 수 있습니다.  
                            </li>
                            <li class="red_txt">입학 전형(반)에 따른 단과 의무 수강 시수 신청(결제)은 필수이며, 미충족 시 입학이 불가합니다.
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>정규반 최종 등록</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>등록 방법 : 개별 안내 예정</li>
                        </ul>
                        <ul class="list-02">
                            <li>수업 신청(결제) 완료 후 바자관 및 학습 콘텐츠 결제를 안내 드립니다.</li>
                            <li>최종 등록(입학)이 완료되면 등록 완료 안내문자가 발송됩니다.</li>
                            <li>입학일 전, 급식 결제, 등원 방법 등을 개별적으로 안내 드립니다.</li>
                            <li>등원 후 빠른 적응을 위한 오리엔테이션을 진행합니다.</li>
                        </ul>
                        <p class="bold mt30 black">★ 각 단계 완료 후, 카카오톡 채널 [러셀 분당학원] 또는 홈페이지 [편리한 온라인] - [온라인 1:1 문의하기]로 문의해 주시면 다음 절차를 안내 드리겠습니다.

                        </p>
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
                AGM_CD = 6759
            Else '실서버
                AGM_CD = 1841
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
                

            <div class="tbl-box coming-box mt100">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_arrimi.png" alt="" /></p>
                    <p class="arrimi-txt">
                        학원 문자 수신 알리미에 정보를 등록해 주시면 <br>
                        누구보다 빠르게 N수 정규반 소식을 받으실 수 있습니다. <br>
                        <a class="btn-arrimi mt20" href="javascript:;" onclick="window.open('https://russelbd.megastudy.net/russel/entinfo/popup_notice_service_nonlogin.asp', 'popupWindow', 'width=600,height=700,scrollbars=yes');">러셀 분당학원<br>
                        문자 수신 알리미 신청하기</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- //cont00 -->
</div>