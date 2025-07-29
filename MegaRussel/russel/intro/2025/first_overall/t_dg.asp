<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->


<!--첫번째 타이틀만 margin-top 140px(mt140), 나머지는 모두 margin-top 100px(mt100)로 클래스 추가 필수-->
<!--스페셜 페이지 있을 경우, 첫번째 타이틀에 margin-top 클래스 삭제-->
<div class="cont js-cont russel_dg">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 모집개요 -->
            <h3 class="tit mt140"><strong>모집개요</strong></h3>
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5687
            Else '실서버
                AGM_CD = 1767
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
            <h3 class="tit mt100"><strong>입학 절차 안내</strong></h3>
            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학상담/원서접수</p>
                    <ul class="list-03">
                        <li>방문/전화/온라인 상담</li>
                        <li>온라인 원서 접수</li>
                        <li>사전예약금 납부</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>전형확인/반 편성</p>
                    <ul class="list-03">
                        <li>성적표 제출</li>
                        <li>모집 기준 상 반 편성</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>현장/온라인 등록</p>
                    <ul class="list-03">
                        <li>온라인 결제링크 발송</li>
                        <li>미납 시 합격 취소</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>선택강좌 선택</p>
                    <ul class="list-03">
                        <li>종합반 필수 수업 및 선택수업 선택</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>입학 및 개강</p>
                    <ul class="list-03">
                        <li>개강 전 OT 진행 예정</li>
                    </ul>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!-- 모집요강 -->
            <h3 class="tit mt100"><strong>입학 기준 및 지원혜택</strong></h3>
            
            <div class="tab-cont-wrap type01">
                <div class="bt-tab">
                    <a href="javascript:void(0)" class="on br-0"><strong>최상위권 이과전문관</strong></a>
                    <a href="javascript::void(0)" class="bl-0"><strong>문과전문관</strong></a>
                </div>
                    
                <!-- 모집요강 자동화 시스템 영역 -->                    
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 6714
                Else '실서버
                    AGM_CD = 1796
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
    </div>
    <!-- //cont00 -->
</div>

<script>
    $(function(){
        tabMenu('.bt-tab','.cont-box');
    })
</script>