<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 연간 운영 계획 -->
            <p class="mb70"><img src="<%=Application("img_path_russel")%>/russel/2024/regular_go/cont00_tit01.png" alt="연간 운영 계획"></p>
            <table class="tbl-plan">
                <colgroup>
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                </colgroup>
                <thead>
                    <tr>
                        <th>모집대상</th>
                        <th>1월</th>
                        <th>2월</th>
                        <th class="on"><span>대기접수 진행중</span>3~6월</th>
                        <th>7~8월</th>
                        <th>9~11월</th>
                        <th>12월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>고2</td>
                        <td rowspan="2">윈터스쿨</td>
                        <td rowspan="2">윈터스쿨 PLUS</td>
                        <td colspan="3">-</td>
                        <td rowspan="2" style="border-bottom-right-radius:0;">Pre 윈터스쿨 <br><span class="fz14">[추후공개]</span></td>
                    </tr>
                    <tr>
                        <td>고3</td>
                        <td>정규반 <br>
                            <!-- <a href="https://russeldc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168" class="btn-gray-s" style="height:40px;padding:5px 25px;line-height:1.2;">원서접수<br>바로가기</a> -->
                        </td>
                        <td>썸머스쿨</span>
                        </td>
                        <td style="border-bottom-right-radius:0; border-right: 0;">정규반</td>
                    </tr>
                </tbody>
            </table>
            <ul class="list-02">
                <li>입학 시기에 따라 모집요강 및 지원혜택 상이함</li>
                <li>학원 사정에 따라 연간 운영계획은 변동될 수 있음  </li>
            </ul>

            <!-- 입학 절차 -->
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/russel/2024/regular_go/cont00_tit02.png" alt="입학 절차 안내"></p>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span> 학원으로 문의(02-2138-1010)</p>
                    </div>
                    <!-- <div class="step-list">
                        <p class="tit"><span>2</span> 합격자 발표</p>
                    </div> -->
                    <div class="step-list">
                        <p class="tit"><span>2</span> 강의 선택 및 결제</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span> 최종 등록</p>
                    </div>
                </div>
            </div>
            <div class="step-box">
                <p class="tit">1) 학원으로 문의(02-2138-1010)
                </p>
                <div class="box">
                    <!-- <ul class="shape-list">
                        <li>모집요강 지원자격 해당자 순 접수</li>
                        <li class="stxt">원서 접수 - 학원 홈페이지에서 ‘학생ID’로 로그인 
                        </li>
                        <li class="stxt">성적표 사진 첨부 - 2023, 2024년도 전국연합학력평가 성적 기준

                            <p style="padding-left:111px">- 탐구(2)는 탐구 2과목의 평균등급을 의미함  <br>
                            - 성적표 전체 이미지 업로드 필요</p>
                        </li>
                        <li>성적표 미 제출시 그린반 배정</li>
                        <li class="bold">★입학일 이후★ 성적표 변경 반영 불가능</li>
                    </ul> -->
                </div>
                <!--
                <p class="tit">2) 합격자 발표 (추후 안내)</p>
                <div class="box">
                    <ul class="shape-list">
                        <li class="stxt">원서 및 성적표 심사 후 합격자에 한해 등록 안내 (순차적 문자 발송)
                        </li>
                    </ul>
                </div> -->
                <p class="tit">2) 강의 선택 및 결제<a style="margin-left: 5px;" href="https://russeldc.megastudy.net/russel/teacher/teacher.asp" class="btn-gray-s">강의 선택 바로가기</a></p>
                <div class="box">
                    <ul class="shape-list">
                        <li class="stxt">바자관 반별 *최저 입학 기준 확인 필요</li>
                        <li class="stxt">학습 성향 및 수준, 바자관 반별 모집요강에 맞게 수강 희망 단과 등록</li>
                        <li class="stxt">마감 강좌 대기 중인 경우, 시수 미포함
                        </li>
                        <li class="stxt">최종 등록 전, 단과 강좌 변경 및 취소 가능</li>
                    </ul>
                </div>
                <p class="tit">3) 최종 등록</p>
                <div class="box fz16">
                    ■ 등록 방법 : 학원 내부 일괄처리 후 개별 안내
                    <ul class="shape-list">
                        <li class="stxt">개인별 단과 등록 총 합산 시수(T)에 따라 바자관 이용료 지원 혜택 적용</li>
                        <li class="stxt">최저 입학 기준 미달 시, 바자관 등록 및 정규반 이용 불가</li>
                        <li class="stxt">학원 문의는 러셀 대치 홈페이지 온라인 상담글 또는 전화(02-2138-1010) 가능</li>
                    </ul><br>
                    ■ 급식신청<br>
                    <ul class="shape-list">
                        <li class="stxt">급식 신청/취소는 식자재 수급 문제로 3일 전(일요일/공휴일 제외)까지만 가능</li>
                        <li class="stxt">[온라인 신청] - [급식식권]신청에서 신청 방법 확인</li>
                    </ul>
                    <br>
                    ■ OT 안내(추후 안내)
                    
                </div>
            </div>
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/russel/2024/regular_go/cont00_tit03.png" alt="모집요강 및 장학혜택"></p>

                
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 4441
            Else '실서버
                AGM_CD = 1490
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
            <!-- <div class="tobe type02 mt80">
                <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_tobe.png" alt="" /></div>
                <p>
                    러셀 대치 [재학생 정규반] 지원혜택은 <br>
                    추후 공개 예정입니다.
                </p>
            </div> -->
        </div>
    </div>
    <!-- //cont00 -->
</div>