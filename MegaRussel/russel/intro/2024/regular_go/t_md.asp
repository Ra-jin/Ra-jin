<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 연간 운영 계획 -->
            <p class="mb70"><img src="<%=Application("img_path_russel")%>/russel_mokdong/2024/regular_go/cont00_tit01.png" alt="연간 운영 계획"></p>
            <table class="tbl-plan">
                <colgroup>
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                </colgroup>
                <thead>
                    <tr>
                        <th>1~2월</th>
                        <th>3~6월</th>
                        <th>7~8월</th>
                        <th>9~11월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>윈터스쿨</td>
                        <td>재학생 정규반</td>
                        <td>썸머스쿨</td>
                        <td>파이널 <br> 재학생 정규반</td>
                    </tr>
                </tbody>
            </table>
            <p class="plan-txt txt_right">
                * 학원의 사정에 따라 연간 운영 계획은 변동될 수 있으며, 변동 시 별도 안내드립니다.
            </p>
            
            <!-- 입학 절차 안내 -->
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/russel_mokdong/2024/regular_go/cont00_tit02.png" alt="입학 절차 안내"></p>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span>온라인 원서 접수</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span>학원 방문 등록 & 자습관 등록 신청서 작성</p>
                    </div>
                </div>
                <div class="step-box">
                    <p class="tit">1) 온라인 원서 접수 <a href="https://russelmd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168" class="btn-gray-s ml_10">원서접수 바로가기</a></p>
                    <div class="box">
                        <ul class="list-04 mt5">
                            <li>반드시 학생 ID로 로그인 하신 후 온라인 원서 접수 진행 바랍니다.</li>
                            <li>온라인 원서 접수 시, 성적표 사진 파일 등록은 필수입니다. (미제출 시 ‘그린반’으로 배정됩니다.)</li>
                            <li>온라인 원서 접수 시, 성별 등 개인정보 오기입의 경우 추후 실등록이 불가할 수 있습니다.</li>
                            <li class="red_txt">원서접수를 완료한 학생, 학부모 대상으로 유선 연락 및 문자를 통해 입학 절차 안내가 이뤄집니다.</li>
                            <li class="red_txt">기존 재원생 재등록 여부에 따라 대기 시간이 길어질 수 있습니다. (8월 중순 순차적으로 유선 연락 예정)</li>
                        </ul>
                    </div>
                    <p class="tit">2) 학원 방문 등록 & 자습관 등록 신청서 작성</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>재학생 정규반 실등록은 <span class="red_txt">‘현장’에서만</span> 가능합니다.</li>
                            <li class="red_txt">성적표 재제출로 인한 전형 변경은 첫 등원일 전까지만 가능합니다. (이후 어떠한 사유로도 변경 불가능)</li>
                            <li>위조한 성적 증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                            <li>단과 수강 신청은 온라인 수강 신청 또는 현장 수강 신청이 가능합니다.</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- 모집요강 및 지원혜택 -->
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/russel_mokdong/2024/regular_go/cont00_tit03.png" alt="모집요강 및 장학혜택"></p>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 4421
                Else '실서버
                    AGM_CD = 1470
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