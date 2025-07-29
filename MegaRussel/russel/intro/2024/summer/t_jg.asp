<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            
            <!-- 입학절차 -->
            <h3 class="tit">러셀 중계 썸머스쿨 <strong>입학 절차 안내</strong></h3>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span>온라인 원서 접수 <br> 및 사전예약금 결제</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span>단과 수업 선택 및 결제 </p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span>성적표 제출</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>4</span>최종 등록</p>
                    </div>
                </div>
                <div class="step-box">
                    <p class="tit">1) 온라인 접수 및 사전예약금 결제
                        <% if curYmdhmin < 202404291400 then %>
                        <!-- 중계 원서 접수 바로가기 4월 29일 14시 전-->
                        <a class="bt-apply" href="javascript:alert(`신규생 썸머스쿨 사전예약은 4/29(월) 14시부터 가능합니다.`);">원서접수 바로가기</a>
                        <% else %>
                        <!-- 4월 29일 14시 후 반영 -->
                        <!-- <a class="bt-apply" href="https://russeljg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166">원서접수 바로가기</a> -->
                        <% end if %>
                    </p>
                    <div class="box">
                        <p class="fz16 bold">① 접수 기간 </p>
                        <ul class="list-04 mt5">
                            <li>바른공부 자습전용관 재원생 : 4/24(수) ~ 4/28(일)까지 (*조기마감 주의)</li>
                            <li>신규생 : 4/29(월) 14시 ~ 마감 시까지 </li>
                        </ul>
                        <p class="fz16 bold mt10">② 접수 방법 </p>
                        <ul class="list-04 mt5">
                            <li>바른공부 자습전용관 재원생 : 현장 접수(온라인 접수 불가)</li>
                            <li>신규생 : 온라인 원서 접수 후, 사전예약금 결제</li>
                        </ul>
                        <p class="fz16 bold mt10">③ 사전예약금 비용 : 144,000원</p>
                        <ul class="list-02 mt10">
                            <li>학생 정보로 회원 가입 후, 로그인 바랍니다. (학부모님 정보로 등록 불가)</li>
                            <li class="red_txt bold">온라인 원서 접수 후, 사전예약금 결제창은 팝업창으로 안내됩니다. <br>
                                결제창이 보이지 않을 경우, 팝업 허용 후 다시 원서접수 버튼 클릭해주시기 바랍니다.
                            </li>
                            <li>사전예약금까지 결제 완료해야, ‘2024 썸머스쿨’ 사전예약이 완료됩니다.</li>    
                        </ul>
                        <ul class="list-04 mt0">
                            <li>사전예약금이 미결제된 경우, 사전예약이 미완료된 상태이므로 추후 마감 시, 등록이 불가 할 수 있습니다. </li>
                        </ul>
                        <ul class="list-02 mt0">
                            <li>사전예약금은 최종 등록 후, 전액 환불 됩니다. </li>
                        </ul>
                    </div>
                    <p class="tit">2) 단과 수업 선택 및 결제</p>
                    <div class="box">
                        <ul class="list-04 mt0">
                            <li>등록 방법 : 온라인 또는 학원 방문 접수</li>
                            <li>등록 비용 : 단과 수업에 따라 상이</li>
                        </ul>
                        <ul class="list-02 mt10">
                            <li>썸머스쿨 시간표가 최종 확정되면, 필수 수강 시수에 따른 강의 등록 안내 드립니다.</li>
                        </ul>
                    </div>
                    <p class="tit">3) 성적표 제출</p>
                    <div class="box">
                        <ul class="list-04 mt10">
                            <li>성적표 : 학년별 성적표 제출 기준이 상이하므로, ‘2024 썸머스쿨’ 모집요강 확인해주시기 바랍니다. </li>
                            <li>성적표 제출 : <span class="underline">최종 등록 시, 학원 방문하여 <strong class="red_txt bold">성적표 사본(출력물) 제출(필수)</strong></span></li>
                        </ul>
                        <ul class="list-02 mt10">
                            <li>제출 가능한 성적표(예) : 전국연합학력평가 성적표</li>
                        </ul>
                        <ul class="list-04 mt0">
                            <li>학교에서 출력한 성적표의 경우, 담임선생님 서명 또는 학교 직인이  찍혀 있어야 인정됩니다. </li>
                        </ul>
                        <ul class="list-02 mt10">
                            <li>제출 불가한 성적표(예) : 꼬리표, 리로스쿨 출력본, 수기(오피스) 편집, 인정사항 확인 불가한 성적표</li>
                        </ul>
                    </div>
                    <p class="tit">4) 최종 등록 </p>
                    <div class="box">
                        <ul class="list-04 mt10">
                            <li>최종 등록은 <strong class="underline red_txt">6/18(화) 14시부터 진행 될 예정</strong>이며, 사전예약금 결제한 학생/학부모님께 최종 등록 관련 안내드립니다. (SMS 안내 발송)</li>
                            <li>최종 등록 후, 사전예약금 전액 환불됩니다. </li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100">러셀 중계 썸머스쿨 <strong>모집요강 및 지원혜택</strong></h3>
            <div class="tbl-box">
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5506
            Else '실서버
                AGM_CD = 1589
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
</div>