<div class="cont js-cont">
    <div class="cont00 gn bg-lgray">
        <div class="inner02">
            <!-- 러셀 강남 모집안내 -->
            <p class="mb90"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular/cont00_tit01.png" alt=""></p>
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
                    <p class="tit">1) 2024 N수 정규반 원서접수 <a href="https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=148" class="btn-gray-s">온라인 원서 접수 바로가기</a></p>
                    <div class="box">
                        <ul class="shape-list">
                            <li>원서접수자 중 모집요강 기준에 따라 순차적으로 입학 안내드립니다.</li>
                        </ul>
                    </div>
                    <p class="tit">2) 성적표 제출 <a href="http://pf.kakao.com/_hKnRb" class="btn-gray-s">성적표 제출하기</a></p>
                    <div class="box">
                        <ul class="shape-list">
                            <li>원서접수를 완료한 학생, 학부모 대상으로 성적표 제출 방법 안내 드립니다. <span class="red_txt">(러셀 강남 입학처 플친 추가 후 파일 전송)</span>
                            </li>
                            <li>문서 번호가 작성된 성적증명서 제출은 필수이며, 위조한 성적증명서로 판명될 경우 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                        </ul>
                    </div>
                    <p class="tit">3) 최종 등록</p>
                    <div class="box">
                        <p class="step-tit">모집요강 확인 및 단과 수강 신청 (결제) <a href="https://russelgn.megastudy.net/russel/info/notice/notice_view.asp?Code=25371&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1" class="btn-gray-s">시간표 보러가기</a></p>
                        <ul class="shape-list">
                            <li>단과 수강 신청은 온라인 수강 신청 또는 학원 방문 신청으로 진행됩니다.</li>
                            <li>입학 전형(반)에 따른 단과 필수 수강 시수 신청(결제)은 필수이며, 미충족시 입학이 불가합니다.</li>
                            <li>단과 신청 완료 후 학원으로 유선 연락을 통해 최종 등록(입학) 안내 받으실 수 있습니다.</li>
                            <li><strong class="blue2">급식 이용 시 등원일 3일 전(평일 기준)까지 등록을 완료해 주시기 바랍니다.</strong><br>(예시 : 월요일 등원 시, 전주 수요일까지 등록해야 월요일 급식 예약 가능)</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- //러셀 강남 모집안내 -->

            <p class="mt90 mb90"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular/cont00_tit02.png" alt=""></p>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 1095
                Else '실서버
                    AGM_CD = 118
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