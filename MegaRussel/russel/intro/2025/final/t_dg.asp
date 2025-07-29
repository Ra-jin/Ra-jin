<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_dg">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            
            <!-- 입학절차 *** a-process 스텝이 4개 이상일 경우 'step-over'클래스 추가 / 가이드 참고해 주세요-->
            <h3 class="tit">러셀 대구 파이널 정규반 <strong>입학 절차 안내</strong></h3>
            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학상담/원서접수</p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>전형 확인/ 반 편성</p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>강좌 선택 및 등록</p>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>현장/온라인 등록</p>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>입학 및 개강</p>
                </li>
            </ul>
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>입학상담/원서접수 <a href="javascript:alert(`추후 오픈 예정입니다.`)" class="btn-gray-s ml_10">원서접수 바로가기</a></p>
                    <div class="box">
                        <ul class="list-04">
                            <li>방문/전화/온라인 상담</li>
                            <li>온라인 원서접수</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>전형 확인/반 편성</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>성적표 제출</li>
                            <li>모집 기준 상 반 편성</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>강좌 선택 및 등록</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>단과 수업 등록</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 4</span>현장/온라인 등록</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>온라인 결제 링크 발송</li>
                            <li>미납 시 합격 취소</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 5</span>입학 및 개강</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>개강 전 OT 진행</li>
                        </ul>
                    </div>
                </div>
            </div>
           
            <h3 class="tit mt100">러셀 대구 파이널 정규반 <strong>모집 요강 & 지원 혜택</strong></h3>
            <div class="tab-cont-wrap tbl-box">
                <div class="bt-tab">
                    <a href="javascript:void(0)" class="on"><strong>N수</strong></a>
                    <a href="javascript::void(0)"><strong>고3</strong></a>
                </div>

                 <!-- 모집요강 자동화 시스템 영역 -->
                <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 7000
                    Else '실서버
                        AGM_CD = 2083
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

<script>
    $(function(){
        tabMenu('.bt-tab','.tbl-box .cont-box');
    })
</script>
