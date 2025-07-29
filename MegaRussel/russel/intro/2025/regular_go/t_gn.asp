<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont russel_gn">
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
                        <th>1월</th>
                        <th>2월</th>
                        <th class="on">3~6월<span>현재 모집중</span></th>
                        <th>7~8월</th>
                        <th>9~11월</th>
                        <th>11~12월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>윈터스쿨</td>
                        <td>윈터스쿨 PLUS</td>
                        <td>재학생 최상위권반<br>
                            <a href="https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184">원서접수</a>
                        </td>
                        <td>썸머스쿨</td>
                        <td>[고3] 파이널 정규반<br>
                            [고2] 재학생 최상위권반
                        </td>
                        <td>[중3] 고등 대비반
                        </td>
                    </tr>
                </tbody>
            </table>
            <p class="plan-txt r-txt">
                ※ 입학 시기에 따라 모집요강 및 지원혜택이 다릅니다. 입학 시기에 해당하는 모집요강을 확인해주시기 바랍니다.<br>
                ※ 원서접수는 최초 입학 시 한번만 하시면 됩니다. (예 : 1월 재원생은 2월 원서접수 불필요 / 재등록 별도 안내)
            </p>
            <!-- 입학절차 -->
            <h3 class="tit mt100"><strong>입학 절차 안내</strong></h3>
            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>원서 접수</p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>성적표 제출</p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>강의등록 (선택 사항)
                    </p>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>최종 등록</p>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!--입학절차 상세설명-->
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>원서 접수 
                        <a href="https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184" class="btn-gray-s ml_10">원서접수 바로가기</a>
                    </p>
                    <div class="box">
                        <ul class="list-02">
                            <li>원서 접수를 완료한 학생, 학부모 대상으로 문자를 통해 입학 절차가 안내됩니다.
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>성적표 제출 
                        <a href="https://pf.kakao.com/_hKnRb" class="btn-gray-s ml_10" target="_blank">성적표 제출하기</a>
                    </p>
                    <div class="box">
                        <ul class="list-02">
                            <li>원서 접수 후, <span class="key_txt">성적표 제출하기 버튼 클릭 > 러셀 강남 입학처 카카오톡 추가 > 상담원 채팅 > 성적표 이미지 파일을 전송해주시기 바랍니다.</span>
                            </li>
                            <li>문서 번호가 작성된 성적증명서 제출은 필수이며, 위조한 성적증명서로 판명될 경우 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                            <li class="key_txt">성적표 미제출 시 그린 전형으로 배정됩니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>강의등록(선택사항)</p>
                    <div class="box">
                        <ul class="list-02">
                            <li>시간표 페이지에서 강의 선택 후 온라인 결제해주시면 됩니다.
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 4</span>최종 등록</p>
                    <div class="box">
                        <ul class="list-02">
                            <li>강의 등록 여부 확인 후 최종 등록 안내 드립니다.
                            </li>
                            <li class="red_txt">개강 전 입학 취소 시 바자관 및 단과 결제 비용은 전액 환불됩니다.
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--//입학절차 상세설명-->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100"><strong>모집요강 및 지원혜택</strong></h3>
            <div class="tbl-box type02">

            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6817
            Else '실서버
                AGM_CD = 1897
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
    <!-- //cont00 -->
</div>