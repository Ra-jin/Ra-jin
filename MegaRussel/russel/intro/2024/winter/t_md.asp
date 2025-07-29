<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <div class="event-area mb100">
                <img src="<%=Application("img_path_russel")%>/russel_mokdong/2024/winter/event_banner.jpg" alt="" />
            </div>
            <!-- 입학 절차 안내 -->
            <h3 class="tit">2025 윈터스쿨 <strong>입학 절차 및 유의사항 안내</strong></h3>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span> 온라인 원서 접수 및 사전 예약금 결제
                        </p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span> 강의 선택 및 학원 방문 실등록<br>
                            (11월 예정)
                        </p>
                    </div>
                </div>
                <div class="step-box">
                    <p class="tit mt0">1) 온라인 원서 접수 및 사전 예약금 결제 <a href="https://russelmd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173" class="btn-gray-s ml_10">원서접수 바로가기 </a></p>
                    <div class="box">
                        <ul class="list-04 mt5">
                            <li>반드시 학생 ID로 로그인 하신 후 온라인 원서 접수 및 사전 예약금 결제 진행 바랍니다.</li>
                            <li>온라인 원서 접수 시, 성적표 사진 파일 등록은 필수입니다.</li>
                            <li class="red_txt">성적표 재제출로 인한 전형 변경은 자리 이동 없이 12/30(월)까지만 가능합니다. (해당 기간 이후 변경 불가능)</li>
                            <li>온라인 원서 접수 시, 학년 및 성별 등 개인정보 오기입의 경우 추후 실등록이 불가할 수 있습니다.</li>
                            <li class="red_txt">사전 예약금까지 결제하셔야 원서 접수가 완료됩니다.<br>
                                <span class="red_txt" style="margin-left:-12px;">※ 결제창이 보이지 않는 경우, 팝업 허용 후 다시 원서접수 버튼을 눌러서 진행해주시면 됩니다.</span>
                            </li>
                            <li>사전 예약금은 실등록 시 환불 또는 자습관 비용으로 대체됩니다.</li>
                            <li class="red_txt">2025년 기준 윈터스쿨은 전석 마감되었으며 현재 대기자 접수만 가능합니다. (사전예약금 X)</li>
                            <li class="red_txt">11월 중순 실등록 이후 대기자 분들께 순차적으로 등록 안내 예정입니다.</li>
                        </ul>
                    </div>
                    <p class="tit">2) 강의 선택 및 학원 방문 실등록</p>
                    <div class="box">
                        <ul class="list-04 mt5">
                            <li>전형별 모집 요강에 따른 의무 T수를 충족 및 유지해야합니다. (“T”는 주당 수업 시간 의미)</li>
                            <li>위조한 성적증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                            <li>단과 수강 신청은 온라인 수강 신청 또는 현장 수강 신청이 가능합니다.</li>
                            <li>윈터스쿨 실등록은 ‘현장’ 에서만 가능합니다.</li>
                            <li>단과 시간표 및 자습관 실등록 일정은 사전 예약자분들께 추후 문자로 안내 예정입니다. <span class="red_txt">(11월 예정)</span></li>
                        </ul>
                    </div>                   
                </div>
            </div>
            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100">2025 윈터스쿨 <strong>모집요강 및 지원혜택</strong></h3>
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5584
            Else '실서버
                AGM_CD = 1663
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
<script>
    // 환불/취소 약관 팝업
    $('.r-pop-open').click(function(){
        $('.r-layer-wrap').addClass('on');
    })
    $('.r-layer-wrap .close-btn').click(function(){
        $('.r-layer-wrap').removeClass('on');
    })
</script>