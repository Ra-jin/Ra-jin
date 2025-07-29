<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<!--첫번째 타이틀만 margin-top 140px(mt140), 나머지는 모두 margin-top 100px(mt100)로 클래스 추가 필수-->
<!--스페셜 페이지 있을 경우, 첫번째 타이틀에 margin-top 클래스 삭제-->
<div class="cont js-cont russel_dg">
    <!-- <div class="s-page">
        <p class="s-tit">러셀 대구 재수생 우선선발반 <span>특별 프로그램</span></p>
        <div>
            <img usemap="#gotoPage" src="<%=Application("img_path_russel")%>/russel_dg/2025/first/s_page_img.png" alt="" />
            <map name="gotoPage">
                <area shape="rect" coords="377,660,572,700" href="https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1822" alt="11월 특강 자세히 보기">
            </map>
            <div class="shdw"></div>
            <div class="shdw"></div>
            <img class="ico-s-end" src="<%=Application("img_path_russel")%>/intro/2025/first/s_page_end.png" alt="프로모션 마감" />
            <img class="ico-s-end" src="<%=Application("img_path_russel")%>/intro/2025/first/s_page_end.png" alt="프로모션 마감" />
        </div>
    </div> -->
    
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학절차 -->
            <h3 class="tit mt70"><strong>입학 절차</strong></h3>
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
                    <p>강좌 선택 및 등록</p>
                    <ul class="list-03">
                        <li>과목별 선택 수업 선택</li>
                        <li>선택한 수업은 개강 전까지 변경 및 취소 가능</li>
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

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100"><strong>모집요강 및 지원혜택</strong></h3>
            
            <!-- 모집요강 자동화 시스템 영역 -->                    
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6716
            Else '실서버
                AGM_CD = 1798
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