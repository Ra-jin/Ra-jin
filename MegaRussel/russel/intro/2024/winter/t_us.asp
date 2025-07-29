<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학 절차 안내 -->
            <h3 class="tit">2025 윈터스쿨 <strong>입학 절차</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>온라인 원서접수 후<br>
                        사전예약금 납부
                    </p>
                    <ul class="list-03">
                        <li>방문/전화/온라인 상담</li>
                        <li>온라인 원서 접수</li>
                    </ul>
                    <a class="bt-apply" href="https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173">원서접수 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>입학기준 확인 후 <br>
                        성적표 제출</p>
                    <span>* 성적표 제출 방식 : 별도 안내 예정</span>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>2월 단과 강의<br>
                        선택 및 결제 
                    </p>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>2025 윈터스쿨<br>
                        최종 등록 확인
                   </p>
                </li>
            </ul>
            <!-- //입학 절차 안내 -->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit">2025 윈터스쿨 <strong>모집요강 및 지원혜택</strong></h3>
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5629
            Else '실서버
                AGM_CD = 1708
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
            <!-- //모집요강 및 장학혜택 -->
        </div>
    </div>
</div>