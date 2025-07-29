<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->


<!--첫번째 타이틀만 margin-top 140px(mt140), 나머지는 모두 margin-top 100px(mt100)로 클래스 추가 필수-->
<!--스페셜 페이지 있을 경우, 첫번째 타이틀에 margin-top 클래스 삭제-->
<div class="cont js-cont russel_ct">
    <!-- <div class="s-page">
        <p class="s-tit">재수생 우선선발반 시즌1, <span>warming-up(워밍 업)</span></p>
        <div>
            <img src="<%=Application("img_path_russel")%>/russel_ct/2025/first/s_page_img.png" alt="" />
        </div>
    </div> -->

    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 연간 운영 계획 -->
            <h3 class="tit mt140"><strong>연간 운영 계획</strong></h3>
            <table class="tbl-plan type02 p0">
                <colgroup>
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                </colgroup>
                <thead>
                    <tr>
                        <th>12~2월</th>
                        <th>3~8월</th>
                        <th>9~11월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>재수생 우선선발반</td>
                        <td>N수생 정규반 & 반수반</td>
                        <td>N수생 파이널 정규반</td>
                    </tr>
                </tbody>
            </table>

            <!-- 입학절차 -->
            <h3 class="tit mt140"><strong>입학절차</strong></h3>

            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>
                        현장 방문 접수
                    </p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>
                        성적표 제출
                    </p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>
                        강좌 선택 및 결제
                    </p>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>
                        최종 등록
                    </p>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!--입학절차 상세설명-->
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>현장 방문 접수</p>
                    <div class="box">
                        <ul class="list-02">
                            <li> 현장 방문 및 사전예약금 납부
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>성적표 제출</p>
                    <div class="box">   

                        <ul class="list-02">
                            <li>성적표 기준은 모집요강에 명시된 제출 기준으로 진행되며, 성적표 확인 후 반 배정 확정됩니다.</li>
                            <li>기간 내 성적표 미 제출 시, 블루반으로 자동 배정됩니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>강좌 선택 및 결제</p>
                    <div class="box">   
                        <ul class="list-02">
                            <li>모집요강 명시된 '반 별 의무T수'에 충족한 강좌 선택을 온라인에서 결제 진행됩니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 4</span>최종 등록</p>
                    <div class="box">
                        2026 재수생 우선선발반 등록 완료
                        <ul class="list-02">
                            <li>강좌 등록 내역 확인 후 바른공부 자습전용관 최종 등록 별도 안내드립니다.</li>
                            <li>기존 사전예약금은 전액 환불됩니다.</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--//입학절차 상세설명-->


            <!-- 모집요강 -->
            <h3 class="tit mt100"><strong>모집요강 및 지원혜택</strong></h3>
            <div class="tbl-box type02">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 5684
                Else '실서버
                    AGM_CD = 1764
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
    <!-- //cont00 -->
</div>

<script>
    $(function(){
        tabMenu('.bt-tab','.tbl-box .cont-box');
    })
    // 환불/취소 약관 팝업
    $('.r-pop-open').click(function(){
        $('.r-layer-wrap').addClass('on');
    })
    $('.r-layer-wrap .close-btn').click(function(){
        $('.r-layer-wrap').removeClass('on');
    })
</script>