<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<!--첫번째 타이틀만 margin-top 140px(mt140), 나머지는 모두 margin-top 100px(mt100)로 클래스 추가 필수-->
<!--스페셜 페이지 있을 경우, 첫번째 타이틀에 margin-top 클래스 삭제-->
<div class="cont js-cont russel_us">
    
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학절차 -->
            <h3 class="tit mt140"><strong>입학 절차</strong></h3>
            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학상담/원서접수</p>
                    <ul class="list-03">
                        <li>방문/전화/온라인 상담</li>
                        <li>온라인 원서 접수</li>
                    </ul>
                    <a href="https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179" class="btn-gray-s mt10">원서접수 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>
                        입학기준 확인 후 <br>
                        성적표 제출
                    </p>
                    <ul class="list-03">
                        <li>성적표 제출  : 별도 안내</li>
                        <li>전형별 반 배정</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>
                        단과 강의 선택 <br>
                        및 결제
                    </p>
                    <ul class="list-03">
                        <li>방문/온라인 수강신청</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>
                        우선선발반 <br>
                        최종 등록 확인
                    </p>
                    <ul class="list-03">
                        <li>2월 순차 개강</li>
                        <li>사전 오리엔테이션 진행</li>
                    </ul>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100"><strong>모집요강 및 장학혜택</strong></h3>
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6718
            Else '실서버
                AGM_CD = 1802
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