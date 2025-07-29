<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_dc">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학절차 -->
            <h3 class="tit">러셀 대치 썸머스쿨 <strong>입학 절차 안내</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>원서 접수 방법 <br> [온라인]</p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>단과 등록 방법 <br> [온라인]</p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>바자관 등록 방법 <br> [학원 내부 진행]</p>
                </li>
            </ul>
            <!-- //입학절차 -->
            <!--입학절차 상세설명-->
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>원서 접수 방법 [온라인]
                        <a href="https://russeldc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189" class="btn-gray-s ml_10">원서접수 바로가기</a>
                    </p>
                    <div class="box">
                        <ul class="list-03">
                            <li>반드시 “학생 ID” 로그인 ( 학부모 ID 접수시, 등록 불가 )</li>
                            <li>상단 우측 메뉴 [ 바른공부 자습전용관 ] - 썸머스쿨 “모집요강”에서 원서 접수</li>
                            <li>원서 접수  완료 후, 예약금 63만원 결제(필수)</li>
                            <li class="bold2 red_txt">예약금 미결제시 원서 접수 취소 처리</li>
                            <li>결제한 예약금은 썸머스쿨 바른공부 자습전용관 비용으로 변경</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>단과 등록 방법 [온라인]
                    </p>
                    <div class="box">
                        <ul class="list-03">
                            <li>모집요강에 맞게 희망 단과 선택 및 등록 (등록 안내문자 발송 예정)</li>
                            <li>의무 시수 (입학 기준)  미충족시, 바자관 이용 불가</li>
                            <li>개강한 단과는 학원에서 등록 가능 ( 대기신청 단과는 시수 미포함 )</li>
                            <li>안내 기한까지 단과 미등록 시, 원서 접수 취소</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>바자관 등록 방법 [학원 내부 진행]</p>
                    <div class="box">
                        <ul class="list-03">
                            <li>개인별 단과 수강 시수 ( T )에 따라 바자관 지원 혜택 적용(8/18 부터 순차적 진행 예정)</li>
                            <li>최종 등록 전, 단과 변경 및 취소 가능 ( 카드혜택 취소 유의 )</li>
                            <li>입학 전 담임 선생님 및 좌석 배정 문자 안내 </li>
                            <li>학원 문의는 러셀 대치 홈페이지 온라인 상담글 또는 전화 이용 ( 02-2138-1010 )</li>
                            <li>학원 현장 방문 불필요(학원 카드 결제 수단 변경은 입학일 이후 가능)</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--//입학절차 상세설명-->

            <!-- 모집요강 -->
            <h3 class="tit mt100">러셀 대치 썸머스쿨 <strong>모집 요강 및 지원 혜택</strong></h3>
            <div class="tbl-box type02">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 6928
                Else '실서버
                    AGM_CD = 2011
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

<!-- <script>
    $(function(){
        tabMenu('.bt-tab','.tbl-box .cont-box');
    })
</script> -->