<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_yt">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 모집 개요 -->
            <h3 class="tit">러셀 영통 윈터스쿨 종합반 <strong>모집 개요</strong></h3>
            
            <!-- 모집 개요 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6945
            Else '실서버
                AGM_CD = 2028
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
            <!-- //모집 개요 자동화 시스템 영역 -->

            <!-- 입학절차 -->
            <h3 class="tit mt100">러셀 영통 윈터스쿨 종합반 <strong>입학 절차 안내</strong></h3>
            <ul class="a-process step-over full-step">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>온라인 사전 접수</p>
                    <ul class="list-03">
                        <li>방문/전화/온라인 1:1 <br>
                            게시판 상담</li>
                        <li>사전 예약금 납부</li>
                    </ul>
                    <a class="bt-apply ml0" href="javascript:alert('추후 오픈 예정입니다.')">원서접수 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>전형 확인/반 편성</p>
                    <ul class="list-03">
                        <li>전형 자격 요건 확인</li>
                        <li>모집 기준 상 반 편성</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>현장 실등록</p>
                    <ul class="list-03">
                        <li>가상 계좌 발송/카드 결제</li>
                        <li>미납 시 등록 취소</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>입학 및 개강</p>
                    <ul class="list-03">
                        <li>개강</li>
                        <li>개강 전 OT  별도 안내</li>
                    </ul>
                </li>
            </ul>
            <!-- //입학절차 -->
            
            <!-- 모집요강 -->
            <h3 class="tit mt100">러셀 영통 윈터스쿨 종합반 <strong>입학 기준 및 지원 혜택</strong></h3>
            <div class="tbl-box coming-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/winter/ico_tobe.png" alt="" /></p>
                    <p class="coming-txt">
                        <strong>윈터스쿨 종합반의 <br>
                            입학 기준 및 지원 혜택</strong>은 추후 공개 예정입니다.
                    </p>
                </div>
            </div>
            <!-- 모집요강 자동화 시스템 영역 -->
            <!-- <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6900
            Else '실서버
                AGM_CD = 1983
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
            %> -->
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