<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_hs">
    <div class="cont00">
        <div class="inner">
            <!-- 모집 안내 -->
            <h3 class="tit">최상위권 전문관 윈터스쿨 <strong>모집 안내</strong></h3>
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6996
            Else '실서버
                AGM_CD = 2079
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
            

            <!-- 입학 절차 안내 -->
            <h3 class="tit mt100">최상위권 전문관 윈터스쿨 <strong>입학 절차 안내</strong></h3>
            <ul class="a-process step-over full-step">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학 상담</p>

                    <p class="process-txt">[온라인 상담]</p>
                    <ul class="list-03">
                        <li>학원 홈페이지 <br>
                            1:1 문의게시판</li>
                    </ul>

                    <p class="process-txt">[전화 상담]</p>
                    <ul class="list-03">
                        <li>유선상 입학 상담<br>
                            (031-326-5000)</li>
                    </ul>

                    <p class="process-txt">[방문 상담]</p>
                    <ul class="list-03">
                        <li>학원 방문예약(전화)</li>
                        <li>방문 전 원서접수 후 <br>
                            상담</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>원서접수</p>
                    <ul class="list-03">
                        <li>온라인 원서접수<br>
                            (PC버전)</li>
                        <li>성적 정보 필수 기입</li>
                        <li>성적표 첨부</li>
                    </ul>
                    <a href="https://russelhs.megastudy.net/russel_yj/apply/yonhab/apply.asp?app_cd=191" class="btn-gray-s mt15">원서접수 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>서류심사</p>
                    <ul class="list-03">
                        <li>입학여부 전화안내</li>
                        <li>전형 자격요건 확인</li>
                        <li>학원 규칙 준수 여부 <br>
                            확인</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>
                        등록
                    </p>
                    <ul class="list-03">
                        <li>등록예약금 납부</li>
                        <li>입학 일정 확인</li>
                        <li>제출서류 안내</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>입학</p>
                    <ul class="list-03">
                        <li>잔금납부</li>
                        <li>제출서류 확인</li>
                        <li>입학 준비물 안내</li>
                        <li>입학일시 준수</li>
                    </ul>
                </li>
            </ul>
            <!-- 입학 절차 안내 -->
            
        </div>
            <!-- 입학 절차 안내 -->
            
        </div>
    </div>
</div>