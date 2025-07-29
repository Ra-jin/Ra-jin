<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="event-area">
    <div><img src="<%=Application("img_path_russel")%>/m_russel/russel_md/2025/winter/banner_promotion.jpg" alt="" /></div>
</div>
<div class="recruit-wrap">
    <div class="inner">
        <!-- 입학 절차 -->
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>온라인 원서 접수 및<br> 사전 예약금 결제</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>강의 선택 <br>및 학원 방문 실등록 <br>(11월 예정)</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 온라인 원서 접수 및 사전 예약금 결제</p>
                <ul class="list-bar m0 mt0">
                    <li>반드시 학생 ID로 로그인 하신 후 온라인 원서 접수 및 <span class="color-red f14">사전 예약금 결제</span> 진행 바랍니다.</li>
                    <li class="color-red">온라인 원서 접수 시, 성적표 사진 파일 등록은 필수입니다.</li>
                    <li class="color-red">성적표 재제출로 인한 전형 변경은 윈터스쿨 개강일 전까지만 가능합니다. (윈터스쿨 시작일 이후 변경 불가능)</li>
                    <li>온라인 원서 접수 시, 학년 및 성별 등 개인정보 오기입의 경우 추후 실등록이 불가할 수 있습니다.</li>
                    <li>사전예약금까지 결제하셔야 원서접수가 완료됩니다.</li>
                </ul>
                <ul class="list-bullet m0 mt0">
                    <li class="color-blue">결제창이 보이지 않는 경우, 팝업 허용 후 다시 원서접수 버튼을 눌러서 진행해주시면 됩니다.</li>
                </ul>
                <ul class="list-bar">
                    <li>위조한 성적 증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                    <li class="color-red">사전예약금은 실등록 시 환불 또는 자습관 비용으로 대체됩니다.</li>
                    <li class="color-red">‘고3’은 온라인 전형 접수 우선 등록을 하였더라도 전형별 인원에 따라 등록이 불가할 수 있습니다.</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 강의 선택 및 학원 방문 실등록</p>
                <ul class="list-bar m0 mt0">
                    <li>윈터스쿨 실등록은 <span class="color-red f14">‘현장’</span>에서만 가능합니다.</li>
                    <li class="color-red">원서 접수를 완료한 학생, 학부모 대상으로 순차적으로 유선 연락 또는 문자를 통해 입학 절차 안내가 이뤄집니다. (11월 예정)</li>
                    <li class="color-red">‘고3’은 온라인 전형 접수 우선 등록을 하였더라도 전형별 인원에 따라 등록이 불가할 수 있습니다.</li>
                    <li>전형별 모집 요강에 따른 의무 T수를 충족 및 유지해야 합니다. (“T”는 주당 수업 시간 의미)</li>
                    <li>단과 수강 신청은 온라인 수강 신청 또는 현장 수강 신청이 가능합니다.</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">※ 러셀 목동 이용 유의사항</p>
                <ul class="list-bar m0 mt0">
                    <li class="color-red">3월부터는 [재학생 정규반] 지원 정책으로 변경 적용됩니다. [단과 의무시수 축소]</li>
                    <li>자습관 출석 일수 저조 시 강제 퇴원 조치가 진행되며 특이사항 발생 시, 담임 선생님과 상담 후 결정해야 합니다.</li>                  
                </ul>
            </div>
        </div>


        <!-- 모집요강 및 지원혜택 -->
        <p class="recruit-tit"><strong>모집 요강 및 지원 혜택</strong></p>
        <div class="tbl-box p0">
            <div class="txt-coming">
                <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/ico_comming.png" alt="" /></div>
                <p>
                    윈터스쿨의<br>
                    <strong>입학기준 및 지원 혜택</strong>은<br>
                    추후 공개 예정입니다.
                </p>
            </div>
        </div>
        <!-- 모집요강 자동화 시스템 영역 -->
        <!-- <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6895
        Else '실서버
            AGM_CD = 1978
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
