<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_md">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 연간 운영 계획 -->
            <h3 class="tit"><strong>연간 운영 계획</strong></h3>
            <table class="tbl-plan type02 p0">
                <colgroup>
                    <col style="width:15%">
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
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>고3</td>
                        <td>윈터스쿨</td>
                        <td>재학생 정규반</td>
                        <td>썸머스쿨</td>
                        <td>파이널<br>
                        재학생 정규반</td>
                    </tr>
                </tbody>
            </table>
            <p class="plan-txt r-txt">
                * 학원의 사정에 따라 연간 운영 계획은 변동될 수 있으며, 변동 시 별도 안내드립니다.
            </p>
            
            <!-- 입학절차 -->
            <h3 class="tit mt100"><strong>입학 절차 안내</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>
                        ① 온라인 원서접수 및 성적표 제출
                    </p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>
                        ② 강의 선택 및 학원 방문 실등록
                    </p>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!--입학절차 상세설명-->
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>온라인 원서접수 및 성적표 제출
                        <a href='https://russelmd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184' class="btn-gray-s ml_10">원서접수 바로가기</a>
                    </p>
                    <div class="box">
                        <ul class="list-04">
                            <li>반드시 학생 ID로 로그인하신 후 온라인 원서접수 진행 바랍니다.
                            </li>
                            <li>온라인 원서접수 시, 성적표 사진 파일 등록은 필수입니다. (미제출 시 “그린반”으로 배정됩니다.)</li>
                            <li><span class="red_txt">성적표 재제출로 인한 전형 변경은 첫 등원일 전까지만 가능합니다.</span></li>
                            <li>위조한 성적증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                            <li>온라인 원서접수 시, 성별 등 개인정보 오기입의 경우 추후 실등록이 불가할 수 있습니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>강의 선택 및 학원 방문 실등록
                    </p>
                    <div class="box">
                        <ul class="list-04">
                            <li>재학생 정규반 실등록은 <span class="red_txt">‘현장’</span>에서만 가능합니다.</li>
                            <li><span class="red_txt">원서접수를 완료한 학생, 학부모 대상으로 순차적으로 문자를 통해 입학 절차 안내가 이뤄집니다.</span></li>
                            <li><span class="red_txt">온라인 전형 접수를 하였더라도 기존 재원생 재등록 여부에 따라 대기 기간이 연장될 수 있습니다.</span></li>
                            <li>전형별 모집 요강에 따른 의무 T수를 충족 및 유지해야 합니다. (“T”는 주당 수업 시간 의미)</li>
                            <li>단과 수강 신청은 온라인 수강 신청 또는 현장 수강 신청이 가능합니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>유의사항</span>러셀 목동 이용 유의사항</p>
                    <div class="box">
                        <ul class="list-04">
                            <li><span class="red_txt">2관에서 자습이 진행되며, 기존생의 경우 자리 및 담임 변경이 있을 수 있습니다.
                            </span>
                            </li>
                            <li>승강반 제도에 의한 반 변경은 7월 / 10월에 진행됩니다. (6평 / 9평 반영 및 생활 태도 &amp; 벌점 반영)

                            </li>
                            <li>자습관 출석 일수 저조 시 강제 퇴원 조치가 진행되며 특이사항 발생 시, 담임 선생님과 상담 후 결정하셔야 합니다.</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--//입학절차 상세설명-->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100"><strong>모집요강 및 지원혜택</strong></h3>
            
                
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6753
            Else '실서버
                AGM_CD = 1835
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
            <!-- //모집요강 및 지원혜택 -->
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



