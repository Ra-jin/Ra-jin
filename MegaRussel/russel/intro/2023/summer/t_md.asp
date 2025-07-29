<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">

            <!-- 사전 예약 안내 -->
            <p class="mb90"><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/summer/cont00_tit00.png" alt="썸머스쿨 사전 예약 안내"></p>
            <div class="reserv-box">
                <ul>
                    <li>
                        <p class="r-stit">1) 사전 예약 절차</p>
                        <div class="step">
                            <ul>
                                <li>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/summer/reserv_icon01.png" alt=""></div>
                                    <p>온라인<br>원서접수 작성</p>
                                </li>
                                <li>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/summer/reserv_icon02.png" alt=""></div>
                                    <p class="red_txt">단과 결제 및 실등록 안내<br>(6월 예정)
                                    </p>
                                </li>
                            </ul>
                            <p class="red_txt">(전형에 따라 모집인원은 상이 할 수 있습니다.)
                            </p>
                        </div>
                    </li>
                    <li>
                        <p class="r-stit">2)사전 예약 유의사항</p>
                        <ul class="list-02">
                            <li class="red_txt">반드시 학생 ID로 로그인 하신 후 온라인 전형 접수 진행 바랍니다.</li>
                            <li class="red_txt">온라인 전형 접수 시, 실성적표 사진 파일 등록은 필수입니다.</li>
                            <li class="red_txt">온라인 전형 접수 우선 등록을 하였더라도 전형별 인원에 따라 등록이 불가할 수 있습니다.</li>
                            <li>썸머스쿨은 전석 마감 및 대기자 접수 마감되었습니다.</li>
                            <li class="red_txt">전형별 대기 순번에 따라 순차적으로 연락 예정입니다.</li>
                            <li>위조한 성적증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                            <li>전형별 모집요강에 따른 의무 T수를 충족 및 유지해야 합니다. (“T”는 주당 수업 시간 의미)</li>
                            <li>단과 수강 신청은 온라인 수강 신청 또는 현장 수강 신청이 가능합니다.</li>
                        </ul>
                    </li>
                </ul>
            </div>

            <!-- 사전 예약 안내 -->
            
            <!-- 모집요강 및 장학혜택 -->
            <p class="mb90"><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/summer/cont00_tit01.png" alt="모집요강 및 장학혜택"></p>
             <!-- 모집요강 자동화 시스템 영역 -->
             <%
             '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
             If IsDevSvr() = true Then   '개발서버
                 AGM_CD = 1231
             Else '실서버
                 AGM_CD = 1253
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