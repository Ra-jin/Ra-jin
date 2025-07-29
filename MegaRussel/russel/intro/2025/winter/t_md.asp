<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_md">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <div style="margin-top: -58px;"><img src="<%=Application("img_path_russel")%>/russel_mokdong/2025/winter/event_md.png" alt="" /></div>
            <!-- 입학절차 -->
            <h3 class="tit mt100">러셀 목동 윈터스쿨 <strong>입학 절차 안내</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>온라인 원서 접수 및 사전 예약금 결제</p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>강의 선택 및 학원 방문 실등록 (11월 예정)</p>
                </li>
            </ul>
            <!-- //입학절차 -->
            <!--입학절차 상세설명-->
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>온라인 원서 접수 및 사전 예약금 결제
                        <!-- <a href="javascript:alert('추후 오픈 예정입니다.');" class="btn-gray-s ml_10">원서접수 바로가기</a> -->
                    </p>
                    <div class="box">
                        <ul class="list-04">
                            <li>반드시 학생 ID로 로그인 하신 후 온라인 원서 접수 및 <span class="red_txt">사전 예약금 결제</span> 진행 바랍니다.</li>
                            <li class="red_txt">온라인 원서 접수 시, 성적표 사진 파일 등록은 필수입니다.</li>
                            <li class="red_txt">성적표 재제출로 인한 전형 변경은 윈터스쿨 개강일 전까지만 가능합니다. (윈터스쿨 시작일 이후 변경 불가능)</li>
                            <li>온라인 원서 접수 시, 학년 및 성별 등 개인정보 오기입의 경우 추후 실등록이 불가할 수 있습니다.</li>
                            <li>사전예약금까지 결제하셔야 원서접수가 완료됩니다.<br>
                            <span class="blue2">※ 결제창이 보이지 않는 경우, 팝업 허용 후 다시 원서접수 버튼을 눌러서 진행해주시면 됩니다.</span></li>
                            <li>위조한 성적 증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                            <li class="red_txt">사전예약금은 실등록 시 환불 또는 자습관 비용으로 대체됩니다.</li>
                            <li class="red_txt">‘고3’은 온라인 전형 접수 우선 등록을 하였더라도 전형별 인원에 따라 등록이 불가할 수 있습니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>강의 선택 및 학원 방문 실등록
                    </p>
                    <div class="box">
                        <ul class="list-04">
                            <li>윈터스쿨 실등록은 <span class="red_txt">‘현장’</span>에서만 가능합니다.</li>
                            <li class="red_txt">원서 접수를 완료한 학생, 학부모 대상으로 순차적으로 유선 연락 또는 문자를 통해 입학 절차 안내가 이뤄집니다. (11월 예정)</li>
                            <li class="red_txt">‘고3’은 온라인 전형 접수 우선 등록을 하였더라도 전형별 인원에 따라 등록이 불가할 수 있습니다.</li>
                            <li>전형별 모집 요강에 따른 의무 T수를 충족 및 유지해야 합니다. (“T”는 주당 수업 시간 의미)</li>
                            <li>단과 수강 신청은 온라인 수강 신청 또는 현장 수강 신청이 가능합니다.</li>
                        </ul>
                        <p class="blue2 mt20 bold fz17">※ 러셀 목동 이용 유의사항</p>
                        <ul class="list-04 mt0">
                            <li class="red_txt">3월부터는 [재학생 정규반] 지원 정책으로 변경 적용됩니다. [단과 의무시수 축소]</li>
                            <li>자습관 출석 일수 저조 시 강제 퇴원 조치가 진행되며 특이사항 발생 시, 담임 선생님과 상담 후 결정해야 합니다.</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--//입학절차 상세설명-->

            <!-- 모집요강 -->
            <h3 class="tit mt100">러셀 목동 윈터스쿨 <strong>모집 요강 및 지원 혜택</strong></h3>
            <div class="tbl-box coming-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/winter/ico_tobe.png" alt="" /></p>
                    <p class="coming-txt">
                        <strong>윈터스쿨의 <br>
                            입학기준 및 지원 혜택</strong>은 추후 공개 예정입니다.
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