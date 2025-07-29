<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit">러셀 대치 썸머스쿨 <strong>입학 절차 안내</strong></h3>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span>원서접수/성적표 제출</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span>합격자 발표 </p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span>강의 선택 및 결제 </p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>4</span>최종 등록 </p>
                    </div>
                </div>
                <div class="step-box">
                    <p class="tit">1) 원서접수 / 성적표 제출</p>
                    <div class="box">
                        <ul class="list-02 mt5">                           
                            <li> 원서접수 - 학원 홈페이지에서 ‘학생 ID’ 로그인</li>
                            <li>성적표 사진 첨부<br>
                                - 2023, 2024년도 전국연합학력평가 성적 기준<br>
                                - 탐구(2)는 탐구 2과목의 평균 등급을 의미함 <br>
                                - 성적표 전체 이미지 업로드 필요 
                            </li>
                            <li>성적표 미 제출 시 그린반 배정 </li>
                            <li class="bold">★입학일 이후★ 성적표 변경 반영 불가능</li>
                        </ul>
                    </div>
                    <p class="tit">2) 합격자 발표 : 6월 중순(별도 안내 문자) </p>
                    <div class="box">
                        <ul class="list-02 mt5">
                            <li>원서 및 성적표 심사 후 합격자에 한해 등록 안내 (순차적 문자 발송)</li>
                            <li>반별 정원 및 접수자 순 합격자 개별 안내</li>
                        </ul>
                    </div>
                    <p class="tit">3) 강의 선택 및 결제 </p>
                    <div class="box">
                        <ul class="list-02 mt5">
                            <li>바자관 반별 [최저 입학 기준] 확인 필요</li>
                            <li>학습 성향 및 수준, 바자관 반별 모집요강에 맞게 수강 희망 단과 등록 </li>
                            <li>마감 강좌 대기중인 경우, 시수 미포함 </li>
                            <li>최종 등록 전, 단과 강좌 변경 및 취소 가능 </li>
                        </ul>
                    </div>
                    <p class="tit">4) 최종 등록</p>
                    <div class="box">
                        <p class="fz16 fw400">■ 등록 방법 : 학원 내부 일괄 처리 후 개별 안내</p>
                        <ul class="list-02 mt5">
                            <li>개인별 단과 등록 총 합산 시수(T)에 따라 바자관 이용료 지원혜택 적용  </li>
                            <li>[최저 입학 기준] 미달 시, 바자관 등록 및 썸머스쿨 이용 불가 </li>
                            <li>학원 문의는 러셀 대치 홈페이지 온라인 상담글 또는 전화 (02-2138-1010) 가능 </li>
                        </ul>
                        <p class="fz16 fw400 mt5">■ 급식 신청</p>
                        <ul class="list-02 mt5">
                            <li>급식 신청/취소는 식자재 수급 문제로 3일 전(일요일/공휴일 제외)까지만 가능  </li>
                            <li>[온라인 신청] - [급식식권] 신청에서 신청 방법 확인</li>
                        </ul>
                        <p class="fz16 fw400 mt5">■ OT 안내 : 추후 안내 </p>
                    </div>
                </div>
            </div>
            <h3 class="tit mt100">러셀 대치 썸머스쿨 <strong>모집요강 및 지원혜택</strong></h3>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 4516
                Else '실서버
                    AGM_CD = 1593
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