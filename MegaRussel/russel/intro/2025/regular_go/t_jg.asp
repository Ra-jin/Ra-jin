<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_jg">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 연간 운영 계획 -->
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
                        <td>재학생 정규반</td>
                        <td rowspan="3">썸머스쿨</td>
                        <td>재학생 정규반</td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>고2</td>
                        <td>재학생 정규반<br>
                            (정시 대비 / 내신 대비)</td>
                        <td>재학생 정규반<br>
                            (정시 대비 / 내신 대비)</td>
                        <td>재학생 정규반<br>
                            (정시 대비 / 내신 대비)</td>
                    </tr>
                    <tr>
                        <td>고1</td>
                        <td>재학생 정규반<br>
                            (내신 대비)</td>
                        <td>재학생 정규반<br>
                            (내신 대비)</td>
                        <td>재학생 정규반<br>
                            (내신 대비)</td>
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
                    <p>단과 수업 선택 <br> 및 결제</p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>성적표 제출 및 <br> 최종 등록</p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>입학</p>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!--입학절차 상세설명-->
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>단과 수업 선택 및 결제
                        <!-- <a href="https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184" class="btn-gray-s ml_10">원서접수 바로가기</a> -->
                        <ul class="list-04">
                            <li>등록 방법 : 온라인 또는 학원 방문 접수</li>
                            <li>등록 비용 : 단과 수업에 따라 상이</li>
                        </ul>
                    </p>
                </div>

                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>성적표 제출 및 최종 등록</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>성적표 : 반마다 성적표 제출 기준이 상이하므로, 2026 재학생 정규반 모집요강을 꼭 확인해주시기 바랍니다.</li>
                            <li>성적표 제출 : <span class="underline">최종 등록 시, 학원 방문하여 <span class="red_txt">성적표 사본(출력물) 체출(필수)</span></span></li>
                        </ul>
                        <ul class="list-02 mt20">
                            <li>제출 불가한 성적표 : (예) 꼬리표, 수기(오피스) 편집, 인적사항 확인 불가한 성적표</li>
                        </ul>
                    </div>
                </div>

                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>입학</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>OT : 개별 안내</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--//입학절차 상세설명-->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100"><strong>모집요강 및 지원혜택</strong></h3>
            <div class="tbl-box type02">
                <div class="tab-cont-wrap type01">
                    <div class="bt-tab">
                        <a href="javascript:void(0)" class="on br-0"><strong>고3</strong></a>
                        <a href="javascript::void(0)" class="bl-0"><strong>고1/2</strong></a>
                    </div>
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 6773
                    Else '실서버
                        AGM_CD = 1854
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
        </div>
    </div>
</div>
<script>
    // 환불/취소 약관 팝업
    // $('.r-pop-open').click(function(){
    //     $('.r-layer-wrap').addClass('on');
    // })
    // $('.r-layer-wrap .close-btn').click(function(){
    //     $('.r-layer-wrap').removeClass('on');
    // })
</script>

<script>
    $(function(){
        tabMenu('.bt-tab','.cont-box');
    })
</script>