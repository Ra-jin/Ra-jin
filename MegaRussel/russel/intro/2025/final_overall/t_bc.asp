<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">            
            <h3 class="tit">러셀 부천 파이널 종합반 <strong>모집 개요</strong></h3>
            <div class="tbl-box type02">
                 <!-- 모집요강 자동화 시스템 영역 -->
                <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 6990
                    Else '실서버
                        AGM_CD = 2073
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

            <!-- 입학절차 *** a-process 스텝이 4개 이상일 경우 'step-over'클래스 추가 / 가이드 참고해 주세요-->
            <h3 class="tit mt100">러셀 부천 파이널 종합반 <strong>입학 절차 안내</strong></h3>
            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학 상담</p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>현장 등록</p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>강좌 선택 및 등록</p>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>입학 및 개강</p>
                </li>
            </ul>
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>입학 상담</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>방문 상담 : 상담 일시 예약 필수</li>
                            <li>전화 상담 : 032-265-1010</li>
                            <li>온라인 상담<a href="https://pf.kakao.com/_sFgGxj" class="btn-gray-s ml_10">바로가기</a></li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>현장 등록</p>
                    <div class="box">
                        <ul class="list-base">
                            <li>① 모집 요강 확인</li>
                            <li>② 성적표 제출 및 등록 (현장 등록만 가능)</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>강좌 선택 및 등록</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>과목별 선택 수업 선택</li>
                            <li>선택한 수업은 개강 전까지 변경 및 취소 가능</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 4</span>입학 및 개강</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>개강 전 OT 진행 예정 (※ 등록생에게 별도 안내)</li>
                        </ul>
                        <ul class="list-03">
                            <li>N수 국수영 종합반의 모든 프로그램은 의무 수강입니다.</li>
                            <li>N수 국수영 종합반 지원 혜택은 강좌 완강 시 적용됩니다.</li>
                            <li>의무 콘텐츠는 3월부터 진행 예정입니다.</li>
                            <li>다른 지원 혜택과 중복 지원 불가합니다.</li>
                            <li>상기 내용은 학원 사정에 의해 변경될 수 있습니다.</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- 모집요강 및 지원 혜택 -->
            <h3 class="tit mt100">러셀 부천 파이널 종합반 <strong>지원 혜택</strong></h3>
            <p><img src="<%=Application("img_path_russel")%>/russel_bc/2025/final_overall/img_promotion.png" alt="" /></p>
            <!-- //모집요강 및 지원 혜택 -->
                
            
        </div>
    </div>
    <!-- //cont00 -->
</div>