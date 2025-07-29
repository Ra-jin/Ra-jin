<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<!--첫번째 타이틀만 margin-top 140px(mt140), 나머지는 모두 margin-top 100px(mt100)로 클래스 추가 필수-->
<!--스페셜 페이지 있을 경우, 첫번째 타이틀에 margin-top 클래스 삭제-->
<div class="cont js-cont russel_gn">
    <div class="s-page">
        <p class="s-tit">러셀 강남 재수생 우선선발반 <br> <span>특별 프로모션</span></p>
        <div>
            <img src="<%=Application("img_path_russel")%>/russel_gn/2025/first/s_page_img.png" alt="" />

            <!--프로모션 마감시 주석해제-->
            <!-- <div class="shdw"></div>
            <div class="shdw"></div>
            <img class="ico-s-end" src="<%=Application("img_path_russel")%>/intro/2025/first/s_page_end.png" alt="프로모션 마감" />
            <img class="ico-s-end" src="<%=Application("img_path_russel")%>/intro/2025/first/s_page_end.png" alt="프로모션 마감" /> -->
        </div>
    </div>
    
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학절차 -->
            <h3 class="tit"><strong>입학 절차</strong></h3>
            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>원서 접수</p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>성적표 제출</p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>강의 선택 및 결제</p>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>최종 등록</p>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!--입학절차 상세설명-->
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>원서 접수 <a href="https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179" class="btn-gray-s ml_10">원서접수 바로가기</a></p>
                    <div class="box">
                        <ul class="list-02">
                            <li>원서 접수를 완료한 학생, 학부모 대상으로 문자를 통해 입학 절차가 안내됩니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>성적표 제출 <a href="https://pf.kakao.com/_hKnRb" class="btn-gray-s ml_10">성적표 제출하기</a></p>
                    <div class="box">
                        <ul class="list-02">
                            <li>원서 접수 후, <span class="blue_txt">성적표 제출하기 버튼 클릭 > 러셀 강남 입학처 카카오톡 추가 > 상담원 채팅 > 성적표 이미지 파일을 전송해주시기 바랍니다.</span></li>
                            <li>문서 번호가 작성된 성적증명서 제출은 필수이며, 위조한 성적증명서로 판명될 경우 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                            <li><span class="blue_txt">성적표 미제출 시 그린 전형으로 배정됩니다.</span></li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>강의 선택 및 결제</p>
                    <div class="box">
                        <ul class="list-02">
                            <li>성적표 제출 후 반편성이 완료되면, 강의 필수 수강 조건에 해당하는 경우 강의를 등록합니다. (필수 수강 시수 미충족 시 입학 불가)</li>
                            <li>시간표 페이지에서 강의 선택 후 온라인 결제해주시면 됩니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 4</span>최종 등록</p>
                    <div class="box">
                        <ul class="list-02">
                            <li>강의 등록 여부 확인 후 최종 등록 안내 드립니다.</li>
                            <li class="red_txt">개강 전 입학 취소 시 바자관 및 단과 결제 비용은 전액 환불됩니다.</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--//입학절차 상세설명-->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100"><strong>모집요강 및 지원혜택</strong></h3>
            <div class="tbl-box type02">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 5698
                Else '실서버
                    AGM_CD = 1745
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
                
                <p class="full-tit-sq">자물쇠반 : <strong class="red_txt">의무시수 없이</strong> 바자관 추가 비용을 지불하고 자습관 이용 <a class="btn-gray-s ml_10" href="https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=183">신청 접수</a></p>
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 6708
                Else '실서버
                    AGM_CD = 1790
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