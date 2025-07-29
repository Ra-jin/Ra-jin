<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_yt">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학절차 *** a-process 스텝이 4개 이상일 경우 'step-over'클래스 추가 / 가이드 참고해 주세요-->
            <h3 class="tit">러셀 영통 윈터스쿨 <strong>입학 절차 안내</strong></h3>
            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>원서접수 & 성적표 제출</p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>합격자 발표 <br> (11월 중 예정)</p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>온라인 강의 등록</p>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>온라인 최종 등록</p>
                </li>
            </ul>
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit">
                        <span>STEP 1</span>원서 접수 & 성적표 제출

                        <!-- 스케줄링작업 -->
                        <% If curYmdhmin < 202508061400 then %> <!-- ~2025-08-06(수) 14:00 이전 -->
                            <a class='bt-apply' href='javascript:alert(`★사전접수 8/6(수) 오후 2시~마감 시★\n※ 팝업 해제 필수\n※ 모집정원 내 해당자 순 접수`);'>사전 접수 바로가기</a>
                        <% Else %> <!-- 2025-04-22(화) 14:00:00~ -->
                            <a href="https://russelyt.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191" class="btn-gray-s ml_10">사전접수 바로가기</a>
                        <% End If %>
                        <!-- //스케줄링작업 -->

                    </p>
                    <div class="box">
                        <ul class="list-base">
                            <li>
                                ■ 사전 접수일 : 8/6(수) 오후 2시 ~ 마감 시, 온라인 대기 접수 <br>
                                ※ <b class="red_txt">윈터스쿨은 1/1(목) ~ 2/28(토) 59일 과정입니다. (59일 필수 이용)</b> <br> <br>

                                ■ 원서접수 방법 <br>
                                ① 러셀 영통 학원 홈페이지에서 ‘학생ID’ 로그인 <br> <br>

                                ② 성적표 사진 파일 업로드 <br>
                                - 평가 기준: <b>2025년 3, 6, 9월 전국연합학력평가(3, 6, 9월 中 1개) OR 직전 학기 내신 성적표</b>(jpg 또는 pdf 파일) <br> <br>

                                ※ 성적표 확인 후 반 편성이 확정되며, <b class="red_txt">모집요강에 부합하지 않는 성적표 제출 시 입학이 제한될 수 있습니다.</b> <br>
                                ※ 내신 성적표의 경우, 과목별 단위수와 석차 등급이 기재되어 있는 성적표만 유효합니다. <br>
                                ※ <b class="red_txt">9월 전국연합학력평가 성적에 따른 학반 변경 관련 사항은 사전예약자 대상으로 문자로 별도 안내드릴 예정입니다.</b> <br>
                                ※ <b class="red_txt">사전 접수 이후, 학년/성별/성적표/학반 등 정보 변경은 불가합니다.</b> <br>
                                <b>단, 9월 전국연합학력평가 성적표 제출 시, 공지된 일정 기간 내 학반 변경은 가능합니다. (별도 안내 예정)</b> <br> <br>

                                ③ 사전예약금 145,000원 결제 <br> <br>

                                ※ 결제창이 보이지 않을 경우, 팝업 허용 후 다시 원서접수 버튼을 눌러 결제까지 진행하시기 바랍니다. <br>
                                ※ 사전예약금 접수는 학생 계정으로 신청해 주셔야 유효합니다. (학부모님 계정 신청 불가) <br>
                                ※ 사전 예약금 미납 시, 사전 접수가 이루어지지 않습니다. <br>
                                ※ <b class="red_txt">마감 시, 온라인 대기 접수 가능합니다.</b> <a href="https://russelyt.megastudy.net/russel/info/waiting/list.asp?ClsCode=2" class="btn-gray-s ml_10">대기접수 바로가기</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>합격자 발표 (11월 중  예정)</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>원서 및 성적표 심사 후 합격자에 한해 실등록 관련 안내 (순차적 문자 발송)</li>
                            <li>반별 정원 및 접수자 순 합격자 개별 안내</li>
                            <li>합격자 발표일은 학원 사정에 따라 변동될 수 있습니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>온라인 강의 등록</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>반별 필수 수강 시수에 맞춰 강의 등록</li>
                        </ul>
                        <ul class="list-02">
                            <li class="red_txt bold">시간표 및 바자관 이용료는 추후 공지됩니다.</li>
                            <li>마감 강좌 대기 중인 경우, 시수는 포함되지 않습니다.</li>
                            <li>최종 등록 전, 단과 강좌는 변경 및 취소 가능합니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 4</span>온라인 최종 등록</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>강의 등록이 완료되면 '마이페이지'에서 바자관 등록</li>
                            <li>바자관 등록 확인 후, <b class="red_txt">사전예약금은 순차적으로 환불해 드립니다.</b> (요청 불필요)</li>
                            <li>개강 전 입학 취소 시, 사전예약금/자습관/단과 결제 비용은 전액 환불됩니다.</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- 모집요강 -->
            <h3 class="tit mt100">러셀 영통 윈터스쿨 <strong>모집 요강 및 지원 혜택</strong></h3>
            <div class="tbl-box type02">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 6959
                Else '실서버
                    AGM_CD = 2042
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

<!-- <script>
    $(function(){
        tabMenu('.bt-tab','.tbl-box .cont-box');
    })
</script> -->