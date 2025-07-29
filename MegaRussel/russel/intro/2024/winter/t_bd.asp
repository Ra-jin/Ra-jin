<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 등록 절차 -->
            <h3 class="tit">2025 윈터스쿨 <strong>등록 절차</strong></h3>
            <div class="step-wrap">
                <div class="step-box" style="border-radius: 20px;">
                    <p class="tit mt0">[1] 온라인 원서 접수 (성적표 제출) <a href="https://russelbd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173" class="btn-gray-s ml_10">온라인 대기 접수 </a></p>
                    <div class="box">
                        <p class="fz18 fw400">- 접수 방법 : 온라인 원서 접수 후 성적표 등록</p>
                        <p class="fz18 fw400">- 성적표 기준 : 2024학년도 시행 전국 연합모의고사 중 택1</p>
                        <ul class="list-02 mt5 ml10">
                            <li>반드시 학생 정보로 회원가입 후 로그인하여 접수해야 합니다. (학부모 정보로 접수 시 인정 불가)
                            </li>
                            <li>성적표 미 제출 시 반 배정이 불가하여 이후 입학 절차를 진행할 수 없습니다.</li>
                            <li>학생 정보 및 성적 확인이 불가한 성적표, 가채점 성적표는 인정되지 않습니다.</li>
                            <li class="red_txt">모의고사 전형으로 지원하는 경우 최초 원서 접수 시 3/6월 중 1개의 모의고사 성적표는 필수 제출이며, 9/10월 모의고사 성적으로 반 변경을 희망하는 경우 아래 기한 내 제출 시에만 적용 가능합니다.<br>
                                <span class="gray02"><strong>[성적표 변경 제출 기한]</strong> 9월 모의고사: ~10/15(화), 10월 모의고사: ~11/15(금)</span></li>
                        </ul>
                    </div>
                    <p class="tit">[2] 사전 등록금 납부</p>
                    <div class="box">
                        <p class="fz18 fw400">- 납부 방법 : 온라인 원서 접수 후 자동 연결되는 결제 페이지에서 진행
                        </p>
                        <p class="fz18 fw400">- 사전 등록금 비용 : 63만원
                        </p>
                        <ul class="list-02 mt5 ml10">
                            <li>사전 등록금을 납부해야 온라인 원서 접수 절차가 완료됩니다.
                            </li>
                            <li>결제가 되지 않는 경우, 카카오톡 채널 [러셀 분당학원] 또는 [편리한 온라인] - [온라인 1:1 문의하기]를 이용하여 문의해주시면 안내 드리겠습니다.</li>
                            <li class="red_txt">사전 등록금은 1월 바자관 비용으로 대체되며, 모집요강에 따라 차액금이 발생할 경우 윈터스쿨 개강 이후 환급 받을 수 있습니다. 
                            </li>
                        </ul>
                    </div>
                    <p class="tit">[3] 단과 수업 선택 및 최종 등록 (모집요강 및 시간표 공개 이후)
                    </p>
                    <div class="box">
                        <p class="fz18 fw400">- 등록 방법 : 러셀 분당 홈페이지 또는 학원 방문 접수
                        </p>
                        <ul class="list-02 mt5 ml10">
                            <li>러셀 분당 모든 단과 수업은 윈터스쿨 이용과 관계없이 수강할 수 있습니다.
                            </li>
                            <li> 2025년 단과 시간표 공개 및 등록 일정은 추후 공지 예정입니다
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- //등록 절차 -->
            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100">2025 윈터스쿨 <strong>모집요강 및 지원혜택</strong></h3>
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5619
            Else '실서버
                AGM_CD = 1698
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