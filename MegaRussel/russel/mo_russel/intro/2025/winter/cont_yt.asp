<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->


<div class="recruit-wrap">
    <div class="inner">
        <!-- 입학 절차 -->
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>원서접수 & <br>성적표 제출</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>합격자 발표<br>
                (11월 중 예정)</span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>온라인 강의<br>
                등록</span>
            </li>
            <li>
                <div><strong>4</strong></div>
                <span>온라인 최종<br>등록</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 원서접수 & 성적표 제출

                    <!-- 스케줄링작업 -->
                    <% If curYmdhmin < 202508061400 then %> <!-- ~2025-08-06(수) 14:00 이전 -->
                        <a class="bt-gray-s ml10" onclick="alert('★사전접수 8/6(수) 오후 2시~마감 시★\n※ 팝업 해제 필수\n※ 모집정원 내 해당자 순 접수');">사전접수 바로가기</a>
                    <% Else %> <!-- 2025-08-06(수) 14:00~ -->
                        <a class="bt-gray-s ml10" onclick="alert('사전 접수는 PC 페이지에서 가능합니다.'); location.href='https://russelyt.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191'">사전접수 바로가기 </a>
                    <% End If %>
                    <!-- //스케줄링작업 -->
                </p>
                <p class="recruit-stit m0 mb5 f16">사전 접수일 : 8/6(수) 오후 2시 ~ 마감 시, 온라인 대기 접수</p>
                <ul class="list-bullet m0">
                    <li class="color-red bold">윈터스쿨은 1/1(목) ~ 2/28(토) 59일 과정입니다. (59일 필수 이용)</li>
                </ul>
                <p class="recruit-stit mb5 f16">원서접수 방법</p>
                <ul class="list-base m0 mt0">
                    <li>
                        ① 러셀 영통 학원 홈페이지에서 ‘학생ID’ 로그인 <br> <br>

                        ② 성적표 사진 파일 업로드 <br>
                        - 평가 기준: 2025년 3, 6, 9월 전국연합학력평가(3, 6, 9월 中 1개) OR 직전 학기 내신 성적표(jpg 또는 pdf 파일) <br> <br>

                        ※ 성적표 확인 후 반 편성이 확정되며, <b class="color-red f14">모집요강에 부합하지 않는 성적표 제출 시 입학이 제한될 수 있습니다.</b> <br>
                        ※ 내신 성적표의 경우, 과목별 단위수와 석차 등급이 기재되어 있는 성적표만 유효합니다. <br>
                        ※ <b class="color-red f14">9월 전국연합학력평가 성적에 따른 학반 변경 관련 사항은 사전예약자 대상으로 문자로 별도 안내드릴 예정입니다.</b> <br>
                        ※ <b class="color-red f14">사전 접수 이후, 학년/성별/성적표/학반 등 정보 변경은 불가합니다.</b> <br>
                        단, 9월 전국연합학력평가 성적표 제출 시, 공지된 일정 기간 내 학반 변경은 가능합니다. (별도 안내 예정) <br> <br>

                        ③ 사전예약금 145,000원 결제 <br> <br>

                        ※ 결제창이 보이지 않을 경우, 팝업 허용 후 다시 원서접수 버튼을 눌러 결제까지 진행하시기 바랍니다. <br>
                        ※ 사전예약금 접수는 학생 계정으로 신청해 주셔야 유효합니다. (학부모님 계정 신청 불가) <br>
                        ※ 사전 예약금 미납 시, 사전 접수가 이루어지지 않습니다. <br>
                        ※ <b class="color-red f14">마감 시, 온라인 대기 접수 가능합니다.</b><a class="bt-gray-s ml10" onclick="alert('대기 접수는 PC 페이지에서 가능합니다.'); location.href='https://russelyt.megastudy.net/russel/info/waiting/list.asp?ClsCode=2'">대기접수 바로가기</a>
                    </li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">2) 합격자 발표 (11월 중 예정)</p>
                <ul class="list-bar m0 mt0">
                    <li>원서 및 성적표 심사 후 합격자에 한해 실등록 관련 안내 (순차적 문자 발송)</li>
                    <li>반별 정원 및 접수자 순 합격자 개별 안내</li>
                    <li>합격자 발표일은 학원 사정에 따라 변동될 수 있습니다.</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 온라인 강의 등록</p>
                <ul class="list-bar m0 mt0">
                    <li>반별 필수 수강 시수에 맞춰 강의 등록</li>
                </ul>
                <ul class="list-bullet m0 mt10">
                    <li class="color-red bold">시간표 및 바자관 이용료는 추후 공지됩니다.</li>
                    <li>마감 강좌 대기 중인 경우, 시수는 포함되지 않습니다.</li>
                    <li>최종 등록 전, 단과 강좌는 변경 및 취소 가능합니다.</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">4) 온라인 최종 등록</p>
                <ul class="list-bar m0 mt0">
                    <li>강의 등록이 완료되면 '마이페이지'에서 바자관 등록</li>
                    <li>바자관 등록 확인 후, <b class="color-red bold f14">사전예약금은 순차적으로 환불해 드립니다.</b> (요청 불필요)</li>
                    <li>개강 전 입학 취소 시, 사전예약금/자습관/단과 결제 비용은 전액 환불됩니다.</li>
                </ul>
            </div>
        </div>


        <!-- 모집 요강 및 지원 혜택 -->
        <p class="recruit-tit"><strong>모집 요강 및 지원 혜택</strong></p>
        <div class="tbl-box p0">
            <!-- 모집 요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6960
            Else '실서버
                AGM_CD = 2043
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
            <!-- //모집 요강 자동화 시스템 영역 -->
        </div>
    </div>
</div>