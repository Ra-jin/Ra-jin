<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_yt">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학절차 -->
            <h3 class="tit">러셀 영통 썸머스쿨 <strong>입학 절차 안내</strong></h3>
            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>원서접수 &amp; 성적표 제출<span style="color: #0F6FFF;">(마감)</span></p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>합격자 발표<br>
                    (6/16(월) 예정)</p>
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
            <!-- //입학절차 -->
            <!--입학절차 상세설명-->
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>원서접수 &amp; 성적표 제출<strong style="color: #0F6FFF;" class="bold2">(마감)</strong>

                        <!-- 스케줄링작업 -->
                        <% If curYmdhmin < 202504221400 then %> <!-- ~2025-04-22(화) 13:59:59 -->
                            <a href="javascript:alert('사전 접수는 4/22(화) 오후 2시부터입니다. *팝업해제 필수*');" class="btn-gray-s ml_10">원서접수 바로가기</a>
                        <% Else %> <!-- 2025-04-22(화) 14:00:00~ -->
                            <a href="https://russelyt.megastudy.net/russel/info/waiting/list.asp?ClsCode=2" class="btn-gray-s ml_10">온라인 대기 바로가기 </a>
                        <% End If %>
                        <!-- //스케줄링작업 -->
                    </p>
                    <div class="box">
                        <ul class="list-col">
                            <li>■ 사전 접수일 :
                            </li>
                        </ul>
                        <ul class="list-base">
                            <li>-  4/22(화) 오후 2시</li>
                            <li>※ 마감 시, 온라인 대기 접수</li>
                        </ul>
                        <ul class="list-col mt20">
                            <li>■ 유의사항
                            </li>
                        </ul>
                        <ul class="list-04">
                            <li>사전 접수는 사전예약금(145,000원) 결제 순으로 진행되었으며, 현재 마감되어 온라인으로 대기 신청해주시기 바랍니다.</li>
                            <li>예약금을 납부한 사전접수자들에 한하여 실등록 안내 예정입니다. (사전예약금: 실등록 시 환불되는 금액)</li>
                            <li class="red_txt">개인정보 오입력 혹은 전형에 해당하는 증빙서류 미제출 시 입학이 제한될 수 있습니다.</li>
                            <li class="red_txt">사전 접수 이후, 학년/학반/성적표 등의 등록된 정보는 변경이 불가합니다. </li>
                            <li>대기자는 사전접수자 등록 완료 후 잔여석에 따라 순차적으로 안내 예정입니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>합격자 발표 : 6/16(월) 예정 (실등록 관련 안내 문자 발송)
                    </p>
                    <div class="box">
                        <ul class="list-04">
                            <li>원서 및 성적표 심사 후 합격자에 한해 등록 안내 (순차적 문자 발송)
                            </li>
                            <li>반별 정원 및 접수자 순 합격자 개별 안내</li>
                            <li>합격자 발표일은 학원 사정에 따라 변동될 수 있습니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>온라인 강의 등록</p>
                    
                    <div class="box">

                        <ul class="list-04">
                            <li>반별 필수 수강 시수에 맞춰 강의 등록
                            </li>
                        </ul>
                        <ul class="list-02">
                            <li>썸머특강 시간표는 추후 공지 예정입니다.
                            </li>
                            <li>마감 강좌 대기 중인 경우, 시수는 포함되지 않습니다.</li>
                            <li>최종 등록 전, 단과 강좌는 변경 및 취소 가능합니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 4</span>온라인 최종 등록</p>
                    <div class="box">
                        
                    <ul class="list-04">
                        <li>강의 등록이 완료되면 ‘마이페이지’에서 바자관 등록
                        </li>
                        <li>바자관 등록 확인 후, <span class="red_txt">사전 예약금은 순차적으로 환불해 드립니다.</span> (요청 불필요)</li>
                        <li><span class="red_txt">개강 전 입학 취소 시, 사전 예약금/자습관/단과 결제 비용은 전액 환불됩니다.</span></li>
                    </ul>
                    </div>
                </div>
            </div>
            <!--//입학절차 상세설명-->

            <!-- 모집요강 -->
            <h3 class="tit mt100">러셀 영통 썸머스쿨 <strong>모집 요강 및 지원 혜택</strong></h3>
            
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6886
            Else '실서버
                AGM_CD = 1969
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
    <!-- //cont00 -->
</div>

<!-- <script>
    $(function(){
        tabMenu('.bt-tab','.tbl-box .cont-box');
    })
</script> -->