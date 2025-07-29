<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 모집개요 -->
            <h3 class="tit"><strong>모집개요</strong></h3>
            <!-- 모집요강 자동화 시스템 영역 -->
               <%
               '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
               If IsDevSvr() = true Then   '개발서버
                   AGM_CD = 6867
               Else '실서버
                   AGM_CD = 1949
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
            <h3 class="tit mt140"><strong>입학 절차 안내</strong></h3>
            <ul class="a-process step-over full-step">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>
                        입학상담/원서접수
                    </p>
                    <ul class="list-03">
                        <li>방문/전화/온라인 상담</li>
                        <li>온라인 원서접수
                        </li>
                    </ul>
                    <a href="https://coregj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=181" class="btn-gray-s mt15">원서접수 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>
                        성적표 제출
                    </p>
                    <ul class="list-03">
                        <li>
                            모의고사 또는 내신 <br>
                            증빙서류 제출
                        </li>
                        <li>
                            4층 입학팀 또는<br>
                            “러셀CORE 광주”<br>
                            카카오 채널로 제출
                        </li>
                    </ul>
                    <a href="https://pf.kakao.com/_swxoCb" class="btn-gray-s mt15">성적표 제출 [바로가기]</a>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>
                        반 편성 후 안내
                    </p>
                    <ul class="list-03">
                        <li>
                            성적표 확인 후,<br>
                            모집 기준 상<br>
                            반 편성 및 안내
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>
                        강좌 선택 및 등록
                    </p>
                    <ul class="list-03">
                        <li>과목별 선택 수업 선택</li>
                        <li>
                            선택한 수업은<br>
                            개강 전 까지 변경<br>
                            및 취소 가능<br>
                            ※ 강좌 선택 추후 안내
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>
                        입학 및 개강
                    </p>
                    <ul class="list-03">
                        <li>2025년 2월 개강
                        </li>
                        <li>개강 전 OT 진행 예정</li>
                    </ul>
                </li>
            </ul>
            <!-- //입학 절차 안내 -->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100"><strong>입학 기준 및 지원혜택</strong></h3>
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6831
            Else '실서버
                AGM_CD = 1909
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
            <!-- //모집요강 및 지원혜택 -->
        </div>
    </div>
    <!-- //cont00 -->
</div>