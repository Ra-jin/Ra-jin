<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">            

            <!-- 입학절차 *** a-process 스텝이 4개 이상일 경우 'step-over'클래스 추가 / 가이드 참고해 주세요-->
            <h3 class="tit">러셀CORE 광주 파이널 정규반 <strong>입학 절차 안내</strong></h3>
            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학 상담/원서 접수</p>
                    <ul class="list-04">
                        <li>온라인 상담 <a href="https://pf.kakao.com/_swxoCb" class="btn-gray-s ml_10">바로가기</a></li>
                        <li>유선 상담: 062-462-1010</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>
                        입학 기준 확인 후<br> 
                        성적표 제출
                    </p>
                    <ul class="list-05">
                        <li>현장 또는 카카오톡 채널에<br>제출 가능</li>
                    </ul><br>
                    <a href="https://pf.kakao.com/_swxoCb" class="btn-gray-s ml_10">성적표 제출 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>
                        단과 강의<br>
                        선택 및 결제
                    </p>
                    <ul class="list-05">
                        <li>현장 또는 온라인 결제 가능</li>
                    </ul><br><br>
                    <a href="javascript:alert(`추후 오픈 예정입니다.`)" class="btn-gray-s ml_10">정규&middot;특강 단과 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>
                        파이널 정규반<br>
                        최종 등록
                    </p>
                    <ul class="list-04">
                        <li>바른공부 자습전용관 등록<br>(현장 또는 온라인 결제 가능)</li>
                    </ul>
                    <ul class="list-02">
                        <li>온라인 결제 희망할 경우 <br>학원에 문의</li>
                    </ul>
                </li>
            </ul>

            <!-- 모집요강 및 지원 혜택 -->
            <h3 class="tit mt100">러셀CORE 광주 파이널 정규반 <strong>모집 요강 & 지원 혜택</strong></h3>
            <div class="tbl-box type02">
                 <!-- 모집요강 자동화 시스템 영역 -->
                <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 6977
                    Else '실서버
                        AGM_CD = 2060
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