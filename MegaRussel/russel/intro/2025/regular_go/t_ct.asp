<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->


<div class="cont js-cont russel_ct">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner"><!-- 연간 운영 계획 -->
            <h3 class="tit"><strong>연간 운영 계획</strong></h3>
            <table class="tbl-plan type02 p0">
                <colgroup>
                    <col style="width:12%">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                </colgroup>
                <thead>
                    <tr>
                        <th>모집대상</th>
                        <th>1~2월</th>
                        <!-- <th class="on">3~4월<span>현재 모집중</span></th> -->
                        <th>3~6월</th>
                        <th>7~8월</th>
                        <th>9~11월</th>
                        <th>11~12월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>고3</td>
                        <td rowspan="3">윈터스쿨</td>
                        <td rowspan="3">재학생 정규반</td>
                        <td rowspan="3">썸머스쿨</td>
                        <td rowspan="3">파이널 정규반</td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>고2</td>
                        <td rowspan="2">프리윈터스쿨</td>
                    </tr>
                    <tr>
                        <td style="border-bottom-right-radius: 0;border-right:none">고1</td>
                    </tr>
                </tbody>
            </table>
            <p class="plan-txt r-txt">
                * 학원의 사정에 따라 연간 운영 계획은 변동될 수 있으며, 변동 시 별도 안내드립니다.
            </p>
            <!-- 입학절차 -->
            <h3 class="tit mt100"><strong>입학 절차 안내</strong></h3>

            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>
                        원서접수
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
                    <p class="tit"><span>STEP 1</span>원서접수</p>
                    <div class="box">
                        <ul class="list-col">
                            <li>① 온라인 원서접수</li>
                            <li>② 사전 예약금 납부 <a href="https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184" class="btn-gray-s ml_10">온라인 원서접수 바로가기</a></li>
                        </ul>
                        <ul class="list-04">
                            <li>사전 예약금 (60만원)까지 결제해 주셔야 원서접수가 완료됩니다.
                            </li>
                            <li>원서접수를 완료한 학생, 학부모 대상으로 문자를 통해 입학 절차가 안내됩니다.
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>성적표 제출</p>
                    <div class="box">   

                        <ul class="list-04">
                            <li>모집요강이 확정되면 성적표 제출 안내드리며, 성적표 확인 후 반배정 확정됩니다.
                            </li>
                            <li>성적표 미제출 시 그린반으로 배정됩니다.
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>강좌 선택 및 결제</p>
                    <div class="box">   
                        <ul class="list-04">
                            <li>의무 T수에 따른 강의 선택 및 결제 진행 부탁드립니다.
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 4</span>최종 등록</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>강의 등록 내역 확인 후 바른공부 자습전용관 최종 등록해 드립니다.
                            </li>
                            <li>예약금은 전액 환불됩니다.
                            </li>
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
                        AGM_CD = 6785
                    Else '실서버
                        AGM_CD = 1867
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
    // $(function(){
    //     tabMenu('.bt-tab','.tbl-box .cont-box');
    // })
    // // 환불/취소 약관 팝업
    // $('.r-pop-open').click(function(){
    //     $('.r-layer-wrap').addClass('on');
    // })
    // $('.r-layer-wrap .close-btn').click(function(){
    //     $('.r-layer-wrap').removeClass('on');
    // })
</script>