<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">            

            <!-- 입학절차 *** a-process 스텝이 4개 이상일 경우 'step-over'클래스 추가 / 가이드 참고해 주세요-->
            <h3 class="tit">러셀 부천 파이널 정규반 <strong>입학 절차 안내</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학 상담</p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>성적표 제출 및 등록</p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>입학</p>
                </li>
            </ul>
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>입학 상담</p>
                    <div class="box">
                        <ul class="list-base">
                            <li>① 방문 상담 : 상담 일시 예약 필수</li>
                            <li>② 온라인 상담<a href="https://pf.kakao.com/_sFgGxj" class="btn-gray-s ml_10">바로가기</a></li>
                            <li>③ 유선 상담 : 032-265-1010</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>성적표 제출 및 등록</p>
                    <div class="box">
                        <ul class="list-base">
                            <li>① 모집 요강 확인</li>
                            <li>
                                ② 성적표 제출<a href="https://pf.kakao.com/_sFgGxj" class="btn-gray-s ml_10">성적표 제출하기</a><br>
                                (현장 또는 상담 채널 통해 제출)
                            </li>
                            <li>③ 단과 수업 선택 및 등록 (현장/온라인/링크 결제 中 택1)</li>
                            <li>
                                ④ 바른공부 자습전용관 등록 (현장/링크 결제 中 택1)<br>
                                ※ 성적표 제출 방법 : 성적표 제출하기 버튼 클릭 > 러셀 부천학원 채널 추가 > 상담원 채팅 > 성적표 이미지 파일 전송
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>입학</p>
                    <div class="box">
                        <ul class="list-03">
                            <li>신규생 오리엔테이션 참석 필수<br>※ 등록생에게 별도 안내</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- 모집요강 및 지원 혜택 -->
            <h3 class="tit mt100">러셀 부천 파이널 정규반 <strong>모집 요강 & 지원 혜택</strong></h3>
            <div class="tab-cont-wrap tbl-box">
                <div class="bt-tab">
                    <a href="javascript:void(0)" class="on"><strong>N수&대학생</strong></a>
                    <a href="javascript::void(0)"><strong>고3</strong></a>
                </div>
                 <!-- 모집요강 자동화 시스템 영역 -->
                <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 6974
                    Else '실서버
                        AGM_CD = 2057
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