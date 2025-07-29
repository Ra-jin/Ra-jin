<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00" style="background:#f8f8f8;">
        <div class="inner">

            <p class="mb70"><img src="<%=Application("img_path_russel")%>/russel/2024/first/cont00_tit01.png" alt="입학 절차 안내"></p>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span> 원서접수/성적표 제출</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span> 강의 선택 및 결제</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span> 최종 등록</p>
                    </div>
                </div>
            </div>
            <div class="step-box">
                <p class="tit">1) 원서 접수 / 성적표 제출
                    <!-- <a style="margin-left: 5px;" href="https://russeldc.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=163" class="btn-gray-s">대기자 원서접수 바로가기</a> -->
                </p>
                <div class="box">
                    <ul class="shape-list">
                        <li class="stxt">원서 접수 - 학원 홈페이지에서 ‘학생ID’로 로그인 
                        </li>
                        <li class="stxt">성적표 사진 첨부 - 2024학년도 수능, 평가원 성적 기준
                            <p style="padding-left:111px">- 탐구(1)은 탐구 1과목을 의미함 <br>
                            - 성적표 전체 이미지 업로드 필요</p>
                        </li>
                    </ul>
                </div>
                <p class="tit">2) 강의 선택 및 결제</p>
                <div class="box">
                    <ul class="shape-list">
                        <li class="stxt">사전에 바자관 반별 *최저 입학기준 확인 필요</li>
                        <li class="stxt">학습 성향 및 수준, 바자관 반별 모집요강에 맞게 수강 희망 단과 선택과 등록 (마감 강좌 대기 중인 경우, 시수에 포함되지 않음)</li>
                        <li class="stxt">최종 등록 전, 단과 강좌 변경 및 취소 가능</li>
                    </ul>
                </div>
                <p class="tit">3) 최종 등록</p>
                <div class="box">
                    ■ 등록 방법 : 학원 내부 일괄처리 후 개별 안내
                    <ul class="shape-list">
                        <li class="stxt">학원 문의는 러셀 대치 홈페이지 온라인 상담글 또는 전화(02-2138-1010) 가능</li>
                        <li class="stxt">개인별 단과 등록 총 합산 시수(T)에 따라 자습전용관 지원혜택은 상이함</li>
                        <li class="stxt">바자관 등록 전, 단과 수업 등록 필수</li>
                        <li class="stxt">*최저입학기준 미달 시, 바자관 등록 및 윈터스쿨 이용 불가</li>
                        <li class="stxt">개인별 단과 등록 총 합산시수(T)에 맞춰 바자관 이용료 지원</li>
                    </ul>
                    ■ 급식 신청(선택)<br>
                    
                    ■ O,T 안내(추후 별도 공지)
                    
                </div>
            </div>
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/russel/2024/first/cont00_tit02.png" alt="모집요강 및 장학혜택"></p>

            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 4396
            Else '실서버
                AGM_CD = 1443
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
    <!-- //cont00 -->
</div>