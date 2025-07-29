<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            
            <!-- 입학절차 *** a-process 스텝이 4개 이상일 경우 'step-over'클래스 추가 / 가이드 참고해 주세요-->
            <h3 class="tit">러셀 센텀 파이널 N수 정규반 <strong>입학 절차 안내</strong></h3>
            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>원서접수</p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>성적표 제출</p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>강좌 선택 및 결제</p>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>최종 등록</p>
                </li>
            </ul>
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>원서접수</p>
                    <div class="box">
                        <ul class="list-col">
                            <li>① 온라인 원서접수</li>
                            <li>② 사전 예약금 납부</li>
                        </ul>
                        <ul class="list-04">
                            <li>사전 예약금(60만원)까지 결제해 주셔야 원서접수가 완료됩니다.</li>
                            <li>원서접수 완료한 학생, 학부모 대상 개별 입학 절차 안내됩니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>성적표 제출</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>성적표 기준은 모집 요강에 명시된 제출 기준으로 진행되며, 성적표 확인 후 반 배정 확정됩니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>강좌 선택 및 결제</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>모집 요강에 명시된 ‘반 별 의무 T수’에 충족한 강좌 선택 및 결제는 온라인에서 진행됩니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 4</span>최종 등록</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>강의 등록 내역 확인 후, 바른공부 자습전용관 최종 등록 별도 안내드립니다.</li>
                            <li>기존 사전 예약금은 전액 환불됩니다.</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- //입학 절차 안내 -->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100">러셀 센텀 파이널 N수 정규반 <strong>모집 요강 & 지원 혜택</strong></h3>
            <div class="tbl-box type02">
                 <!-- 모집요강 자동화 시스템 영역 -->
                <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 6958
                    Else '실서버
                        AGM_CD = 2041
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

            <!-- //모집요강 및 지원혜택 -->
        </div>
    </div>
</div>