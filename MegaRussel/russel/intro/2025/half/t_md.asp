<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont russel_mokdong">
    <!-- <div class="cont00 type02">
        <div class="inner">
            <!-- 특별혜택 >
            <p><img src="<%=Application("img_path_russel")%>/russel_mokdong/2025/half/event_img.png" alt=""></p>
            <!-- //특별혜택 >
        </div>
    </div> -->
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학절차 -->
            <h3 class="tit">입학 절차 안내</h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>온라인 원서 접수 및 성적표 제출</p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>강의 선택 및 학원 방문 실등록</p>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!--입학절차 상세설명-->
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>온라인 원서 접수 및 성적표 제출
                        <a href="https://russelmd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187" class="btn-gray-s ml_10">원서접수 바로가기</a>
                    </p>
                    <div class="box">
                        <ul class="list-04">
                            <li>반드시 학생 ID로 로그인 하신 후 온라인 원서 접수 진행 바랍니다.</li>
                            <li>온라인 원서 접수 시, 증빙 서류 등록은 필수입니다. <strong class="red_txt">(대학교 전형 - 재학증명서 / 모의고사 및 내신 전형 - 성적표 및 재학증명서)</strong></li>
                            <li>위조한 증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                            <li class="red_txt">성적표 재제출로 인한 전형 변경은 첫 등원일 전까지만 가능합니다.</li>
                            <li>온라인 원서 접수 시, 학년 및 성별 등 개인정보 오기입의 경우 추후 실등록이 불가할 수 있습니다.</li>
                            <li><span class="red_txt">입학 성적과 관계 없이 입학 시 [2025 수능] 성적표는 별도 추가 제출하셔야 합니다.</span> (*성적 상담 시 필수 자료입니다.)</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>강의 선택 및 학원 방문 실등록</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>반수반 실등록은 <span class="red_txt">‘현장’</span>에서만 가능합니다.</li>
                            <li class="red_txt">원서 접수를 완료한 학생, 학부모 대상으로 순차적으로 문자를 통해 입학 절차 안내가 이뤄집니다.</li>
                            <li class="red_txt">온라인 전형 접수를 하였더라도 기존 재원생 재등록 여부에 따라 대기 기간이 연장될 수 있습니다.</li>
                            <li>단과 수강 신청은 온라인 수강 신청 또는 현장 수강 신청이 가능합니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>유의사항</span>러셀 목동 이용 유의사항</p>
                    <div class="box">
                        <ul class="list-04">
                            <li class="red_txt">자습은 2관 재학생 전용관에서 진행됩니다.</li>
                            <li class="red_txt">여름방학 기간 (7~8월) 및 2학기 휴학의 경우 [N수 정규반] 지원혜택으로 진행됩니다.</li>
                            <li>자습관 출석 일수 저조 시 강제 퇴원 조치가 진행되며 특이사항 발생 시, 담임 선생님과 상담 후 결정하셔야 합니다.</li>
                            <li>승강반 제도에 의한 반 변경은 4월 / 7월 / 10월에 진행됩니다. <span class="underline">(HS반은 월 1회 별도 강반 심사가 진행됩니다.)</span></li>
                            <li>바자관 지원혜택은 수능 이후 합격 대학 정보 제공 동의를 위한 혜택으로 제공됩니다.</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--//입학절차 상세설명-->

            <!-- 모집요강 -->
            <h3 class="tit mt100">2026 반수반 <strong>모집요강 및 지원혜택</strong></h3>
 
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6840
            Else '실서버
                AGM_CD = 1921
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