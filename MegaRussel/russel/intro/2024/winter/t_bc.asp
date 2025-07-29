<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00 russel_bc">
        <div class="inner">
            <!-- 입학절차 -->
            <h3 class="tit mt100">2025 윈터스쿨 <strong>입학 절차 안내</strong></h3>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span>원서접수</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span>성적표 제출</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span>강의 등록</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>4</span>최종 등록</p>
                    </div>
                </div>
                <div class="step-box">
                    <p class="tit mt0">1) 원서접수 <a href="https://pf.kakao.com/_sFgGxj" class="btn-gray-s ml_10" target="_blank">대기자 접수</a></p>
                    <div class="box">
                        <p>① 온라인 대기자 접수  &nbsp;&nbsp;② 순번 도래 시 개별 유선 연락 &nbsp;&nbsp;
                        </p>
                        <p class="mt5">■ 2025년 고3, 고2, 고1</p>
                        <ul class="list-04 mb30">               
                            <li>접수 현황 : <strong class="red_txt">전 학년 등록 마감</strong></li>
                            <li>등록 방법 : 대기자 접수 (사전 예약금 결제 X)</li>
                        </ul>                     
                    </div>
                    <p class="tit">2) 성적표 제출 <a href="https://pf.kakao.com/_sFgGxj" class="btn-gray-s ml_10" target="_blank">성적표 제출하기</a></p>
                    <div class="box">
                        <ul class="shape-list">
                            <li>원서접수 후, 성적표 제출하기 버튼 클릭 &gt; <span class="blue2">러셀 부천 상담채널</span> 카카오톡 추가 &gt; 상담원 채팅 &gt; 증명서 이미지 파일을 전송해주시기 바랍니다.</li>
                            <li>문서 번호가 작성된 증명서 제출은 필수이며, 위조한 증명서로 판명될 경우 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                            <li>성적표 확인 후 반편성이 확정되며, <span class="red_txt">성적표 미 제출 시 그린반으로 배정됩니다.</span></li>
                        </ul>
                    </div>
                    <p class="tit">3) 강의 등록</p>
                    <div class="box">
                        <p style="color: #002060;">◈ 등록 방법 : 러셀 부천 홈페이지 온라인 접수 또는 학원 방문 접수 </p>                       
                    </div>
                    <p class="tit">4) 최종 등록</p>
                    <div class="box">
                        <ul class="shape-list">
                            <li>강의 등록이 완료되면 온라인으로 자습관 등록이 가능합니다.</li>
                            <li>자습관 등록 후 사전 예약금은 전액 환불됩니다.</li>
                            <li>개강 전 입학 취소 시 사전 예약금, 자습관 및 단과 결제 비용은 전액 환불됩니다.</li>
                        </ul>
                        <p class="red_txt mt10" style="font-weight: 400;">* 기간 내 단과, 자습관 미등록 시 윈터스쿨 예약이 취소되오니 유의 바랍니다. </p>
                    </div>
                </div>
            </div>

            <h3 class="tit mt100">2025 윈터스쿨 <strong>모집요강 및 지원혜택</strong></h3>
            <div class="tab-cont-wrap tbl-box">
                <div class="bt-tab">
                    <a href="javascript:void(0)" class="on"><strong>2025년 고3 (현 고2)</strong></a>
                    <a href="javascript::void(0)"><strong>2025년 고2 (현 고1)</strong></a>
                    <a href="javascript::void(0)"><strong>2025년 고1 (현 중3)</strong></a>
                </div>

                <div class="cont-box on mt30">
                    <!-- 모집요강 자동화 시스템 영역 고3-->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 5643
                    Else '실서버
                        AGM_CD = 1722
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

                <div class="cont-box mt30">                   
                    <!-- 모집요강 자동화 시스템 영역 고2 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 5644
                    Else '실서버
                        AGM_CD = 1723
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
                <div class="cont-box mt30">                   
                    <!-- 모집요강 자동화 시스템 영역 고1 -->
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 5645
                    Else '실서버
                        AGM_CD = 1724
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

                <p class="tal bold fz16 mt10">윈터스쿨 본 등록 시 유의사항</p>
                <ul class="mt5 fz14 tal">
                    <li>1. 윈터스쿨 강좌의 경우 11월부터 순차적으로 강좌별 커리큘럼 공지 예정입니다.</li>
                    <li>2. 윈터스쿨 본등록 기간 (11/1~11/20) 안에 강좌 선택 및 본등록 미진행 인원은 자동적으로 사전 예약이 취소되며 대기 인원에게 좌석이 넘어갑니다.</li>
                    <li>3. 전형에 따른 의무 T수 미달 시 윈터스쿨 입학은 불가합니다.</li>
                    <li>4. 전형별 모집요강에 따른 의무 T수를 충족 및 유지해야 합니다.</li>
                    <li>5. 급식 신청 및 취소의 경우 해당 날짜로부터 ‘평일 기준 3일 전’에 가능합니다.</li>
                    <li>6. 2025 윈터스쿨 모집요강은 학원 사정에 의해 변경될 수 있으며, 변경 시 홈페이지에 공지합니다.</li>
                    <li>7. 2025 윈터스쿨 종료 후, 기존 모집요강은 정규반 모집요강으로 변경됩니다.</li>                
                </ul>
                <p class="tal bold fz16 mt10">강좌 및 바른공부자습전용관 환불 시 유의사항</p>
                <ul class="mt5 fz14 tal">
                    <li>1. 수업 취소로 인한 시수 변경 시, 자습전용관 지원 혜택은 변경되며 추가 비용이 발생할 수 있습니다.</li>
                    <li>2. 수업 결석 시, 보충 영상 지급되며 개강 이후 부분환불은 진행되지 않습니다.</li>
                    <li>3. 수업 개강 이후 환불 또는 부분환불의 예외적인 경우는 다음과 같습니다. &rarr; 병원 입원으로 증빙서류 지참 시</li>
                    <li>4. 환불 신청은 3층 입학처로 방문하여 접수해 주시기 바랍니다.</li>
                    <li>5. 모든 환불 처리는 종강일로부터 한 달 이내에만 가능합니다.</li>
                    <li>6. 환불은 학원의 설립·운영 및 과외교습에 관한 법률 시행령 제18조(교습비 등의 반환 등) 적용됩니다.</li>                             
                </ul>
            </div>


        </div>
    </div>
</div>

<script>
    $(function(){
        tabMenu('.bt-tab','.tbl-box .cont-box');
    })
</script>