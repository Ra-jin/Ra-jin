<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner02">
            <!-- 입학절차 및 유의사항 안내 -->
            <p class="mb90"><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/winter/cont00_tit01.png" alt=""></p>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span>온라인 원서 접수 및<br>사전 예약금 결제</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span>강의 선택 및 결제</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span>실물 성적표 제출 및 실등록</p>
                    </div>
                </div>
                <div class="step-box">
                    <p class="tit">1) 온라인 원서 접수 및 사전 예약금 결제 <a href="https://russelmd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158" class="btn-gray-s">대기자 접수 바로가기</a></p>
                    <div class="box">
                        <ul class="list-04 mt5">
                            <li>반드시 학생 ID로 로그인 하신 후 온라인 원서 접수 및 사전 예약금 결제 진행 바랍니다.</li>
                            <li>온라인 원서 접수 시, 성적표 사진 파일 등록은 필수입니다.</li>
                            <li class="red_txt">사전 예약금 (30만원)까지 결제하셔야 원서 접수가 완료됩니다.<br>
                            ※ 결제창이 보이지 않는 경우, 팝업 허용 후 다시 원서접수 버튼을 눌러서 진행해주시면 됩니다.</li>
                            <li>사전 예약금은 실등록 시 환불 또는 단과 수업 비용으로 대체됩니다.</li>
                            <li class="red_txt">전석 마감되었으며 현재 대기자 접수만 가능합니다.</li>
                            <li>실등록 완료 후에 대기자 분들께 순차적으로 유선 연락 예정입니다.</li>
                        </ul>
                    </div>
                    <p class="tit">2) 강의 선택 및 결제</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>전형별 모집요강에 따른 의무 T수를 충족 및 유지해야합니다. (“T”는 주당 수업 시간 의미)</li>
                            <li>단과 수강 신청은 온라인 수강 신청 또는 현장 수강 신청이 가능합니다.</li>
                            <li>윈터특강 시간표가 확정되면 추후 문자로 안내 예정입니다.</li>
                        </ul>
                    </div>
                    <p class="tit">3) 실물 성적표 제출 및 실등록</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>추후 실등록 시, 별도로 성적표 제출은 필수입니다.</li>
                            <li>미제출 시 고3은 ‘그린반’ 고2, 고1은 ‘블루반’으로 배정됩니다.</li>
                            <li>위조한 성적증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                            <li>실등록 일정은 사전 예약자분들께 추후 문자로 안내 예정입니다.</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- 모집요강 및 지원혜택 -->
            <p class="mt100 mb90"><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/winter/cont00_tit02.png" alt="모집요강 및 지원혜택"></p>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 2317
                Else '실서버
                    AGM_CD = 1343
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
            
            <!-- //모집요강 및 장학혜택 -->
        </div>
    </div>
  <!-- //cont00 -->
</div>