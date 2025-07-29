<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<div class="recruit-wrap pb0 pt0">
    <!-- <div class="mt50"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont00_event.png" alt=""></div> -->
    <p class="recruit-tit pt40">러셀 평촌 <strong>재학생반<br>연간 운영 계획</strong></p>
    <table class="tbl-plan">
    <colgroup> 
        <col style="width:30%">
        <col style="width:auto">
        <col style="width:auto">
    </colgroup>
    <thead>
        <tr>
            <th>1월</th>
            <th class="on">2월 <span>현재 모집중</span></th>
            <th>3~6월</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>윈터스쿨<br>
            </td>
            <td>윈터스쿨<br>
            PLUS</td>
            <td>재학생<br>
            최상위권반</td>
        </tr>
    </tbody>
    </table>
    <table class="tbl-plan mt10">
        <colgroup> 
            <col style="width:auto">
            <col style="width:auto">
            <col style="width:auto">
        </colgroup>
        <thead>
            <tr>
                <th>7~8월</th>
                <th>9~11월</th>
                <th>11~12월</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>썸머스쿨</td>
                <td>파이널 정규반</td>
                <td>프리<br>
                윈터스쿨</td>
            </tr>
        </tbody>
    </table>
    <ul class="list-bullet ml0">
        <li class="color-gray-03 f11">입학 시기에 따라 모집요강 및 장학혜택이 다릅니다.<br>
        입학 시기에 해당하는 모집요강을 확인해주시기 바랍니다.</li>
    </ul>

    <p class="recruit-tit">러셀 평촌 <strong>윈터스쿨 입학절차</strong></p>
    <ul class="setp-diagram">
    <li>
        <div><strong>1</strong></div>
        <span>성적표 제출<br>및 반 배정
        </span>
    </li>
    <li>
        <div><strong>2</strong></div>
        <span>강좌 선택<br>(의무T수 충족)
        </span>
    </li>
    <li>
        <div><strong>3</strong></div>
        <span>실등록 완료,<br>좌석 배정
        </span>
    </li>
    </ul>
    <!-- <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit">1) 온라인 원서 접수</p>
            <ul class="list-bar m0 f14">
                <li>반드시 학생 ID로 로그인 하신 후 온라인 원서 접수 및 사전 예약금 결제 진행 바랍니다.(학부모 계정으로 신청 불가) </li>
                <li>온라인 원서 접수 시, 성적표 사진 파일 등록은 필수입니다.</li>
                <li>사전 예약금 (15만원)까지 결제하셔야 원서 접수가 완료됩니다.<br>
                ※ 결제창이 보이지 않는 경우, 팝업 허용 후 다시 원서접수 버튼을 눌러서 진행해주시면 됩니다.</li>
                <li>사전 예약금은 실등록 시 환불 또는 단과 수업 비용으로 대체됩니다.</li>
                <li>사전 예약금 결제 완료 시 성적표 제출 안내 문자가 발송됩니다.<br>
                ※ 추후 전형에 해당하는 증빙서류 미제출시, 입학이 제한될 수 있습니다.</li>
                <li>예약금을 납부한 사전예약자에 한해 실등록 안내 예정입니다.<br>※ 031-341-6500(러셀 평촌) 해당 번호 차단 되어있지 않도록 설정해주시기 바랍니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">2) 시간표공지 및 실등록 안내
            </p>
            <ul class="list-star m0 f14">
            <li>시간표는 추후공지됩니다.</li>
            <li>학사일정에 따른 바자관 입학일 등록 후 조정은 불가합니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">3) 실등록 진행
            </p>
            <ul class="list-bar m0 f14">
                <li>위조한 성적증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                <li>실등록 일정은 사전 예약자분들께 추후 문자로 안내 예정입니다.</li> 
            </ul>
        </div>
    </div> -->
    
    <p class="recruit-tit">
        러셀 평촌 윈터스쿨<br><strong>모집요강 및 지원혜택</strong>
    </p>

    <div class="tbl-box">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 2327
        Else '실서버
            AGM_CD = 1351
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
    
    <div class="tbl-box mt20">
        지원혜택 및 강좌 시간표<br>
        <strong>추후 공개 예정</strong>
        <div class="balloon">
            학원 문자 수신 알리미에 정보를 등록해주시면 <br>
            누구보다 빠르게 러셀 평촌 윈터스쿨 소식을 <br> 받으실 수 있습니다
            <span>TIP</span>
        </div>
        <a href="https://mrusselpc.megastudy.net/entinfo/entry_pt/enter_pop.asp" class="btn-link mt20">문자 수신 알리미 신청하기</a>
    </div>
</div>
