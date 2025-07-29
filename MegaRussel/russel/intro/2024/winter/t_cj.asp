<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 연간 운영 계획 -->
            <h3 class="tit">러셀CORE 청주 재학생 정규반 <strong>연간 운영 계획</strong></h3>
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
                        <th>2025년</th>
                        <th>1월</th>
                        <th>2월</th>
                        <th>3~6월</th>
                        <th>7~8월</th>
                        <th>9~11월</th>
                        <th>12월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="bg-gray">고3</td>
                        <td rowspan="3" colspan="2">윈터스쿨</td>
                        <td rowspan="3">정규반</td>
                        <td rowspan="3">썸머스쿨</td>
                        <td>파이널 정규반</td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td class="bg-gray">고2</td>
                        <td rowspan="2">정규반</td>
                        <td rowspan="2" style="border-radius: 0 0 10px 0;">프리<br>
                        윈터스쿨</td>
                    </tr>
                    <tr>
                        <td class="bg-gray" style="border-right: 0;border-radius: 0 0 0 10px;">고1</td>
                    </tr>
                </tbody>
            </table>
            <!-- 입학 절차 안내 -->
            <h3 class="mt100">2025 윈터스쿨 <strong>입학 절차 안내</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>온라인 원서접수</p>
                    <a class="bt-apply" href="https://corecj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173">원서접수 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>성적표 제출</p>
                    <span>성적표 제출 방식은<br>
                        추후 안내 예정</span>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>윈터스쿨 반 편성</p>
                    <span>성적표 확인 후<br>
                        최종 반 편성 진행
                    </span>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>단과 강의 수강신청</p>
                    <span>반 편성에 따른<br>
                        수강 강좌 수 확인</span>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p class="fz20 bold">2025 윈터스쿨<br>
                        최종 등록 확인</p>
                    <span>개강 전 사전 OT 필수참여
                    </span>
                </li>
            </ul>
            <!-- //입학 절차 안내 -->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit">2025 윈터스쿨 <strong>모집요강 및 지원혜택</strong></h3>

            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5673
            Else '실서버
                AGM_CD = 1753
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