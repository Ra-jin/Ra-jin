<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->


<div class="recruit-wrap">
    <div class="inner">
        <!-- 입학 절차 -->
        <p class="recruit-tit">입학 절차 안내</p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>원서 접수</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>성적표 제출</span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>강의 선택 <br>및 결제</span>
            </li>
            <li>
                <div><strong>4</strong></div>
                <span>최종 등록</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 원서 접수 <a class="bt-gray-s ml10" onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'">원서접수 바로가기</a> </p>
                <ul class="list-bullet m0 mt0">
                    <li>원서접수를 완료한 학생, 학부모 대상으로 문자를 통해 입학 절차가 안내됩니다.
                    </li>
                </ul>
            </div>
            
            <div class="step-txt">
                <p class="step-tit">2) 성적표 제출<a href="https://pf.kakao.com/_hKnRb" class="bt-gray-s ml10">성적표 제출하기</a></p>
                <ul class="list-bullet m0 mt0">
                    <li>원서접수 후, <span class="txt-blue f14">성적표 제출하기 버튼 클릭 > 러셀 강남 입학처 카카오톡 추가 > 상담원 채팅 > 성적표 이미지 파일을 전송해주시기 바랍니다.</span></li>
                    <li>문서 번호가 작성된 성적증명서 제출은 필수이며, 위조한 성적증명서로 판명될 경우 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                    <li class="txt-blue">성적표 미제출 시 그린 전형으로 배정됩니다.</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 강의 선택 및 결제</p>
                <ul class="list-bullet m0 mt0">
                    <li>성적표 제출 후 반편성이 완료되면, 강의 필수 수강 조건에 해당하는 경우 강의를 등록합니다. (필수 수강 시수 미충족 시 입학 불가)</li>
                    <li>시간표 페이지에서 강의 선택 후 온라인 결제해주시면 됩니다.</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">4) 최종 등록</p>
                <ul class="list-bullet m0 mt0">
                    <li>강의 등록 여부 확인 후 최종 등록 안내 드립니다.</li>
                    <li class="color-red">개강 전 입학 취소 시 바자관 및 단과 결제 비용은 전액 환불됩니다.</li>
                </ul>
            </div>
        </div>

        <!-- 모집요강 및 지원혜택 -->
        <p class="recruit-tit">모집요강 및 지원혜택</p>

            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6755
            Else '실서버
                AGM_CD = 1837
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
<!-- <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179';" class="bt-gray-s ml10">원서 접수 바로가기</a> -->
