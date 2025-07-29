<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner02" style="width: 1200px;">

            <!--연간운영계획-->
            <p class="mb60"><img src="<%=Application("img_path_russel")%>/russel_gn/2023/summer/cont00_tit01.png" alt="썸머스쿨 연간 운영 계획"></p>
            <table class="tbl-plan">
                <colgroup>
                    <col style="width:20%" />
                    <col style="width:20%" />
                    <col style="width:20%" />
                    <col style="width:20%" />
                    <col style="width:20%" />
                </colgroup>
                <thead>
                    <tr>
                        <th>1월</th>
                        <th>2월</th>
                        <th>3~6월</th>
                        <th class="on">7~8월</th>
                        <th>9~11월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>윈터스쿨</td>
                        <td>윈터스쿨 PLUS</td>
                        <td>재학생 최상위권반</td>
                        <td>썸머스쿨</td>
                        <td>파이널 정규반</td>
                    </tr>
                </tbody>
            </table>
            <p class="plan-txt">※ 입학 시기에 따라 모집요강 및 장학혜택이 다릅니다. 입학 시기에 해당하는 모집요강을 확인해주시기 바랍니다.</p>
            <!--//연간운영계획-->

            <!--입학절차안내-->
            <p class="mb60 mt100"><img src="<%=Application("img_path_russel")%>/russel_gn/2023/summer/cont00_tit02.png" alt="썸머스쿨 입학 절차 안내"></p>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span> 원서접수</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span> 성적표 제출</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span>강의 선택 및 결제</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>4</span> 최종 등록</p>
                    </div>
                </div>
                <div class="step-box">
                    <p class="tit">1) 원서접수</p>
                    <div class="box">
                        <p class="step-tit">① 온라인 원서접수 ② 사전 예약금 납부</p>
                        <ul class="shape-list">
                            <li class="red_txt">현재 전 학년 마감되었습니다. 대기 접수는 받지 않습니다.</li>
                        </ul>
                    </div>
                    <p class="tit">2) 성적표 제출 <a href="https://pf.kakao.com/_hKnRb" class="btn-gray-s ml_10">성적표 제출하기</a></p>
                    <div class="box">
                        <ul class="shape-list">
                            <li>입학 대상자는 개별적으로 연락 드려 성적표 제출을 요청 드립니다.</li>
                            <li>성적표 미 제출 시 그린반으로 배정됩니다.</li>
                        </ul>
                    </div>
                    <p class="tit">3) 강의 선택 및 결제 <a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1365" class="btn-gray-s ml_10">고3 시간표</a> <a href="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=262" class="btn-gray-s ml_10">고2 시간표</a></p>
                    <div class="box">
                        <ul class="shape-list">
                            <li>성적표 제출 및 반배정 완료 후 모집요강에 따른 필수 수강시수에 맞춰 강의를 등록해 주세요.</li>
                        </ul>
                    </div>
                    <p class="tit">4) 최종 등록</p>
                    <div class="box">
                        <p class="step-tit">썸머스쿨 등록완료</p>
                        <ul class="shape-list">
                            <li>강의 등록 후 '마이페이지' 에서 바자관 등록까지 완료해 주세요.</li>
                            <li>바자관 전액지원인 경우에도 '0원'결제하기로 결제 단계를 끝까지 진행해 주세요.</li>
                            <li>최종 등록 내역 확인 후 사전예약금은 전액 환불해드립니다.</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--//입학절차안내-->

            <p class="mb60 mt100"><img src="<%=Application("img_path_russel")%>/russel_gn/2023/summer/cont00_tit03.png" alt="모집요강 및 장학혜택"></p>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 1250
                Else '실서버
                    AGM_CD = 1272
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