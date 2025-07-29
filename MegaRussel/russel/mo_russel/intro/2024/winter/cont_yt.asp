<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <!-- 연간 운영 계획 -->
    <p class="recruit-tit">러셀 영통 재학생반<br><strong>연간 운영 계획</strong></p>
    <table class="tbl-plan-new typeA">
        <colgroup> 
            <col style="width:30%">
            <col style="width:auto">
        </colgroup>
        <tbody>
            <tr>
                <th><span>현재 모집 중</span><br> 1~2월</th>
                <td>윈터스쿨                  
                    <!-- <a onclick="alert('사전접수는 PC 페이지에서 이용 가능합니다.')" href="https://russelyt.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173" class="bt-apply" style="padding: 0 25px;">2차 사전접수 바로가기</a> -->
                </td>             
            </tr>
            <tr>
                <th class="bg-gray">3~6월</th>
                <td class="bg-gray02">재학생 최상위권반</td>
            </tr>
            <tr>
                <th class="bg-gray">7~8월</th>
                <td class="bg-gray02">썸머스쿨</td>
            </tr>
            <tr>
                <th class="bg-gray">9~11월</th>
                <td class="bg-gray02">파이널 정규반</td>
            </tr>
            <tr>
                <th class="bg-gray">11~12월</th>
                <td class="bg-gray02">프리 윈터스쿨</td>
            </tr>
        </tbody>
    </table>
    <p class="r-txt">※ 입학 시기에 따라 모집요강 및 지원혜택이 다릅니다.<br>
        입학 시기에 해당하는 모집요강을 확인해주시기 바랍니다.</p>

    <!-- 입학 절차 -->
    <p class="recruit-tit">2025 윈터스쿨<br><strong>입학 절차</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>온라인<br>사전 접수</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>시간표 공지<br>및 실등록 안내</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>현장 실등록&<br>성적표 제출</span>
        </li>
    </ul>
    <a onclick="alert('대기 접수는 PC페이지에서 가능합니다.')" href="https://russelyt.megastudy.net/russel/info/waiting/list.asp?ClsCode=2" class="btn-link mt20">2월 대기 접수 바로가기</a>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;">1) 온라인 사전 접수</p>
            <p style="font-size:1.5rem;letter-spacing:-0.5px;">■ 사전 접수 기간 안내</p>
            <ul class="list-base m0 mt0">
                <li> ▶ 1차 : 8/7(수) 오후 2시(마감)</li>
                <li> ▶ 2차 : 8/16(금) 오후 2시 (마감)</li>
            </ul>
            <p class="mt10" style="font-size:1.5rem;letter-spacing:-0.5px;">■ 유의사항</p>
            <ul class="list-bar m0">
                <li>사전예약금 접수는 선착순으로 진행되었으며, 현재 전 학년 마감되어 온라인 대기 접수 바랍니다.</li>
                <li>2차 사전접수자(예비)는 1차 사전접수자 실등록 완료 후 취소생이 발생되었을 때 우선적으로 등록이 가능합니다.</li>
                <li>
                    사전예약금을 납부하신 분들에 한해 별도로 실등록 기간을 안내해 드릴 예정입니다. (2차는 1차 사전접수자 접수 후 여석에 따라 별도 안내) <br>
                    ① 수강 희망하는 강좌를 선택 <br>
                    ② 안내해드린 등록 기간 내 방문하여 신청서 작성, 증빙서류 제출, 단과&바자관 비용 전액 결제 <br>
                    ③ 추후 OT 참석 및 온라인으로 급식 결제 (별도 안내 예정)
                 </li>
                <li>1,2차 사전예약자의 실등록이 완료된 이후 대기접수자에게 순차적으로 실등록 안내가 진행될 예정입니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">2) 시간표 공지 및 실등록 안내</p>
            <ul class="list-bar m0 mt0">
                <li>학사일정에 따른 바자관 입학일 등록 후 조정은 불가합니다.</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">3) 현장 실등록 & 성적표 제출</p>
            <ul class="list-bar m0 mt0">
                <li>공지해 드린 실등록 기간 내 학원으로 방문하여 유효한 성적표 제출 및 신청서를 작성합니다.</li>
                <li>신청서 제출 및 단과 및 바른공부 자습전용관 비용 전체 결제해 주시면 최종 등록이 완료됩니다.</li>
            </ul>
        </div>
    </div>

    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">2025 윈터스쿨<br><strong>모집요강 및 지원혜택</strong></p>
    <div class="tbl-box">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 5642
        Else '실서버
            AGM_CD = 1721
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
    <!-- <div class="txt-coming">
        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/ico_comming.png" alt="" /></div>
        <p><strong>2025 윈터스쿨</strong>의<br>
            <strong>모집요강 및 지원혜택</strong>은<br>
            추후 공개됩니다.</p>
    </div> -->  


</div>
