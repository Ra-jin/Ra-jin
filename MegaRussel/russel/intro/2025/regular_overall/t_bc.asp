<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_bc">

    <!-- <div class="cont00-1">
        <div class="inner">
            <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>russel_bc/2025/regular_overall/cont00-1_img.png" alt="국수영 이벤트 페이지" /></p>
        </div>
    </div> -->
    
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학절차 -->
            <h3 class="tit"><strong>입학 절차 안내</strong></h3>
            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학상담</p>
                    <ul class="list-03">
                        <li>방문상담 : 상담일시<br>
                        예약 필수</li>
                        <li>전화 상담 032.265.1010
                        </li>
                        <li>온라인 상담 <a href="https://pf.kakao.com/_sFgGxj" class="btn-gray-s">바로가기</a></li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>현장 등록</p>
                    <ul class="list-base">
                        <li>① 모집요강 확인</li>
                        <li>
                            ② 성적표 제출 및 등록 <br>
                            (현장 등록만 가능)
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>강좌 선택 및 등록</p>
                    <ul class="list-03">
                        <li>
                            과목별 선택 수업 선택</li>
                        <li>선택한 수업은 개강 전<br>
                        
                            까지 변경 및 취소 가능</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>입학 및 개강</p>
                    <ul class="list-03">
                        <li>2025년 1월 개강
                        </li>
                        <li>개강 전 OT 진행 예정<br>
                            (※ 등록생에게 별도 안내)</li>
                    </ul>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100"><strong>모집 개요</strong></h3>
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6745
            Else '실서버
                AGM_CD = 1827
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
             
            
            <h3 class="tit mt100"><strong>국수영 종합반 지원혜택</strong></h3>
            <div style="position:relative;">
                <img src="<%=Application("img_path_russel")%>/russel_bc/2025/regular_overall/event_banner02.jpg" alt="N수 국수영 종합반 입학 시 수능 때까지 선택 수업 50% 지원" />
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