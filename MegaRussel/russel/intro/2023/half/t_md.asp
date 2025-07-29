<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00 md">
        <div class="inner02">
            <!-- 등록 안내 -->
            <p class="mb90"><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/half/cont00_tit01.png" alt="러셀 목동 반수반 등록 안내"></p>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span> 학원 방문&amp;<br>자습관 등록 신청서 작성</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span> 재학증명서 제출 및<br>반 배정</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span> 반수반<br>결제 및 등록</p>
                    </div>
                </div>
                <div class="card-box">
                    <ul class="list-02 mt0">
                        <!-- <li>반수반 신규생 등록은 현장에서만 가능합니다.</li> -->
                        <li class="red_txt">반수반은 전석 마감되었으며 대기자 접수는 유선 연락을 통해 가능합니다.</li>
                        <li>여석 발생 시, 전형별 대기 접수 순서대로 문자 혹은 유선 안내 드리겠습니다.</li>
                        <li>반수반 실등록은 현장에서만 가능합니다.</li>
                        <li>2024 반수반은 23학번 재학생만 적용됩니다. <span class="red_txt">(재학 증명서 필수 제출)</span></li>
                        <li class="red_txt">22학번 이하 학번 또는 자퇴생, 23학번 휴학생의 경우는 [N수 정규반] 전형으로 적용됩니다.</li>
                        <li>위조한 증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                        <li>단과 수강 신청은 온라인 수강 신청 또는 현장 수강 신청이 가능합니다.</li>
                        <li>전형별 모집요강에 따른 의무 T수를 충족 및 유지해야 합니다. ("T"는 주당 수업 시간 의미)</li>
                    </ul>
                </div>
            </div>
            <!-- //등록 안내 -->

            <!-- 모집요강 및 장학혜택 -->
            <p class="mb90 mt110"><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/half/cont00_tit02.png" alt="러셀 목동 반수반 모집요강 및 장학혜택"></p>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 1184
                Else '실서버
                    AGM_CD = 1206
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
            <!-- //모집요강 및 장학혜택 -->
        </div>
    </div>
    <!-- //cont00 -->
</div>