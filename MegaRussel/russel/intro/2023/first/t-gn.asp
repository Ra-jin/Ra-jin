<div class="cont js-cont">
    <div class="cont00 gn bg-lgray">
        <div class="inner02">
            <!-- 러셀 강남 모집안내 -->
            <p class="mb90"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/first/cont00_tit01.png" alt=""></p>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span> 온라인 원서접수</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span> 성적표 제출</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span> 최종 등록</p>
                    </div>
                </div>
                <div class="step-box">  
                    <p class="tit">1) 2024 재수생 우선선발반 원서접수 <a href="https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=147" class="btn-gray-s">온라인 원서 접수 바로가기</a></p>
                    <div class="box">
                        <ul class="shape-list">
                            <li>온라인 원서접수를 완료한 학생, 학부모 대상으로 문자 등을 통해 입학 절차 안내가 이뤄집니다.</li>
                            <li>아래 모집요강 확인 후 해당하는 반으로 원서접수해 주세요.</li>
                        </ul>
                    </div>
                    <p class="tit">2) 성적표 제출</p>
                    <div class="box">
                        <ul class="shape-list">
                            <li>원서접수를 완료한 학생, 학부모 대상으로 성적표 제출 방법 안내 예정입니다.</li>
                            <li>문서 번호가 작성된 성적증명서 제출은 필수이며, 위조한 성적증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                        </ul>
                    </div>
                    <p class="tit">3) 최종 등록</p>
                    <div class="box">
                        <p class="step-tit">모집요강 확인 및 단과 수강 신청 (결제) <strong class="fz16 red_txt pl10">단과 수강 신청 :</strong> <a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1224" class="btn-gray-s">1월 정규/특강</a></p>
                        <ul class="shape-list">
                            <li>단과 수강 신청은 온라인 수강 신청 또는 학원 방문 신청으로 진행됩니다.</li>
                            <li>입학 전형(반)에 따른 단과 필수 수강 시수 신청(결제)은 필수이며, 미충족시 입학이 불가합니다.</li>
                            <li>단과 신청 완료 후 학원으로 유선 연락을 통해 최종 등록(입학) 안내 받으실 수 있습니다.</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- //러셀 강남 모집안내 -->
            
            <p class="mt90 mb90"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/first/cont00_tit02.png" alt=""></p>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 1066
                Else '실서버
                    AGM_CD = 89
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