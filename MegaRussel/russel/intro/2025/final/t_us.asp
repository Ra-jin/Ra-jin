<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">            

            <!-- 입학절차 *** a-process 스텝이 4개 이상일 경우 'step-over'클래스 추가 / 가이드 참고해 주세요-->
            <h3 class="tit">러셀 울산 파이널 정규반 <strong>입학 절차 안내</strong></h3>
            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학 상담<br>및 온라인 원서접수</p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>성적표 제출</p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>단과 강의 수강 신청<br>(현장 및 온라인 접수)</p>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>파이널 정규반<br>최종 등록</p>
                </li>
            </ul>
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>입학 상담 및 온라인 원서접수 <a href="javascript:alert(`추후 오픈 예정입니다.`)" class="btn-gray-s ml_10">원서접수 바로가기</a></p>
                    <div class="box">
                        <ul class="list-03">
                            <li>파이널 정규반 등록과 관련하여, <strong>방문/전화/온라인/카카오톡 상담이 가능</strong>합니다.</li>
                            <li>온라인 원서접수를 완료하시면, 문자 또는 유선 안내가 진행됩니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>성적표 제출</p>
                    <div class="box">
                        <ul class="list-03">
                            <li><strong>성적표 미제출 시 반 배정 불가</strong>하며, 이후 입학 절차 진행이 불가합니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>단과 강의 수강 신청 (현장 및 온라인 접수)</p>
                    <div class="box">
                        <ul class="list-03">
                            <li>모집 요강에 따른 각 반별 수강 강좌 수 미충족 시, 입학이 제한됩니다.</li>
                            <li>수강 강좌 수에 따른 바른공부 자습전용관 장학 혜택은 단과 완강 시 적용됩니다. (수강 강좌 충족 및 유지 조건에 한함)</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 4</span>파이널 정규반 최종 등록</p>
                    <div class="box">
                        <ul class="list-03">
                            <li>단과 수강 신청(결제)을 완료하시면, 바른공부 자습전용관&교재&학습 콘텐츠&급식 및 셔틀버스와 관련된 안내를 드립니다.</li>
                            <li>최종 등록(입학)이 완료되면, 개별적으로 등원 안내 문자 발송 및 사전 OT를 진행합니다.</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- 모집요강 및 지원 혜택 -->
            <h3 class="tit mt100">러셀 울산 파이널 정규반 <strong>모집 요강 & 장학 혜택</strong></h3>
            <div class="tab-cont-wrap tbl-box">
                <div class="bt-tab">
                    <a href="javascript:void(0)" class="on"><strong>고3</strong></a>
                    <a href="javascript::void(0)"><strong>N수</strong></a>
                </div>

                 <!-- 모집요강 자동화 시스템 영역 -->
                <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 6976
                    Else '실서버
                        AGM_CD = 2059
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
            <!-- //모집요강 및 지원 혜택 -->
                
            
        </div>
    </div>
    <!-- //cont00 -->
</div>

<script>
    $(function(){
        tabMenu('.bt-tab','.tbl-box .cont-box');
    })
</script>