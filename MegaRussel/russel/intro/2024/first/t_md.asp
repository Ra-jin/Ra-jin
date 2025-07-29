<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <div class="cont00-1">
        <div class="inner">
            <div><img src="<%=Application("img_path_russel")%>/russel_mokdong/2024/first/event_md_01.jpg" alt=""></div>
        </div>
    </div>
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학 절차 안내 -->
            <p class="mb70"><img src="<%=Application("img_path_russel")%>/russel_mokdong/2024/first/cont00_tit01.png" alt=""></p>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span>학원 방문 &amp;<br>
                        자습관 등록 신청서 작성
                        </p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span>성적표 제출<br>
                        및 실등록</p>
                    </div>
                </div>
                <div class="step-box">
                    <p class="tit">1) 학원 방문 &amp; 자습관 등록 신청서 작성</p>
                    <div class="box">
                        <ul class="list-04 mt5">
                            <li><span class="red_txt">전반 마감 및 대기자 접수도 마감되었습니다.</li>
                            <li>잔여석 발생 시, 현장 등록 가능 대상자는 문자 발송 및 유선 연락 예정입니다.</li>
                            <li>재수생 우선선발반 등록은 <span class="red_txt">‘현장’에서만</span> 가능합니다.</li>
                            <li><span class="red_txt">성적표도 같이 지참</span>해서 방문해주셔야 합니다.</li>
                        </ul>
                    </div>
                    <p class="tit">2) 성적표 제출 및 실등록</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>성적표 제출은 필수입니다. (미제출 시 “그린반”으로 배정됩니다.)</li>
                            <li class="red_txt">성적표 재제출로 인한 전형 변경은 12/30(토)까지만 가능합니다.</li>
                            <li>위조한 성적증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                            <li>전형별 모집요강에 따른 의무 T수를 충족 및 유지해야 합니다. (“T”는 주당 수업 시간 의미)</li>
                            <li>단과 수강 신청은 온라인 수강 신청 또는 현장 수강 신청으로 가능합니다.</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- 모집요강 및 지원혜택 -->
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/russel_mokdong/2024/first/cont00_tit02.png" alt="모집요강 및 지원혜택"></p>

            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 3374
            Else '실서버
                AGM_CD = 1399
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