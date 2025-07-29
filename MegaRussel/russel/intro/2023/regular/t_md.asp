<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner02">
            <p class="mb90"><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/regular/cont00_tit.png" alt="러셀 목동 N수 정규반 등록 안내"></p>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span> 학원 방문&amp;<br>자습관 등록 신청서 작성</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span> 성적표 제출<br>및 반 배정</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span> N수 정규반<br>결제 및 등록</p>
                    </div>
                </div>
                <div class="card-box">
                    <ul class="list-02 mt0">
                        <!-- <li class="red_txt">N수 정규반 등록은 ‘현장’에서만 가능합니다.
                        </li> -->
                        <li class="red_txt">N수 정규반은 전석 마감되었으며 대기자 접수는 유선 연락을 통해 가능합니다.
                        </li>
                        <li>여석 발생 시, 전형별 대기 접수 순서대로 문자 혹은 유선 안내 드리겠습니다.
                        </li>
                        <li>N수 정규반 실등록은 ‘현장‘에서만 가능합니다.
                        </li>
                        <li>성적표 제출은 필수입니다. (미제출 시 “그린반“으로 배정됩니다.)
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
            <p class="mb90 mt110"><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/regular/cont00_tit02.png" alt="러셀 목동 N수 정규반 등록 안내"></p>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 1078
                Else '실서버
                    AGM_CD = 101
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