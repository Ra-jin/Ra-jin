<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont russel_dc">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학절차 -->
            <h3 class="tit"><strong>입학 절차 안내</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>원서접수 방법 및 합격자 발표</p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>단과 수업 선택 및 등록</p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>바자관 최종 등록(문자 안내)</p>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!--입학절차 상세설명-->
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>원서접수 방법 및 합격자 발표 <a href="https://russeldc.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187" class="btn-gray-s">온라인 원서접수 바로가기</a></p>
                    <div class="box">
                        <ul class="list-02">
                            <li>원서접수 방법 [온라인]<br>
                               &middot; 반드시 “학생 ID” 로그인 (학부모 ID 불가)<br>
                               &middot; 상단 우측 메뉴 [바른공부 자습전용관] - “모집요강”에서 원서접수<br>
                               &middot; 수능, 평가원, 내신 성적 등 해당반 성적 증빙자료 첨부 [필수]<br>
                               &middot; 성적표 미제출시, 그린반 임의 배정 
                            </li>
                        </ul>
                        <ul class="list-02">
                            <li>합격자 발표 [입학 절차 포함 문자 안내]</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>단과 수업 선택 및 등록</p>
                    <div class="box">
                        <ul class="list-02">
                            <li>등록 방법 [온라인 또는 학원 방문]<br>
                               &middot; 합격자는 학습 성향 및 수준, 반별 모집요강에 맞게 희망 단과 선택 및 등록<br>
                               &middot; 의무시수(최저 입학기준) 미충족시, 바자관 이용 불가<br>
                               &middot; 개강한 단과는 학원에서 등록 가능 (대기신청 단과는 시수 미포함)<br>
                               &middot; 안내 기한까지 단과 미등록시, 원서접수 취소
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>바자관 최종 등록(문자 안내)</p>
                    <div class="box">
                        <ul class="list-02">
                            <li>등록 방법 [온라인 또는 학원 방문]<br>
                               &middot; 반별 모집요강과 개인별 단과 수강 시수( T )에 따라 바자관 지원혜택 적용<br>
                               &middot; 최종 등록 전, 단과 변경 및 취소 가능 ( 카드혜택 취소 유의 )<br>
                               &middot; 입학 전 담임선생님 및 좌석 배정 문자 안내 <br>
                               &middot; 입학 후 담임선생님에게 성적 증명서 추가 제출 必 ( 성적표 위조 방지 )<br>
                               &middot; 학원 문의는 러셀 대치 홈페이지 온라인 상담글 또는 전화 이용 ( 02-2138-1010 )
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--//입학절차 상세설명-->

            <!-- 모집요강 -->
            <h3 class="tit mt100">2026 반수반 <strong>모집요강 및 지원혜택</strong></h3>
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6888
            Else '실서버
                AGM_CD = 1971
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
    <!-- //cont00 -->
</div>

<!-- <script>
    $(function(){
        tabMenu('.bt-tab','.tbl-box .cont-box');
    })
</script> -->