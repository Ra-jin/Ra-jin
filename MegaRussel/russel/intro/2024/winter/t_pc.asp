<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학 절차 안내 -->
            <h3>2025 윈터스쿨 <strong>입학 절차 안내</strong></h3>		  
           
            <!-- 2024-09-27(금) 00:00이후  -->
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit" style="align-items: center;"><span>1</span>대기 접수<br>
                        [예약금 결제 완료 시 접수 완료]</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span>성적표 제출</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span>단과 수업 선택 및 결제</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>4</span>최종 등록</p>
                    </div>
                </div>
                <div class="step-box">
                    <p class="tit mt0">1) 대기 접수 [예약금 결제 완료 시 접수 완료]<a class="bt-apply" style="background: #FB4911;" href="https://russelpc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173">대기 접수 바로가기  </a></p>
                    <div class="box">                       
                        <ul class="shape-list mt10">
                            <li>학생 정보로 회원 가입 후, 로그인(접수) 바랍니다 * 학부모님 정보로 접수가 불가합니다</li>
                        </ul>
                        <ul class="shape-list mt10">
                            <li>온라인 원서 접수 후, 대기예약금 결제창은 팝업 안내됩니다</li>
                            <li>결제창이 보이지 않을 경우, 팝업 허용 후 다시 원서접수 버튼 클릭해주시기 바랍니다</li>
                            <li class="red_txt">대기예약금 150,000원 결제 완료 시 대기예약이 완료됩니다 <br>
                                예약금 미납 시 접수된 원서는 자동 취소 처리됩니다
                            </li>
                        </ul>
                        <ul class="shape-list mt10">
                            <li>대기 접수자는 여석 발생 시 순차적으로 안내가 될 예정입니다 <br>
                                학원 번호 차단 시 누락되는 정보에 관하여 책임을 지지 않습니다 (러셀 평촌 : 031-341-6500)
                            </li>
                        </ul>
                    </div>
                    <p class="tit">2) 성적표 제출</p>
                    <div class="box">
                        <ul class="shape-list">
                            <li>성적표 : 학년별 성적표 제출 기준이 상이하므로, 아래 ‘2025 윈터스쿨’ 모집요강 확인해주시기 바랍니다</li>
                            <li>성적표 제출 : 사전 예약 완료 시 성적표 제출 안내 문자가 발송됩니다 <span class="red_txt">(문자 내 링크로 제출 필수)</span> </li>
                            <li>제출 불가한 성적표(예) : 꼬리표, 수기(오피스) 편집, 인정사항 확인 불가한 성적표</li>
                        </ul>
                    </div>
                    <p class="tit">3) 단과 수업 선택 및 결제</p>
                    <div class="box">
                        <ul class="shape-list">
                            <li>등록 방법 : 온라인 또는 학원 방문 접수</li>
                            <li>등록 비용 : 단과 수업에 따라 상이 </li>
                        </ul>
                        <ul class="list-03">
                            <li>&nbsp;윈터스쿨 시간표가 최종 확정되면, 필수 수강 시수에 따른 강의 등록 안내 드립니다.</li>
                        </ul>
                    </div>
                    <p class="tit">4) 최종 등록</p>
                    <div class="box">
                    </div>
                </div>
            </div>

            <!-- //입학 절차 안내 -->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100">2025 윈터스쿨<br>
            <strong>모집요강 및 바른공부 자습전용관 지원혜택</strong></h3>
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5623
            Else '실서버
                AGM_CD = 1702
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

            <!-- //모집요강 및 장학혜택 -->
        </div>
    </div>
</div>