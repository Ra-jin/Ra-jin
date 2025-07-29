<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner02">
            <!-- 입학절차 안내 -->
            <p class="mb90"><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/winter/cont00_tit01.png" alt="입학절차"></p>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list pb20">
                        <p class="tit mb0">
                            <span>1</span>온라인 원서 접수<br>(성적표 제출)
                            <ul>
                                <li>① 온라인 원서 접수</li>
                                <li>② 사전 예약금 결제</li>
                            </ul>
                        </p>
                    </div>
                    <div class="step-list pb20">
                        <p class="tit mb0"><span>2</span>사전 등록금 납부</p>
                    </div>
                    <div class="step-list pb20">
                        <p class="tit mb0">
                            <span>3</span>단과 수업 선택 및<br>최종 등록
                            <ul>
                                <li>① 모집요강 확인</li>
                                <li>② 단과 필수 수강 시수 확인</li>
                                <li>③ 단과 수강 신청 (결제)</li>
                            </ul>
                        </p>
                    </div>
                </div>
                <div class="step-box">
                    <p class="tit">1) 온라인 원서 접수 (성적표 제출) <a href="https://russelbd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158" class="btn-gray-s ml_10">온라인 대기 신청</a></p>
                    <div class="box">
                        <ul class="list-bar pb10">
                            <li>접수 방법 : 온라인 원서 접수 후 성적표 등록</li> 
                            <li>성적표 기준 :  2023년 3월, 6월, 9월 전국연합모의고사 중 택 1
                            </li>
                        </ul>
                        <ul class="list-02">
                            <li>2023년 11월 전국연합모의고사는 12월에 진행되어 성적 기준에 적용하지 않습니다.</li>
                            <li>학생 정보로 회원 가입 후 로그인해야 합니다. (학부모 정보로 접수 시 인정 불가)</li>
                            <li>성적표 미 제출 시, 반 배정이 불가하여 이후 입학 절차를 진행할 수 없습니다.</li>
                            <li>학생 정보 및 성적 확인이 불가한 성적표, 가채점 성적표는 인정되지 않습니다.</li>
                        </ul>
                    </div>
                    <p class="tit">2) 사전 등록금 납부</p>
                    <div class="box">
                        <ul class="list-bar">
                            <li>납부 방법 : 온라인 원서 접수 완료 후 자동 연결되는 결제 페이지에서 진행</li>
                            <li>사전 등록금 비용 : 62만원</li>
                        </ul>
                        <ul class="list-02">
                            <li>사전 등록금을 납부하면 온라인 원서 접수가 완료됩니다.</li>
                            <li>결제가 되지 않는 경우, 온라인 1:1 문의하기를 이용해주시면 안내 드리겠습니다.</li>
                            <li class="red_txt">사전 등록금은 1월 바자관 비용으로 대체되며, 모집요강에 따라 차액금이 발생할 경우 윈터스쿨 개강 이후 환급받을 수 있습니다.</li>
                        </ul>
                    </div>
                    <p class="tit">3) 단과 수업 선택 및 최종 등록 (시간표 공개 이후)</p>
                    <div class="box">
                        <ul class="list-bar">
                            <li>등록 방법 : 온라인 혹은 학원 방문 접수</li>
                        </ul>

                        <ul class="list-02">
                            <li>러셀 분당 모든 단과 수업은 윈터스쿨 이용과 관계없이 수강할 수 있습니다.</li>
                            <li class="red_txt">2024년 단과 시간표 공개 및 등록 일정은 추후 공지합니다.</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- 모집요강 및 지원혜택 -->
            <p class="mt100 mb90"><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/winter/cont00_tit02.png" alt="모집요강 및 지원혜택"></p>

            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 2346
                Else '실서버
                    AGM_CD = 1367
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