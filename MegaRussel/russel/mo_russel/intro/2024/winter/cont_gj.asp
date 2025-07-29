<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <!-- 입학 절차 -->
    <p class="recruit-tit">2025 윈터스쿨<br><strong>입학 절차</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>원서 접수 및 <br>사전 예약</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>성적표 제출 </span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>반 편성 후 <br>안내</span>
        </li>
    </ul>
    <ul class="setp-diagram">
        <li>
            <div><strong>4</strong></div>
            <span>강좌 선택 및 <br>등록</span>
        </li>
        <li>
            <div><strong>5</strong></div>
            <span>입학 및 개강</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">1) 원서 접수 및 사전 예약 <a href="javascript:void(0)" onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coregj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'" class="bt-gray-s">원서접수 바로가기</a></p>
            <ul class="list-dot m0 mt0">
                <li>온라인 원서 접수</li>
                <li>사전예약금 납부 (620,000원)</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">2) 성적표 제출 <a href="http://pf.kakao.com/_swxoCb" class="bt-gray-s">성적표 제출 &#91;바로가기&#93;</a></p>
            <ul class="list-dot m0">
                <li>모의고사 또는 내신 증빙서류 제출</li>
                <li>4층 입학팀 또는 “러셀CORE 광주” 카카오 채널로 제출</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">3) 반 편성 후 안내</p>
            <ul class="list-dot m0">
                <li>성적표 확인 후, 모집 기준 상 반 편성 및 안내</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">4) 강좌 선택 및 등록 <a href="https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1815" class="bt-gray-s">정규&middot;특강 단과 &#91;바로가기&#93;</a></p>
            <ul class="list-dot m0">
                <li>과목별 선택 수업 선택<br>
                    선택한 수업은 개강 전까지 변경 및 취소 가능<br>※ 강좌 선택 추후 안내</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">5) 입학 및 개강</p>
            <ul class="list-dot m0">
                <li>12월 개강</li>
                <li>개강 전 OT 진행 예정</li>
            </ul>
        </div>
    </div>

    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">2025 윈터스쿨<br><strong>모집요강 및 지원혜택</strong></p>
    
    <!-- 모집요강 자동화 시스템 영역 -->
    <%
    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
    If IsDevSvr() = true Then   '개발서버
        AGM_CD = 5591
    Else '실서버
        AGM_CD = 1670
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
    <!-- //모집요강 및 지원혜택 -->

</div>