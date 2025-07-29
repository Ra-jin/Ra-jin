<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00" style="padding-top: 220px;">
        <div class="inner02">
            <p class="mb60"><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/regular_go/cont00_tit02.png" alt="등록 안내"></p>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span> 학원 방문&amp;<br>자습관 등록 신청서 작성</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span> 성적표 제출<br>및 반 배정</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span> 재학생 정규반<br>결제 및 등록</p>
                    </div>
                </div>
                <div class="card-box">
                    <ul class="list-02 mt0">
                        <li class="red_txt">재학생 정규반 등록은 ‘현장’에서만 가능합니다.
                        </li>
                        <li>성적표 제출은 필수입니다. (미제출 시 고3은 "그린반" 고2는 "B-CLASS"로 배정됩니다.)
                        </li>
                        <li>위조한 성적증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.
                        </li>
                        <li>전형별 모집요강에 따른 의무 T수를 충족 및 유지해야 합니다. (“T”는 주당 수업 시간 의미)
                        </li>
                        <li>단과 수강 신청은 온라인 수강 신청 또는 현장 수강 신청이 가능합니다.
                        </li>
                    </ul>
                </div>
            </div>
            <p class="mb60 mt100"><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/regular_go/cont00_tit03.png" alt="모집요강 및 장학혜택"></p>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 1123
                Else '실서버
                    AGM_CD = 1145
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
                <p class="mt20 txt_left">2024 재학생 정규반 모집요강 및 장학혜택 유의사항</p>
                <ul class="remark-01 list-bar">
                    <li>입학 시 성적표 필수 제출입니다.</li>
                    <li>2022년 전국모의고사는 3월/6월/9월/11월 모의고사만 적용됩니다.</li>
                    <li>전형별 모집요강에 따른 의무 T수를 충족 및 유지해야 입학 가능합니다. (“T”는 주당 수업 시간 의미)</li>
                    <li>기준 성적 이하 대상자 혹은 성적표 미제출자는 6T 의무 수강입니다.</li>
                    <li>의무 T수 및 바른공부 자습전용관 장학혜택은 단과 완강 시 적용되며 단과 환불로 인한 T수 변경 시 입학 취소 또는 지원혜택이 재적용 및 바른공부 자습전용관 입학이 불가능할 수 있습니다.</li>
                    <li>장학혜택은 바른공부 자습전용관 비용 580,000원 기준으로 적용됩니다.</li>
                    <li>최저 입학 기준 및 장학 혜택은 변경될 수 있습니다.</li>
                    <!-- <li class="red_txt">고3 올인원반은 [정규+α단과] 2과목을 의무적으로 들어야합니다.<a class="btn-gray-r" href="/russel_mokdong/2022/go3_all/index.asp">고3 올인원반 확인하러 가기</a></li> -->
                    <li>상기 모집요강 및 장학혜택은 2024 재학생 정규반 기준이며 <span class="red_txt">썸머스쿨 모집요강 및 장학혜택은 별도 공지됩니다.</span></li>
                </ul>
            </div>

        </div>
    </div>
    <!-- //cont00 -->
</div>


