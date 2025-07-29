<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="inner">
    <p class="recruit-tit">윈터스쿨 종합반<br><strong>모집 개요</strong></p>
    <div class="tbl-box type01">
        <table class="tbl-type01">
            <colgroup>
                <col style="width: 20%">
                <col style="width: auto">
            </colgroup>
            <tbody>
                <tr>
                    <th class="bg-sky">모집 대상</th>
                    <td class="text-align-left">2025년 고3(현 고2)</td>
                </tr>
                <tr>
                    <th class="bg-sky">개강일</th>
                    <td class="text-align-left">2월 순차 개강</td>
                </tr>      
                <tr>
                    <th class="bg-sky">수업 기간</th>
                    <td class="text-align-left">2024년 12월 ~ 2025년 2월 (9주 완성)</td>
                </tr>  
                <tr>
                    <th class="bg-sky">접수기간</th>
                    <td class="text-align-left">현재 접수 중</td>
                </tr>      
                <tr>
                    <th class="bg-sky">수업 과목</th>
                    <td class="text-align-left">국어, 수학, 영어, 탐구(과학탐구)</td>
                </tr>      
                <tr>
                    <th class="bg-sky">접수 방법</th>
                    <td class="text-align-left">현장 또는 온라인 접수</td>
                </tr>      
                <tr>
                    <th class="bg-sky">수강료</th>
                    <td class="text-align-left">1,252,000원 (1달 기준)</td>
                </tr>      
                <tr>
                    <th class="bg-sky">제출 서류</th>
                    <td class="text-align-left">전국 모의고사 성적표 1부<br>
                        성적증명서 (현재 학년 2학기까지 성적 반영) 1부<br>
                        ※ 성적증명서는 내신 성적으로 입학 희망자의 경우에만 제출</td>
                </tr>
                <tr>
                    <th class="bg-sky">상담 안내</th>
                    <td class="text-align-left">상담 가능 시간 : 오전 10시~오후 8시</td>
                </tr>
            </tbody>
        </table> 
    </div>

    <a href="javascript:void(0)" onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coregj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=174'" class="btn-link mt20">원서접수 바로가기</a>

    <!-- 입학 절차 안내 -->
    <p class="recruit-tit">윈터스쿨 종합반<br><strong>입학 절차 안내</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>원서 접수<br>및 사전 예약</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>성적표<br>제출</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>반 편성 후<br>안내</span>
        </li>
    </ul>
    <ul class="setp-diagram">
        <li>
            <div><strong>4</strong></div>
            <span>강좌 선택<br>및 등록</span>
        </li>
        <li>
            <div><strong>5</strong></div>
            <span>입학 및<br>개강</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">1) 입학상담/원서접수 <a href="javascript:void(0)" onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coregj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=174'" class="bt-gray-s">원서접수 바로가기</a></p>
            <ul class="list-dot m0 mt0">
                <li>온라인 원서 접수</li>
                <li>사전예약금 납부 (520,000원)</li>
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
            <p class="step-tit">4) 강좌 선택 및 등록</p>
            <ul class="list-dot m0">
                <li>과목별 선택 수업 선택<br>
                    선택한 수업은 개강 전까지 변경 및 취소 가능<br>
                    ※ 강좌 선택 추후 안내</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">5) 입학 및 개강</p>
            <ul class="list-dot m0">
                <li>12월 개강</li>
                <li>개강 전 OT 별도 안내</li>
            </ul>
        </div>
    </div>

    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">윈터스쿨 종합반<br><strong>입학기준 및 지원혜택</strong></p>

    <!-- 모집요강 자동화 시스템 영역 -->
    <%
    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
    If IsDevSvr() = true Then   '개발서버
        AGM_CD = 5593
    Else '실서버
        AGM_CD = 1672
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