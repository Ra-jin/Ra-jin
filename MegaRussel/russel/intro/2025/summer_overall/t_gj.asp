<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_dg">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 모집개요 -->
            <h3 class="tit">러셀CORE 광주 썸머스쿨 종합반 
                <strong>모집 개요</strong>
            </h3>
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6905
            Else '실서버
                AGM_CD = 1988
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

            <!-- 입학절차 -->
            <h3 class="tit mt100">러셀CORE 광주 썸머스쿨 종합반 <strong>입학 절차 안내
            </strong></h3>
            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학 상담/원서 접수</p>
                    <ul class="list-03">
                        <li>방문/전화/온라인 상담<br>
                        
                            유선 상담 062-462-1010
                            </li>
                    </ul>
                    <a href="http://pf.kakao.com/_swxoCb" target="_blank" class="btn-gray-s mt10">온라인 상담 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>입학 기준 확인 후 <br>
                        성적표 제출
                    </p>
                    <ul class="list-03">
                        <li>현장 또는 카카오톡 <br>
                        
                            채널에 제출 가능
                            </li>
                    </ul>
                    <a href="http://pf.kakao.com/_swxoCb" target="_blank" class="btn-gray-s mt10">성적표 제출 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>단과 강의<br>
                        선택 및 결제
                    </p>
                    <ul class="list-03">
                        <li>현장 또는 온라인 결제 가능</li>
                        <li>선택한 수업은 개강 전까지<br>
                        변경 및 취소 가능</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>썸머스쿨<br>
                        최종 등록</p>
                    <ul class="list-03">
                        <li>바른공부 자습전용관 등록<br>
                        
                            (현장 또는 온라인 결제 가능)
                            </li>
                    </ul>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!-- 모집요강 -->
            <h3 class="tit mt100">러셀CORE 광주 썸머스쿨 종합반 <strong>모집 요강 및 지원 혜택</strong></h3>
            <div class="tbl-box coming-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/winter/ico_tobe.png" alt="" /></p>
                    <p class="coming-txt">
                        <strong>러셀CORE 광주 썸머스쿨 종합반 모집 요강 및 지원 혜택은<br>
                            추후 공개될 예정입니다.</strong>
                    </p>
                </div>
            </div>
            <!-- 모집요강 자동화 시스템 영역 -->
            <!-- <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6791
            Else '실서버
                AGM_CD = 1873
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
    <!-- //cont00 -->
</div>

<script>
    $(function(){
        tabMenu('.bt-tab','.cont-box');
    })
</script>