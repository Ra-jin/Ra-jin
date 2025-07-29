<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!--프로모션 영역-->
<div class="cont-pro">
    <p><img src="<%=Application("img_path_russel")%>/m_russel/russel_md/2025/first/cont_pro_img.jpg" alt="러셀 목동 재수생 우선선발반 이벤트"></p>
</div>
<!--//프로모션 영역-->

<!-- 입학 절차 -->
<div class="recruit-wrap">
    <div class="inner">
        <p class="recruit-tit">입학 절차</p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>학원 방문 &<br>
                    자습관 등록 신청서 작성</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>성적표 제출 및<br>
                    단과 & 자습관 실등록</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 학원 방문 & 자습관 등록 신청서 작성</p>
                <ul class="list-bullet m0 mt0">
                    <li><span class="color-red f14">전반 마감으로 온라인에서 대기자 접수 먼저 진행해야 합니다.</span><a href="javascript:void(0)" onclick="alert('대기 접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelmd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179'" class="bt-gray-s ml10">대기자 접수 바로가기</a></li>
                    <li>잔여석 발생 시, 등록 가능 대상자는 문자 발송 및 유선 연락 예정이며, 현장 방문 실등록하셔야합니다.</li>
                    <li>재수생 우선선발반 등록은 <span class="color-red f14">‘현장’에서만</span> 가능합니다.</li>
                    <li><span class="color-red f14">성적표도 같이 지참</span>해서 방문해 주셔야 합니다.</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 성적표 제출 및 단과 & 자습관 실등록</p>
                <ul class="list-bullet m0 mt0">
                    <li>현장 등록 시, 성적표 제출은 필수입니다. (미제출 시 “그린반”으로 배정됩니다.)</li>
                    <li class="color-red">성적표 재제출로 인한 전형 변경은 12/30(월)까지만 가능합니다.</li>
                    <li class="color-red">입학 성적과 관계 없이 입학 시 [2025 수능] 성적표는 별도 추가 제출하셔야 합니다.</li>
                    <li>위조한 성적증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                    <li>전형별 모집요강에 따른 의무 T수를 충족 및 유지해야 합니다. (“T”는 주당 수업 시간 의미)</li>
                    <li>단과 수강 신청은 온라인 수강 신청 또는 현장 수강 신청이 가능합니다.</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">[러셀 목동 이용 유의사항]</p>
                <ul class="list-bullet m0 mt0">
                    <li class="color-red">평일 월~금 '오전/오후' 시간 러셀 목동학원 이용 필수 (단, 타학원/과외의 경우 담임선생님 협의 후 인정)</li>
                    <li class="color-red">타학원/과외는 평일 저녁/주말 이용 권장</li>
                    <li>3월부터 주 4일 이상 자습관 출석해야합니다. (주 6일 기준) / 특이사항 발생 시, 담임 선생님과 상담 후 결정하셔야 합니다.</li>
                    <li>3월 기준, 전체 자리 및 담임 재배정이 진행됩니다.</li>
                    <li class="color-red">
                        HS 전용관은 3월부터 운영될 예정이며, HS 1반 재원생에게 우선권이 부여됩니다. <br>
                        : HS 1반 中 입학 순서에 따라 HS관으로 좌석 변동 후, 남은 좌석은 HS 2반 입학 순서대로 배정됩니다.
                     </li>
                    <li>승강반 제도에 의한 반 변경은 4월 / 7월 / 10월에 진행됩니다. <span class="underline f14">(HS반은 월 1회 별도 강반 심사가 진행됩니다.)</span></li>
                </ul>
            </div>
        </div>

        <!-- <p class="step-tit">유의사항 러셀 목동 이용 유의사항</p>
        <ul class="list-bullet m0 mt0">
            <li class="color-red">평일 월~금 '오전/오후' 시간 러셀 목동학원 이용 필수 (단, 타학원/과외의 경우 담임선생님 협의 후 인정)</li>
            <li class="color-red">타학원/과외는 평일 저녁/주말 이용 권장</li>
            <li>3월부터 주 4일 이상 자습관 출석해야합니다. (주 6일 기준) / 특이사항 발생 시, 담임 선생님과 상담 후 결정하셔야 합니다.</li>
            <li>3월 기준, 전체 자리 및 담임 재배정이 진행됩니다.</li>
            <li class="color-red">
                HS 전용관은 3월부터 운영될 예정이며, HS 1반 재원생에게 우선권이 부여됩니다. <br>
                : HS 1반 中 입학 순서에 따라 HS관으로 좌석 변동 후, 남은 좌석은 HS 2반 입학 순서대로 배정됩니다.
             </li>
            <li>승강반 제도에 의한 반 변경은 4월 / 7월 / 10월에 진행됩니다. <span class="underline f14">(HS반은 월 1회 별도 강반 심사가 진행됩니다.)</span></li>
        </ul> -->

    </div>
</div>
<!-- //입학 절차 -->

<!-- 모집요강 및 지원혜택 -->
<div class="recruit-wrap type02">
    <div class="inner">
        <p class="recruit-tit">모집요강 및 지원혜택</p>
        <div class="tbl-box type02">
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5682
            Else '실서버
                AGM_CD = 1762
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
 <!-- //모집요강 및 장학혜택 -->

 <script>
    // 환불/취소 약관 팝업
    $('.r-pop-open').click(function(){
        $('.r-layer-wrap').addClass('on');
    })
    $('.r-layer-wrap .close-btn').click(function(){
        $('.r-layer-wrap').removeClass('on');
    })
</script>


