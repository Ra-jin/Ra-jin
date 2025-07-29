<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- 9월에 재노출 예정 -->
    <div class="cont00_1">
        <div><img src="<%=Application("img_path_russel")%>/russel_mokdong/2024/half/event_md.jpg" alt="" /></div>
    </div>
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학 절차 안내 -->
            <h5>러셀 목동 파이널 반수반 <strong>입학 절차 안내</strong></h5>
            <div class="step-wrap">
                <div class="step-info-wrap type02">
                    <div class="step-list">
                        <p class="tit"><span>1</span>학원 방문& <br>
                            자습관 등록 신청서 작성</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span>재학 증명서 제출</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span>반수반 결제 및 실등록</p>
                    </div>
                </div>
            </div>

            <ul class="list-02">
                <li>반수반 실등록은 ‘현장에서만’ 가능합니다.</li>
                <li class="red_txt"><strong class="red_txt">여석 발생 시, 전형별 대기 접수 순서대로 문자 혹은 유선 안내 드리겠습니다.
                </strong></li>
                <li>반수반 실등록 시, <span class="red_txt">재학 증명서 사진 제출</span>은 필수입니다. <span class="red_txt">(모의고사 및 내신 전형으로 입학 하는 경우도 동일)</span></li>
                <li><span class="red_txt">입학 기준과 상관 없이 입학 시 [2024 수능] 성적표는 별도 추가 제출하셔야 합니다.</span> (* 성적 상담 시 필수 자료입니다.)</li>
                <li>위조한 증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                <li>단과 수강 신청은 온라인 수강 신청 또는 현장 수강 신청이 가능합니다</li>
            </ul>
            <!-- //입학 절차 안내 -->

            <!-- 모집요강 및 지원혜택 -->
            <h5>러셀 목동 파이널 반수반 <strong>모집요강 및 지원혜택</strong></h5>
            <div class="tbl-box">
                
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 4502
                Else '실서버
                    AGM_CD = 1552
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