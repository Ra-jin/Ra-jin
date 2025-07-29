<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->


<div class="recruit-wrap">
    <div class="inner">
        <!--연간 운영 계획-->
        <p class="recruit-tit"><strong>연간 운영 계획</strong></p>
        <table class="tbl-plan-new typeA">
            <colgroup> 
                <col style="width:30%">
                <col style="width:%">
            </colgroup>
            <tbody>
                <tr>
                    <th>1월</th>
                    <td>윈터스쿨</td>               
                </tr>
                <tr>
                    <th>2월</th>
                    <td>윈터스쿨 PLUS</td>
                </tr>
                <tr>
                    <th><span>현재 모집 중</span> <br>3~6월</th>
                    <td>재학생 최상위권반</td>
                </tr>
                <tr>
                    <th>7~8월</th>
                    <td>썸머스쿨</td>
                </tr>
                <tr>
                    <th>9~11월</th>
                    <td>
                        [고3] 파이널 정규반 <br>
                        [고2] 재학생 최상위권반
                    </td>
                </tr>
                <tr>
                    <th>11~12월</th>
                    <td>
                        [중3] 고등 대비반
                    </td>
                </tr>
            </tbody>
        </table>
        <p class="color-gray-03 f11 text-align-right mt10">
            ※ 입학 시기에 따라 모집요강 및 지원혜택이 다릅니다.<br>
            입학 시기에 해당하는 모집요강을 확인해주시기 바랍니다. <br>
            ※ 원서접수는 최초 입학 시 한번만 하시면 됩니다.<br>
            (예 : 1월 재원생은 2월 원서접수 불필요 / 재등록 별도 안내)            
        </p>


        <!-- 입학 절차 -->
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
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
                <span>강의 등록 <br>(선택 사항)</span>
            </li>
            <li>
                <div><strong>4</strong></div>
                <span>최종 등록</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 원서 접수<a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184'" class="bt-gray-s ml10">원서접수 바로가기</a></p>
                <ul class="list-bullet m0 mt0">
                    <li>원서 접수를 완료한 학생, 학부모 대상으로 문자를 통해 입학 절차가 안내됩니다.</li>
                </ul>
            </div>
    
            <div class="step-txt">
                <p class="step-tit">2) 성적표 제출<a href="https://pf.kakao.com/_hKnRb" class="bt-gray-s ml10">성적표 제출하기</a></p>
                <ul class="list-bullet m0 mt0">
                    <li>원서 접수 후, <span class="txt-green f14">성적표 제출하기 버튼 클릭 > 러셀 강남 입학처 카카오톡 추가 > 상담원 채팅 > 성적표 이미지 파일을 전송해주시기 바랍니다.</span></li>
                    <li>문서 번호가 작성된 성적증명서 제출은 필수이며, 위조한 성적증명서로 판명될 경우 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                    <li class="txt-green">성적표 미제출 시 그린 전형으로 배정됩니다.</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 강의 등록 <span class="fz14">(선택사항)</span></p>
                <ul class="list-bullet m0 mt0">
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
        <p class="recruit-tit"><strong>모집요강 및 지원혜택</strong></p>

        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6818
        Else '실서버
            AGM_CD = 1898
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
