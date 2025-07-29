<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <h3 class="tit">러셀 대전 파이널 종합반 <strong>모집 개요</strong></h3>
            <div class="tbl-box type02">
                 <!-- 모집요강 자동화 시스템 영역 -->
                <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 6989
                    Else '실서버
                        AGM_CD = 2072
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


            <h3 class="tit mt100">러셀 대전 파이널 종합반 <strong>프로모션</strong></h3>
            <p><img src="<%=Application("img_path_russel")%>/core_dj/2025/final_overall/img_promotion.png" alt="프로모션 혜택" /></p>

            <!-- 입학절차 *** a-process 스텝이 4개 이상일 경우 'step-over'클래스 추가 / 가이드 참고해 주세요-->
            <h3 class="tit mt100">러셀 대전 파이널 종합반 <strong>입학 절차 안내</strong></h3>
            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학상담/원서접수</p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>전형 확인/반 편성</p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>현장/온라인 등록</p>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>종합반 강좌 배정</p>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>파이널 종합반<br>최종 등록 확인</p>
                </li>
            </ul>
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>입학상담/원서접수 <a href="javascript:alert(`추후 오픈 예정입니다.`)" class="btn-gray-s ml_10">원서접수 바로가기</a></p>
                    <div class="box">
                        <ul class="list-05">
                            <li>방문/전화/온라인 상담</li>
                            <li>온라인 원서접수</li>
                            <li>사전 예약금 납부</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>전형 확인/반 편성</p>
                    <div class="box">
                        <ul class="list-05">
                            <li>전형 자격 요건 확인</li>
                            <li>모집 기준 상 반 편성</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>현장/온라인 등록</p>
                    <div class="box">
                        <ul class="list-05">
                            <li>가상 계좌 발송/카드 결제</li>
                            <li>미납 시 등록 취소</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 4</span>종합반 강좌 배정</p>
                    <div class="box">
                        <ul class="list-05">
                            <li>선택한 수업은 월 2회 변경 가능</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 5</span>파이널 종합반 최종 등록 확인</p>
                    <div class="box">
                        <ul class="list-05">
                            <li>입학 당일 개별 OT 진행 예정</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- //입학 절차 안내 -->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100">러셀 대전 파이널 종합반  <strong>모집 요강</strong></h3>
            <div class="tbl-box">  
                 <!-- 모집요강 자동화 시스템 영역 -->
                <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 6970
                    Else '실서버
                        AGM_CD = 2053
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
    <!-- //cont00 -->
</div>