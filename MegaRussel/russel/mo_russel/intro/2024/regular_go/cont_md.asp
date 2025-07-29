<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap pb0">
    <p class="recruit-tit">러셀 목동 재학생 정규반<br><strong>연간 운영 계획</strong></p>
    <table class="tbl-plan-new">
        <colgroup> 
            <col style="width:30%">
            <col style="width:auto">
        </colgroup>
        <tbody>
            <tr>
                <th>1~2월</th>
                <td class="text-align-left">윈터스쿨</td>
            </tr>
            <tr>
                <th>3~6월</th>
                <td class="text-align-left">재학생 정규반</td>
            </tr>
            <tr>
                <th>7~8월</th>
                <td class="text-align-left">썸머스쿨</td>
            </tr>
            <tr>
                <th>9~11월</th>
                <td class="text-align-left">파이널 재학생 정규반</td>
            </tr>
        </tbody>
    </table>
    <p class="color-gray-03 f11 text-align-right m-mt6">* 학원의 사정에 따라 연간 운영 계획은 변동될 수 있으며,<br>
        변동 시 별도 안내드립니다
    </p>
    <!-- 입학 절차 안내 -->
    <p class="recruit-tit">러셀 목동 파이널 재학생 정규반<br><strong>입학 절차 안내</strong></p>
    
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>
                온라인 원서 접수
            </span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>학원 방문 등록 & <br>
                자습관 등록 신청서 작성
            </span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;"> 1) 온라인 원서 접수</p>
            <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelmd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168';" class="bt-gray-s ml10">원서접수 바로가기</a>
            <ul class="list-bar m0 f14">
                <li>반드시 학생 ID로 로그인 하신 후 온라인 원서 접수 진행 바랍니다.</li>
                <li>온라인 원서 접수 시, 성적표 사진 파일 등록은 필수입니다. (미제출 시 ‘그린반’으로 배정됩니다.)</li>
                <li>온라인 원서 접수 시, 성별 등 개인정보 오기입의 경우 추후 실등록이 불가할 수 있습니다.</li>
                <li class="color-red">원서접수를 완료한 학생, 학부모 대상으로 유선 연락 및 문자를 통해 입학 절차 안내가 이뤄집니다.</li>
                <li class="color-red">기존 재원생 재등록 여부에 따라 대기 시간이 길어질 수 있습니다. (8월 중순 순차적으로 유선 연락 예정)</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">2) 학원 방문 실등록 & 자습관 등록 신청서 작성</p>
            <ul class="list-bar m0 f14">
                <li>재학생 정규반 실등록은 <span class="color-red">‘현장’에서만</span> 가능합니다.</li>
                <li class="color-red">성적표 재제출로 인한 전형 변경은 첫 등원일 전까지만 가능합니다. (이후 어떠한 사유로도 변경 불가능)</li>
                <li>위조한 성적 증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                <li>단과 수강 신청은 온라인 수강 신청 또는 현장 수강 신청이 가능합니다.</li>
            </ul>
        </div>
    </div>

    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀 목동 파이널 재학생 정규반<br><strong>모집요강 및 장학혜택</strong></p>

    <div class="tbl-box">     

        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 4424
        Else '실서버
            AGM_CD = 1473
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