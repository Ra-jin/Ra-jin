<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <div style="margin-top: -58px;"><img src="<%=Application("img_path_russel")%>/russel_mokdong/2024/summer/event_md.png" alt="" /></div>
            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100">러셀 목동 썸머스쿨 <strong>입학 절차 안내</strong></h3>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span>원서접수</p>
                        <div class="pos-txt red_txt">(전형에 따라 모집 인원은 상이할 수 있습니다.)</div>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span>강의 선택 및 학원 방문 실 등록 (6월 예정)</p>
                    </div>                   
                </div>
                <div class="step-box">
                    <p class="tit">1) 온라인 원서 접수</p>
                    <div class="box">
                        <ul class="list-04 mt5">
                            <li>반드시 학생 ID로 로그인 하신 후 온라인 원서 접수 진행 바랍니다.</li>
                            <li class="red_txt">온라인 원서 접수 시, 성적표 사진 파일 등록은 필수입니다. (가채점 성적표는 불가능)</li>
                            <li class="red_txt">6월 평가원 실성적 발표 이후 7/7(일)까지 전형 변경은 가능합니다. (썸머스쿨 시작일 이후 변경 불가능)</li>
                            <li>온라인 원서 접수 시, 성별 등 개인정보 오기입의 경우 추후 실등록이 불가할 수 있습니다.</li>
                            <li>원서 접수를 완료한 학생, 학부모 대상으로 문자를 통해 입학 절차 안내가 이뤄집니다.</li>
                            <li class="red_txt">전형에 따라 모집 인원은 상이하며, 실 등록 안내는 6월 예정입니다.</li>
                            <li class="red_txt">온라인 전형 접수 우선 등록을 하였더라도 전형별 인원에 따라 등록이 불가할 수 있습니다.</li>                            
                        </ul>
                    </div>
                    <p class="tit">2) 강의 선택 및 학원 방문 실 등록</p>
                    <div class="box">
                        <ul class="list-04 mt5">
                            <li>전형별 모집요강에 따른 의무 T수를 충족 및 유지해야 합니다. (“T”는 주당 수업 시간 의미)</li>
                            <li>단과 수강 신청은 온라인 수강 신청 또는 현장 수강 신청이 가능합니다.</li>
                            <li class="red_txt">썸머스쿨 실 등록은 ‘현장’에서만 가능합니다.</li>
                            <li>상기 모집요강 및 지원혜택은 2024 썸머스쿨 기준이며, <span class="red_txt">2학기부터는 [재학생 정규반] 지원 정책으로 변경 적용됩니다.</span><a href="/intro/2024/regular_go/index.asp" class="btn-gray-s ml_10">재학생 정규반  </a>
                            </li>
                            <li>위조한 성적증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                        </ul>
                    </div>                   
                </div>
            </div>
            <h3 class="tit mt100">러셀 목동 썸머스쿨 <strong>모집요강 및 지원혜택</strong></h3>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 4517
                Else '실서버
                    AGM_CD = 1582
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
                <!-- //모집요강 및 장학혜택 -->
            </div>
        </div>
    </div>
</div>