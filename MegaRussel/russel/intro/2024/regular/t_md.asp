<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학 절차 안내 -->
            <p class="mb70"><img src="<%=Application("img_path_russel")%>/russel_mokdong/2024/regular/cont00_tit01_1.png" alt=""></p>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span>온라인 원서 접수
                        </p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span>강의 선택 및 결제</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span>학원 방문 &amp; 성적표 제출 및 실등록 </p>
                    </div>
                </div>
                <div class="step-box">
                    <p class="tit">1) 온라인 원서 접수<a class='bt-apply' href='https://russelmd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164'>대기자 접수 바로가기</a></p>
                    <div class="box">
                        <ul class="list-04 mt5">
                            <li>반드시 학생 ID로 로그인 하신 후 온라인 원서 접수 진행 바랍니다.</li>
                            <li>온라인 원서 접수 시, 성적표 사진 파일 등록은 필수입니다.</li>
                            <li>온라인 원서 접수 시, 성별 등 개인정보 오기입의 경우 추후 실등록이 불가할 수 있습니다.</li>
                            <li>원서접수를 완료한 학생, 학부모 대상으로 문자를 통해 입학 절차 안내가 이뤄집니다.</li>
                            <li><strong class="red_txt">여석 발생 시, 전형별 대기 접수 순서대로 문자 혹은 유선 안내 드리겠습니다.</strong></li>
                            <li><strong class="red_txt">입학 성적과 관계 없이 입학 시 [2024 수능] 성적표는 별도 추가 제출하셔야 합니다.</strong> (* 성적 상담 시 필수 자료입니다)</li>
                        </ul>
                    </div>
                    <p class="tit">2) 강의 선택 및 결제</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>전형별 모집요강에 따른 의무 T수를 충족 및 유지해야합니다. (“T”는 주당 수업 시간 의미)</li>
                            <li>단과 수강 신청은 온라인 수강 신청 또는 현장 수강 신청이 가능합니다.</li>
                        </ul>
                    </div>
                    <p class="tit">3) 학원 방문 & 성적표 제출 및 실등록</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>N수 정규반 등록은 <b class="red_txt">‘현장’</b> 에서만 가능합니다.</li>
                            <li><b class="red_txt">성적표 제출은 필수입니다.</b> (미제출 시 “그린반”으로 배정됩니다.)</li>
                            <li class="red_txt bold">성적표 재제출로 인한 전형 변경은 첫 등원일 전까지만 가능합니다.</li>
                            <li>위조한 성적증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                            <li><strong class="red_txt">입학 성적과 관계 없이 입학 시 [2024 수능] 성적표는 별도 추가 제출하셔야 합니다.</strong> (* 성적 상담 시 필수 자료입니다)</li>
                            <li>전형별 모집 요강에 따른 의무 T수를 충족 및 유지해야합니다. (“T”는 주당 수업 시간 의미)</li>
                            <li>단과 수강 신청은 온라인 수강 신청 또는 현장 수강 신청이 가능합니다.</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- 모집요강 및 지원혜택 -->
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/russel_mokdong/2024/regular/cont00_tit02_1.png" alt="모집요강 및 지원혜택"></p>
            
                
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 4417
            Else '실서버
                AGM_CD = 1464
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
  <!-- //cont00 -->
</div>