<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_bc">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학절차 -->
            <h3 class="tit">러셀 부천 썸머스쿨 <strong>입학 절차 안내</strong></h3>
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
                    <p>강의 등록</p>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>최종 등록</p>
                </li>
            </ul>
            <!-- //입학절차 -->
            <!--입학절차 상세설명-->
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>원서접수
                        <a href="https://pf.kakao.com/_sFgGxj" class="btn-gray-s ml_10">온라인 문의 바로가기</a>
                        <!-- <a href="javascript:alert('추후 오픈 예정입니다.');" class="btn-gray-s ml_10">원서접수 바로가기</a> -->
                    </p>
                    <div class="box">
                        <p class="notice-tit">▶ 학년별 / 전형별 온라인 문의 후 선착순 등록</p>
                        <p class="notice-tit">■ 2025년 고3, 고2, 고1, 중3</p>
                        <ul class="list-03">
                            <li>접수 현황 : 학년별 선착순 등록 중</li>
                            <li>등록 방법 : 온라인 문의 바로가기 클릭</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit">
                        <span>STEP 2</span>성적표 제출
                        <a href="https://pf.kakao.com/_sFgGxj" class="btn-gray-s ml_10">성적표 제출하기</a>
                    </p>
                    <div class="box">
                        
                        <ul class="list-03">
                            <li>원서접수 후, 성적표 제출하기 버튼 클릭 > <span class="blue_txt">러셀 부천 상담채널</span> 카카오톡 추가 > 상담원 채팅 > 증명서 이미지 파일을 전송해 주시기 바랍니다.</li>
                            <li>문서 번호가 작성된 증명서 제출은 필수이며, 위조한 증명서로 판명될 경우 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                            <li>성적표 확인 후 반편성이 확정되며, <span class="red_txt">성적표 미 제출 시 그린반으로 배정됩니다.</span></li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>강의 등록</p>
                    <div class="box">
                        <ul class="list-base">
                            <li>① 러셀 부천 홈페이지에서 직접 결제</li>
                            <li>② 학원 방문 후 현장 결제</li>
                            <li>③ 온라인 문의 바로가기 클릭 후 결제링크 발송 요청</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 4</span>최종 등록</p>
                    <div class="box">
                        <ul class="list-03">
                            <li class="red_txt">단과+자습관 등록이 되어야 썸머스쿨 최종 등록이 인정됩니다.</li>
                            <li>강좌 결제 여부 확인 후 자습관 등록이 진행됩니다. <span class="red_txt">(※ 결제 후 학원 문의 필수)</span></li>
                            <li>개강 전 입학 취소 시 자습관 및 단과 결제 비용은 전액 환불됩니다. (사전 예약금을 납부했을 시 사전 예약금 포함)</li>
                            <li>사전 예약금 : 자습관 등록 완료 후 전액환불 (기납부자에 한함)</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--//입학절차 상세설명-->

            <!-- 모집요강 -->
            <h3 class="tit mt100">러셀 부천 썸머스쿨 <strong>모집 요강 및 지원 혜택</strong></h3>
            <div class="tab-cont-wrap type01">
                <div class="bt-tab">
                    <a href="javascript:void(0)" class="br-0 on"><strong>신규생</strong></a>
                    <a href="javascript::void(0)" class="bl-0"><strong>재원생</strong></a>
                </div>
                
                 <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 6901
                Else '실서버
                    AGM_CD = 1984
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
    <!-- //cont00 -->
</div>

<script>
    $(function(){
        tabMenu('.bt-tab','.cont-box');
    })
</script>