<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!-- 입학 절차 -->
<div class="recruit-wrap">
    <div class="inner">
        <p class="recruit-tit">입학 절차</p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>온라인<br>
                원서 접수<br>
                    (성적표 제출)</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>단과 수업<br>
                및 결제</span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>바자관 비용 및<br>
                학습 콘텐츠 결제 
                </span>
            </li>
            <li>
                <div><strong>4</strong></div>
                <span>재수생<br>
                우선선발반<br>
                    최종 등록</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 온라인 원서 접수 (성적표 제출)
                    <% if curYmdhmin < 202411151400 then %>
                    <% Else %>
                    <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelbd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179';" class="bt-gray-s ml10">원서 접수 바로가기</a>
                    <% End If %>
                </p>
                <p class="stxt">- 접수 방법 : 온라인 원서 접수 후 성적표 등록</p>
                <ul class="list-bullet m0 mt10">
                    <li>반드시 학생 정보로 회원가입 후 로그인하여 접수해야 합니다. (학부모 정보로 접수 시 인정 불가)</li>
                    <li>성적표 미 제출 시 반 배정이 불가하여 이후 입학 절차를 진행할 수 없습니다.</li>
                    <li>원서 접수 순으로 등록 안내 문자가 발송됩니다.
                    </li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 단과 수업 선택 및 결제
                </p>
                <p class="stxt">
                    - 등록 방법 : 러셀 분당 홈페이지 또는 학원 방문 접수 
                </p>
                <ul class="list-bullet m0 mt10">
                    <li>러셀 분당 모든 단과 수업은 재수생 우선선발반 이용과 관계없이 수강할 수 있습니다.
                    </li>
                    <li>모집요강에 따른 의무 시수를 충족하여야 재수생 우선선발반 등록이 가능합니다.</li>
                    <li>대기 중인 강좌는 시수에 포함되지 않습니다.</li>
                    <li>홈페이지 단과 중 [온라인 접수 마감]으로 되어있는 단과 결제는 카카오톡 채널 [러셀 분당학원]으로 문의 남겨주시면 결제 안내 드리겠습니다.</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">3) 바자관 비용 및 학습 콘텐츠 결제</p>
                <p class="stxt">- 결제 방법 : 러셀 분당 홈페이지 또는 학원 방문 접수</p>
                <ul class="list-bullet m0 mt10">
                    <li>온라인 결제는 카카오톡 채널 [러셀 분당학원]으로 문의 남겨주시면 결제 안내 드리겠습니다.
                    </li>
                    <li>의무 시수 미달 시, 재수생 우선선발반 등록이 불가합니다.</li>
                    <li>바자관 학습 콘텐츠는 홈페이지에서 온라인 결제만 가능합니다.</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">4) 재수생 우선선발반 최종 등록</p>
                <p class="stxt">
                    - STEP 1 ~ STEP 3을 완료한 학생 및 학부모님에게는 등록 완료 안내 문자를 발송합니다.<br>
                    - 입학일 전, 급식 및 등원 관련 안내 문자가 발송됩니다.<br>
                    - 등원 후 빠른 학원 적응을 위한 오리엔테이션을 진행합니다.
                </p>
            </div>
        </div>
    </div>
</div>

<!-- 모집요강 및 지원혜택 -->
<div class="recruit-wrap type02">
    <div class="inner">
        <p class="recruit-tit">모집요강 및 장학혜택</p>
        
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 5701
        Else '실서버
            AGM_CD = 1779
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

        <p class="alarm-txt mt30">학원 문자 알리미에 정보를 등록해 주시면<br>
            누구보다 빠르게 러셀 분당<br>
            2026 재수생 우선선발반 소식을<br>
            받으실 수 있습니다.</p> 
        
        <a class="first-btn bk mt30" href="javascript:void(0);" onclick="fncAlarmPop()">학원 문자 알리미 신청하기</a>
    </div>
</div>
<!-- //모집요강 및 장학혜택 -->
