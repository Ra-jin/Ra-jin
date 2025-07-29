<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont core_wj">
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
                        <!-- <th class="on">월<span>현재 모집중</span></th> -->
                        <th>모집대상</th>
                        <th>1~2월</th>
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
                        <td rowspan="3">재학생 정규반</td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>고2</td>
                        <td rowspan="2">재학생 정규반</td>
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
                        온라인 원서접수 후 <br>
                        사전예약금 납부
                    </p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>
                        입학기준 확인 후 <br>
                        성적표 제출
                    </p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>
                        단과 강의 <br>
                        선택 및 결제
                    </p>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>
                        재학생 정규반 <br>
                        최종 등록 확인
                    </p>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!--입학절차 상세설명-->
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>온라인 원서접수 후 사전예약금 납부 <a href="javascript:alert('추후 오픈 예정입니다.');" class="btn-gray-s ml_10">원서접수 바로가기</a>
                    </p>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>입학기준 확인 후 성적표 제출
                    </p>
                    <div class="box">
                        <ul class="list-05">
                            <li>모집요강 참고</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>단과 강의 선택 및 결제
                    </p>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 4</span>재학생 정규반 최종 등록 확인

                    </p>
                </div>
            </div>
            <!--//입학절차 상세설명-->

            <!-- 모집요강 -->
            <h3 class="tit mt100"><strong>모집요강 및 장학혜택</strong></h3>
            <div class="tbl-box coming-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/winter/ico_tobe.png" alt="" /></p>
                    <p class="coming-txt">
                        <strong>2026 하반기 재학생 정규반 <br>
                        모집 요강 및 장학 혜택</strong>은 추후 공개 예정입니다.
                    </p>
                </div>
            </div>
            <!-- 모집 자동화 시스템 영역 -->
             
            <!-- <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6823
            Else '실서버
                AGM_CD = 1903
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
            %> -->
            <!-- //모집 자동화 시스템 영역 -->        
        </div>
    </div>
    <!-- //cont00 -->
</div>

<!-- <script>
    $(function(){
        tabMenu('.bt-tab','.tbl-box .cont-box');
    })
</script> -->