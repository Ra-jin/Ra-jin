<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont russel_dc">
    <!-- cont00 -->
    <!-- 특별혜택 -->
    <!-- <div class="cont00 type02" style="padding: 76px 0 130px;">
        <div class="inner">
            <p><img src="<%=Application("img_path_russel")%>/russel_bc/2025/half/event_img02.png" alt=""></p>
        </div>
    </div> -->
    <!-- //특별혜택 -->
    
    <div class="cont00">
        <div class="inner">
            <!-- 입학절차 -->
            <h3 class="tit"><strong>입학 절차 안내</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학상담</p>
                    <ul class="list-base">
                        <li>① 방문상담 : 상담일시 예약 필수</li>
                        <li>② 온라인 상담 <a href="https://pf.kakao.com/_sFgGxj" class="btn-gray-s">바로가기</a></li>
                        <li>③ 유선상담 032.265.1010</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>등록</p>
                    <ul class="list-base">
                        <li>① 모집요강 확인</li>
                        <li>
                            ② 단과 수업 선택 및 등록 <br>
                            (현장 또는 온라인 결제)
                        </li>
                        <li>
                            ③ 서류 제출 및 <br>
                            바른공부 자습전용관 등록                            
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>입학</p>
                    <ul class="list-base">
                        <li>
                            신규생 오리엔테이션 참석 필수 <br>
                            ※ 등록생에게 별도 안내
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- //입학절차 -->


            <!-- 모집요강 -->
            <h3 class="tit mt120">2026 반수반 <strong>모집요강 및 지원혜택</strong></h3>

            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6846
            Else '실서버
                AGM_CD = 1930
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
    <div class="cont00 type02">
        <div class="inner">
            <!-- 특별혜택 -->
            <p><img src="<%=Application("img_path_russel")%>/russel_bc/2025/half/event_img.png" alt=""></p>
            <!-- //특별혜택 -->
        </div>
    </div>
    <!-- //cont00 -->
</div>

<!-- <script>
    $(function(){
        tabMenu('.bt-tab','.tbl-box .cont-box');
    })
</script> -->