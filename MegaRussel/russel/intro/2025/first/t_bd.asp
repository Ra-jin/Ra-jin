<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<!--첫번째 타이틀만 margin-top 140px(mt140), 나머지는 모두 margin-top 100px(mt100)로 클래스 추가 필수-->
<!--스페셜 페이지 있을 경우, 첫번째 타이틀에 margin-top 클래스 삭제-->
<div class="cont js-cont russel_bd">
    
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학절차 -->
            <h3 class="tit mt140"><strong>입학 절차</strong></h3>
            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>온라인 원서 접수 <br> (성적표 제출)</p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>단과 수업 및 결제</p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>바자관 비용 및<br>
                        학습 콘텐츠 결제 
                    </p>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>재수생 우선선발반<br>최종 등록</p>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!--입학절차 상세설명-->
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>온라인 원서 접수 (성적표 제출)
                        <% if curYmdhmin < 202411151400 then %>
                        <% Else %> 
                        <a href="https://russelbd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179" class="btn-gray-s ml_10">원서접수 바로가기</a>
                        <% End If %>
                    </p>
                    <div class="box">
                        <ul class="list-04">
                            <li>접수 방법 : 온라인 원서 접수 후 성적표 등록</li>
                        </ul>
                        <ul class="list-02">
                            <li>반드시 학생 정보로 회원가입 후 로그인하여 접수해야 합니다. (학부모 정보로 접수 시 인정 불가)</li>
                            <li>성적표 미 제출 시 반 배정이 불가하여 이후 입학 절차를 진행할 수 없습니다.</li>
                            <li>원서 접수 순으로 등록 안내 문자가 발송됩니다.
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>단과 수업 선택 및 결제

                    </p>
                    <div class="box">
                        <ul class="list-04">
                            <li>등록 방법 : 러셀 분당 홈페이지 또는 학원 방문 접수 
                            </li>
                        </ul>
                        <ul class="list-02">
                            <li>러셀 분당 모든 단과 수업은 재수생 우선선발반 이용과 관계없이 수강할 수 있습니다.
                            </li>
                            <li>모집요강에 따른 의무 시수를 충족하여야 재수생 우선선발반 등록이 가능합니다.</li>
                            <li>대기 중인 강좌는 시수에 포함되지 않습니다.</li>
                            <li>홈페이지 단과 중 [온라인 접수 마감]으로 되어있는 단과 결제는 카카오톡 채널 [러셀 분당학원]으로 문의 남겨주시면 결제 안내 드리겠습니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>바자관 비용 및 학습 콘텐츠 결제
                    </p>
                    <div class="box">
                        <ul class="list-04">
                            <li>결제 방법 : 러셀 분당 홈페이지 또는 학원 방문 접수 
                            </li>
                        </ul>
                        <ul class="list-02">
                            <li>온라인 결제는 카카오톡 채널 [러셀 분당학원]으로 문의 남겨주시면 결제 안내 드리겠습니다.
                            </li>
                            <li>의무 시수 미달 시, 재수생 우선선발반 등록이 불가합니다.</li>
                            <li>바자관 학습 콘텐츠는 홈페이지에서 온라인 결제만 가능합니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 4</span>재수생 우선선발반 최종 등록</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>STEP 1 ~ STEP 3을 완료한 학생 및 학부모님에게는 등록 완료 안내 문자를 발송합니다.
                            </li>
                            <li>입학일 전, 급식 및 등원 관련 안내 문자가 발송됩니다.</li>
                            <li>등원 후 빠른 학원 적응을 위한 오리엔테이션을 진행합니다.</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--//입학절차 상세설명-->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100"><strong>모집요강 및 장학혜택</strong></h3>
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5700
            Else '실서버
                AGM_CD = 1778
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

            <div class="tbl-box coming-box mt100">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_arrimi.png" alt="" /></p>
                    <p class="arrimi-txt">
                        학원 문자 알리미에 정보를 등록해 주시면 <br>
                        누구보다 빠르게 러셀 분당 2026 재수생 우선선발반 소식을 받으실 수 있습니다. <br>
                        <a class="btn-arrimi mt20" href="javascript:fncAlarmPop();">학원 문자 알리미 신청하기</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- //cont00 -->
</div>