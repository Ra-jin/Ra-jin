<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 연간 운영 계획 -->
            <h3 class="tit"><strong>연간 운영 계획</strong></h3>
            <table class="tbl-plan type02 p0">
                <colgroup>
                    <col style="width:12%">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                </colgroup>
                <thead>
                    <tr>
                        <th>모집대상</th>
                        <th>1~2월</th>
                        <!-- <th class="on">3~4월<span>현재 모집중</span></th> -->
                        <th>3~6월</th>
                        <th>7~8월</th>
                        <th>9~11월</th>
                        <th>11~12월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>고3</td>
                        <td rowspan="2">윈터스쿨</td>
                        <td rowspan="2">재학생 정규반</td>
                        <td rowspan="2">썸머스쿨</td>
                        <td rowspan="2">재학생 정규반</td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>고2</td>
                        <td>프리윈터스쿨</td>
                    </tr>
                </tbody>
            </table>
            <p class="plan-txt r-txt">
                * 학원의 사정에 따라 연간 운영 계획은 변동될 수 있으며, 변동 시 별도 안내드립니다.
            </p>
            <!-- 입학 절차 안내 -->
            <h3 class="tit mt100"><strong>입학 절차 안내</strong></h3>
            <ul class="a-process step-over full-step">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학상담/원서접수</p>
                    <ul class="list-04">
                        <li>방문/전화/온라인 상담</li>
                        <li>유선상담 062-462-1010</li>
                    </ul>
                    <a href="https://coregj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184" class="btn-gray-s mt10">원서접수 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>입학기준 확인 후<br>
                        성적표 제출</p>
                    <ul class="list-04">
                        <li>모의고사 또는 <br>
                            내신 증빙서류 제출</li>
                        <li>4층 입학팀 또는<br>
                            “러셀CORE 광주” <br>
                           카카오 채널로 제출</li>
                    </ul>
                    <a href="https://pf.kakao.com/_swxoCb" class="btn-gray-s mt15">성적표 제출 [바로가기]</a>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>단과 강의<br>
                        선택 및 결제</p>
                    <ul class="list-04">
                        <li>현장 또는 온라인 결제 가능</li>
                    </ul>
                    <ul class="list-02">
                        <li>선택한 수업은 개강 전<br>
                            까지 변경 및 취소 가능</li>
                    </ul>
                    <a href="https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1982" class="btn-gray-s mt15">정규·특강 단과 [바로가기]</a>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>재학생 정규반<br>
                        최종 등록</p>
                    <ul class="list-04">
                        <li>바른공부 자습전용관 등록<br>
                            (현장 또는 온라인 결제 가능)</li>
                    </ul>
                    <ul class="list-02">
                        <li>온라인 결제 희망할 경우<br>
                            카카오 채널로 문의</li>
                    </ul>
                    <a href="https://pf.kakao.com/_swxoCb" class="btn-gray-s mt15">카카오톡 문의</a>
                </li>
            </ul>
            <!-- //입학 절차 안내 -->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100"><strong>모집요강 및 지원혜택</strong></h3>
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6827
            Else '실서버
                AGM_CD = 1911
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

            <!-- //모집요강 및 지원혜택 -->
        </div>
    </div>
    <!-- //cont00 -->
</div>