<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont russel_sm">
    <div class="cont00">
        <div class="inner">
            <h3 class="tit">2026 반수반 <strong>모집요강 및 6평 특별 장학혜택</strong></h3>
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6871
            Else '실서버
                AGM_CD = 1953
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
            <h3 class="tit mt100"><strong>입학 절차 안내</strong></h3>
            <ul class="a-process step-over full-step">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>상담</p>
                    <ul class="list-03">
                        <li>온라인 상담</li>
                        <li>전화 상담</li>
                        <li>방문 상담 : 원서접수 후<br>
                            사전예약자에 한함
                        </li>
                    </ul>
					<div class="mt5 fz13 ml10 mr10" style="color: #aaa;">※ 학원사정에 따라 변경될 수 있음</div>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>원서접수</p>
                    <ul class="list-03">
                        <li>온라인 원서접수<br>
                        (PC버전)</li>
                        <li>성적 필수 기입</li>
                        <li>성적표 첨부</li>
                    </ul>
                    <a href="https://russelsm.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=187" class="btn-gray-s mt15">원서접수 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>서류심사</p>
                    <ul class="list-03">
                        <li>입학여부 전화 안내</li>
                        <li>전형 자격요건 확인</li>
                        <li>학원 규칙 준수<br>
                        여부 확인</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>등록
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
                        <li>잔금 납부</li>
                        <li>제출서류 확인</li>
                        <li>입학 준비물 안내</li>
                        <li>입학 일시 준수</li>
                    </ul>
                </li>
            </ul>
            <!-- 입학 절차 안내 -->
            
        </div>
    </div>
</div>