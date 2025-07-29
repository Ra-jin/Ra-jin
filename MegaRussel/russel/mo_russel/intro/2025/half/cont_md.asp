<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <div class="inner">

        <!--이벤트 컨텐츠-->
        <!-- <p class="event-page"><img src="<%=Application("img_path_russel")%>/m_russel/russel_md/2025/half/event_img.png" alt="2026 대학 반수생을 위한 특별 혜택"></p> -->

        <!-- 입학 절차 -->
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>온라인 원서접수 및 <br>성적표 제출</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>강의 선택 및 <br> 학원 방문 실등록</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 온라인 원서 접수 및 성적표 제출
                    <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelmd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187';" class="bt-gray-s ml10">원서접수 바로가기</a>
                </p>
                <ul class="list-bar m0 mt0">
                    <li>반드시 학생 ID로 로그인 하신 후 온라인 원서 접수 진행 바랍니다.</li>
                    <li>
                        온라인 원서 접수 시, 증빙 서류 등록은 필수입니다. <br>
                        <span class="color-red bold2 f14">(대학교 전형 - 재학증명서 / 모의고사 및 내신 전형 - 성적표 및 재학증명서)</span>
                    </li>
                    <li>위조한 증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                    <li><span class="color-red f14">성적표 재제출로 인한 전형 변경은 첫 등원일 전까지만 가능합니다.</span></li>
                    <li>온라인 원서 접수 시, 학년 및 성별 등 개인정보 오기입의 경우 추후 실등록이 불가할 수 있습니다.</li>
                    <li><span class="color-red f14">입학 성적과 관계 없이 입학 시 [2025 수능] 성적표는 별도 추가 제출하셔야 합니다.</span> (*성적 상담 시 필수 자료입니다.)</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 강의 선택 및 학원 방문 실등록</p>
                <ul class="list-bar m0 mt0">
                    <li>반수반 실등록은 <span class="color-red f14">‘현장’</span>에서만 가능합니다.</li>
                    <li><span class="color-red f14">원서 접수를 완료한 학생, 학부모 대상으로 순차적으로 문자를 통해 입학 절차 안내가 이뤄집니다.</span></li>
                    <li><span class="color-red f14">온라인 전형 접수를 하였더라도 기존 재원생 재등록 여부에 따라 대기 기간이 연장될 수 있습니다.</span></li>
                    <li>단과 수강 신청은 온라인 수강 신청 또는 현장 수강 신청이 가능합니다.</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">※ 유의사항</p>
                <ul class="list-bar m0 mt0">
                    <li><span class="color-red f14">자습은 2관 재학생 전용관에서 진행됩니다.</span></li>
                    <li><span class="color-red f14">여름방학 기간 (7~8월) 및 2학기 휴학의 경우 [N수 정규반] 지원혜택으로 진행됩니다.</span></li>
                    <li>자습관 출석 일수 저조 시 강제 퇴원 조치가 진행되며 특이사항 발생 시, 담임 선생님과 상담 후 결정하셔야 합니다.</li>
                    <li>승강반 제도에 의한 반 변경은 4월 / 7월 / 10월에 진행됩니다. <span class="underline f14">(HS반은 월 1회 별도 강반 심사가 진행됩니다.)</span></li>
                    <li>바자관 지원혜택은 수능 이후 합격 대학 정보 제공 동의를 위한 혜택으로 제공됩니다.</li>
                </ul>
            </div>
        </div>


        <p class="recruit-tit"><strong>모집요강 및 지원혜택</strong></p>

        <div class="tbl-box">
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6837
            Else '실서버
                AGM_CD = 1918
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

    </div>
</div>
<!-- //입학 절차 -->

<!-- <script>
    // 환불/취소 약관 팝업
    $('.r-pop-open').click(function(){
        $('.r-layer-wrap').addClass('on');
    })
    $('.r-layer-wrap .close-btn').click(function(){
        $('.r-layer-wrap').removeClass('on');
    })
</script> -->


