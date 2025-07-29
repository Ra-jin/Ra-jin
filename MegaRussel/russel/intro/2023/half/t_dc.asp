<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00 dc">
        <div class="inner02">
            <!-- <p class="mb90"><img src="<%=Application("img_path_russel")%>/russel/2023/half/cont00_tit01.png" alt="러셀 대치 모집요강 및 장학혜택"></p> -->
            
            <!-- 등록 안내 -->
            <p class="mb90"><img src="<%=Application("img_path_russel")%>/russel/2023/half/cont00_tit02.png" alt="러셀 대치 모집요강 및 장학혜택"></p>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span> 온라인 원서접수</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span> 단과 수업 선택 및 등록</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span> 최종 등록</p>
                    </div>
                </div>
                <div class="step-box">
                    <p class="tit">1) 온라인 원서 접수 <a href="https://russeldc.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=155" class="btn-gray-s">원서접수 바로가기</a></p>
                    <div class="box">
                        <ul class="shape-list">
                            <li>'학생ID' 로 로그인 - 2024 반수반 원서 접수</li>
                            <li>
                                유의사항<br> 
                                :학생이름으로 반드시 원서접수 해야합니다 학부모님 이름으로 원서접수 시 누락됩니다.
                             </li>
                             <li>
                                합격자 발표<br> 
                                :접수된 서류 심사 후 합격자에 한해 등록 안내 (문자 발송)
                             </li>
                        </ul>
                    </div>
                    <p class="tit">2) 단과 수업 선택 및 등록 (등록방법 - 학원 홈페이지)</p>
                    <div class="box">
                        <ul class="shape-list">
                            <li> 학습 성향 및 수준, 반별 모집요강에 맞게 수강 희망 단과 선택과 등록</li>
                            <li> 최종 등록 전, 단과 강좌 변경 및 취소 가능</li>
                            <li> 해당 월 개강일이 지난 강좌는 현장에서 등록 가능</li>
                            <li> 대기중인 강좌는 시수에 포함되지 않음</li>
                        </ul>
                    </div>
                    <p class="tit">3) 최종 등록 (등록방법 - 현장 방문 또는 학원 문의)</p>
                    <div class="box">
                        <!-- <p class="step-tit">모집요강 확인 및 단과 수강 신청 (결제) </p> -->
                        <ul class="shape-list">
                            <li> 학원 문의는 러셀 대치 홈페이지 온라인 상담글이나 학원 전화로 가능 (02-2138-1010)</li>
                            <li> 개인별 단과 등록 총 합산 시수(T)에 따라 자습전용관 지원혜택은 상이함</li>
                            <li> 온라인 원서 접수 시 성적표 미제출인 경우 등록 불가</li>
                            <li> 최근 성적표 위조가 급증함에 따라 입학 후 담임선생님께 성적 증명서 추가 제출 必</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- //등록 안내 -->

            <!-- 모집요강 및 장학혜택 -->
            <p class="mt90 mb90"><img src="<%=Application("img_path_russel")%>/russel/2023/half/cont00_tit01.png" alt="러셀 대치 모집요강 및 장학혜택"></p>
            <div class="tbl-box">
                 <!-- 모집요강 자동화 시스템 영역 -->
                 <%
                 '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                 If IsDevSvr() = true Then   '개발서버
                     AGM_CD = 1222
                 Else '실서버
                     AGM_CD = 1244
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