<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_md">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학절차 -->
            <h3 class="tit"><strong>입학 절차 안내</strong></h3>
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

                        <% if curYmdhmin < 202501021000 then %>
                        <a href='javascript:alert(`1/2(목) 오전 10시부터 온라인으로 가능합니다.`);' class="btn-gray-s ml_10">온라인 원서접수 바로가기</a>
                        <% Else %>
                            <% If InStr(LCase(fncRequestVariables("HTTP_HOST")) ,"dev.megastudy.net") > 0 Then 'next server%>
                            <!-- 개발 서버 -->
                            <a href="https://devrussel.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=4169" class="btn-gray-s ml_10">온라인 원서접수 바로가기</a>
                            <% Else %>
                            <!-- 실서버 -->
                            <a href="https://russelmd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180" class="btn-gray-s ml_10">온라인 원서접수 바로가기</a>
                            <% End If %>
                        <% End If %>
                    </p>
                    <div class="box">
                        <ul class="list-03">
                            <li>반드시 학생 ID로 로그인하신 후 온라인 원서접수 진행 바랍니다.
                            </li>
                            <li>온라인 원서접수 시, 성적표 사진 파일 등록은 필수입니다. (미제출 시 “그린반”으로 배정됩니다.)</li>
                            <li>위조한 성적증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                            <li><span class="red_txt">성적표 재제출로 인한 전형 변경은 첫 등원일 전까지만 가능합니다.</span></li>
                            <li>온라인 원서접수 시, 학년 및 성별 등 개인정보 오기입의 경우 추후 실등록이 불가할 수 있습니다.</li>
                            <li><span class="red_txt">입학 성적과 관계없이 입학 시 [2025 수능] 성적표는 별도 추가 제출하셔야 합니다.</span> (* 성적 상담 시 필수 자료입니다)</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>강의 선택 및 학원 방문 실등록
                    </p>
                    <div class="box">
                        <ul class="list-03">
                            <li>N수 정규반 등록은 <span class="red_txt">‘현장’</span>에서만 가능합니다.</li>
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
                        <ul class="list-03">
                            <li><span class="red_txt">평일 월~금 '오전/오후' 시간 러셀 목동학원 이용 필수 (단, 타 학원/과외의 경우 담임선생님 협의 후 인정)</span>
                            </li>
                            <li><span class="red_txt">타 학원/과외는 평일 저녁/주말 이용 권장</span>
                            </li>
                            <li>3월부터 주 4일 이상 자습관 출석해야 합니다. (주 6일 기준) / 특이사항 발생 시, 담임 선생님과 상담 후 결정하셔야 합니다.
                            </li>
                            <li>3월 기준, 전체 자리 및 담임 재배정이 진행됩니다.
                            </li>
                            <li>
                                <span class="red_txt"> HS 전용관은 3월부터 운영될 예정이며, HS 1반 재원생에게 우선권이 부여됩니다.<br>
                                    : HS 1반 中 입학 순서에 따라 HS관으로 좌석 변동 후, 남은 좌석은 HS 2반 입학 순서대로 배정됩니다.</span>

                            </li>
                            <li>승강반 제도에 의한 반 변경은 4월 / 7월 / 10월에 진행됩니다.
                                <span class="underline">(HS반은 월 1회 별도 강반 심사가 진행됩니다.)</span></li>
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
                AGM_CD = 6736
            Else '실서버
                AGM_CD = 1818
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



