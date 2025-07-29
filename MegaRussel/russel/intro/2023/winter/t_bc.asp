<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner02">
            <!-- 연간 운영 계획 -->
            <p class="mb60"><img src="<%=Application("img_path_russel")%>/russel_bc/2023/winter/cont00_tit01.png" alt=""></p>
            
            <table class="tbl-plan">
                <colgroup>
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                </colgroup>
                <thead>
                        <tr>
                        <th>2024년</th>
                        <th>1월</th>
                        <th class="on">2월<span>현재 모집 중</span></th>
                        <th>3~6월</th>
                        <th>7~8월</th>
                        <th class="br_1">9~11월</th>
                        <th>11~12월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>고3</td>
                        <td rowspan="4" class="f-finish">윈터스쿨<span>※종료</span></td>
                        <td rowspan="4">윈터스쿨 PLUS</td>
                        <td>정규반</td>
                        <td rowspan="4">썸머스쿨</td>
                        <td colspan="2">정규반</td>
                    </tr>
                    <tr>
                        <td>고2</td>
                        <td rowspan="2">[고2&middot;고1] 수시/<br>내신 집중반<br>[고2] 정시집중반</td>
                        <td rowspan="2" colspan="2">[고2&middot;고1] 수시/내신 집중반<br>[고2] 정시집중반</td>
                    </tr>
                    <tr>
                        <td class="row">고1</td>
                    </tr>
                    <tr>
                        <td>중3</td>
                        <td>-</td>
                        <td>정규반</td>
                        <td>Pre 윈터스쿨</td>
                    </tr>
                </tbody>
            </table>

            <!-- 입학 절차 -->
            <p class="mt100 mb60"><img src="<%=Application("img_path_russel")%>/russel_bc/2023/winter/cont00_tit02.png" alt=""></p>
            <p class="txt mb20">
                ※ <strong>반드시 ‘학생’ 계정으로 진행</strong>해야 하며 학생 계정이 아닐 경우 사전예약이 취소됩니다. <br>
                ※ 원서접수는 최초 입학 시 한번만 하시면 됩니다. (예: 1월 윈터스쿨 재원생은 2월 윈터스쿨 플러스 원서접수 불필요 / 재등록 별도 안내)
            </p>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span> 윈터스쿨 PLUS 원서 접수</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span> <strong class="tac bold2">성적표 제출</strong></p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span> 최종 등록</p>
                    </div>
                </div>
                <div class="step-box">
                    <p class="tit">1) 윈터스쿨 PLUS 원서 접수(현장 또는 유선 접수)</p>
                    <div class="box">
                        <ul class="mb10">
                            <li>- 1월 재원생의 2월 재등록 완료 후 윈터스쿨 플러스 원서 접수자분들께 문자 등을 통해 입학 절차 안내가 이뤄집니다.</li>
                        </ul>
                    </div>
                    <p class="tit">2) 성적표 제출 <a href="https://pf.kakao.com/_sFgGxj" class="btn-gray-s ml_10">성적표 제출하기</a></p>
                    <div class="box">
                        <ul class="mb10">
                            <li class="red_txt">- 문서 번호가 작성된 성적증명서 제출 (성적 기입 및 성적표 이미지 업로드)은 필수입니다. (온라인 모의고사 성적 적용 불가)</li>
                        </ul>
                        <ul class="shape-list">
                            <li class="red_txt"><b>성적표 제출 방법 : 성적표 제출하기 버튼 클릭 > 러셀 부천학원 채널 추가 > 상담원 채팅 > 성적표 이미지 파일 전송</b></li>
                            <li>성적 증빙 자료를 제출하지 않을 경우, 그린반으로 배정됩니다. (*정원 5% 이내 선발 예정)</li>
                        </ul>
                    </div>
                    <p class="tit">3) 최종 등록</p>
                    <div class="box">
                        <ul class="mb10">
                            <li>- 모집요강 확인</li>
                            <li>- 단과 필수 수강 시수 확인</li>
                            <li>- 수업 선택 및 최종 등록</li>
                        </ul>
                    </div>
                </div>
                <div class="campus-basic-wrap mt20">
                    <p>[성적 반영 기준]</p>
                    1. 모의고사 성적 : 2023년에 시행한 전국연합학력평가 3월, 6월, 9월 중 택1<br>
                    2. 내신 성적
                    <ul class="list-04 pl20">
                        <li>2024년 고3(현 고2) : 1학년 1학기 부터~2학년 1학기까지 ‘원점수, 평균, 표준편차, 석차등급’이 기재된 모든 교과목 반영</li>
                        <li>2024년 고2(현 고1) : 1학년 1학기 ‘원점수, 평균, 표준편차, 석차등급’이 기재된 모든 교과목 반영</li>
                        <li>2024년 고1(현 중3) : ① 성적우수자 전형 : 중학교 3학년 1학기 국/수/영 성취도 모두 A<br>
                                                <span style="padding-left:117px;">② 성적우수자 전형에 해당하지 않는 학생 (정원 5% 이내 선발 예정)</span></li>
                        <li>2023년 중3(현 중2) : 정원 5% 이내 선발 예정</li> 
                    </ul>
                    ※ 온라인 모의고사 성적은 적용 불가합니다.
                </div>
            </div>
                
            <!-- 모집요강 및 장학혜택 -->
            <p class="mt100 mb90"><img src="<%=Application("img_path_russel")%>/russel_bc/2023/winter/cont00_tit03.png" alt="모집요강 및 장학혜택"></p>
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 2322
            Else '실서버
                AGM_CD = 1346
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