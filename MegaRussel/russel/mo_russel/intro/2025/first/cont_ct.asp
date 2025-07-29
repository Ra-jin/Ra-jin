<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!--프로모션 영역-->
<!-- <div class="cont-pro">
    <p><img src="<%=Application("img_path_russel")%>/m_russel/russel_ct/2025/first/cont_pro_img.jpg" alt=""></p>
</div> -->

<!-- 연간 운영 계획 -->
<div class="recruit-wrap">
    <div class="inner">
        <p class="recruit-tit">연간 운영 계획</p>
        <table class="tbl-plan-new typeA">
            <colgroup> 
                <col style="width:30%">
                <col style="width:auto">
            </colgroup>
            <tbody>
                <tr>
                    <th class="bg-gray">12~2월</th>
                    <td class="bg-gray02">재수생 우선선발반</td>             
                </tr>
                <tr>
                    <th class="bg-gray">3~8월</th>
                    <td class="bg-gray02">N수생 정규반 & 반수반</td>
                </tr>
                <tr>
                    <th class="bg-gray">9~11월</th>
                    <td class="bg-gray02">N수생 파이널 정규반</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

<!-- 입학 절차 -->
<div class="recruit-wrap">
    <div class="inner">
        <p class="recruit-tit pt0">입학 절차</p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>현장 방문<br>
                접수</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>성적표 제출</span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>강좌 선택 <br>
                    및 결제</span>
            </li>
            <li>
                <div><strong>4</strong></div>
                <span>최종 등록</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 현장 방문 접수</p>
                <ul class="list-bullet m0 mt0">
                    <li>현장 방문 및 사전예약금 납부
                    </li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 성적표 제출</p>
                <ul class="list-bullet m0 mt0">
                    <li>성적표 기준은 모집요강에 명시된 제출 기준으로 진행되며, 성적표 확인 후 반 배정 확정됩니다.</li>
                    <li>기간 내 성적표 미 제출 시, 블루반으로 자동 배정됩니다.</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 강좌 선택 및 결제</p>
                <ul class="list-bullet m0 mt0">
                    <li>모집요강 명시된 ‘반 별 의무T수’에 충족한 강좌 선택을 온라인에서 결제 진행됩니다.</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">4) 최종 등록</p>
                <p class="f14" style="color:#626262;letter-spacing:-0.5px;">2026 재수생 우선선발반 등록 완료</p>
                <ul class="list-bullet m0 mt0">
                    <li>강좌 등록 내역 확인 후 바른공부 자습전용관 최종 등록 별도 안내드립니다.</li>
                    <li>기존 사전예약금은 전액 환불됩니다.</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<!-- 모집요강 및 지원혜택 -->
<div class="recruit-wrap">
    <div class="tbl-box">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 5683
        Else '실서버
            AGM_CD = 1763
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