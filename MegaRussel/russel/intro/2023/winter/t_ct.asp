<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner02">
            <!-- 연간 운영 계획 -->
            <p class="mb60"><img src="<%=Application("img_path_russel")%>/russel_ct/2023/winter/cont00_tit02.png" alt=""></p>
            
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
                    <th>1월</th>
                    <th class="on">2월<span>현재 모집중</span></th>
                    <th>3~6월</th>
                    <th>7~8월</th>
                    <th>9~11월</th>
                    <th>11~12월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                    <td>윈터스쿨</td>
                    <td>윈터스쿨<br>PLUS <br><a href="https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158">온라인 원서접수</a></td>
                    <td>재학생<br>정규반</td>
                    <td>썸머스쿨</td>
                    <td>파이널 정규반</td>
                    <td>프리<br>윈터스쿨</td>
                    </tr>
                </tbody>
            </table>
            <p class="plan-txt">※ 입학 시기에 따라 모집요강 및 지원혜택이 다릅니다. 입학 시기에 해당하는 모집요강을 확인해주시기 바랍니다.</p>

            <!-- 입학 절차 -->
            <p class="mt100 mb60"><img src="<%=Application("img_path_russel")%>/russel_ct/2023/winter/cont00_tit03.png" alt="입학절차"></p>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span>원서접수</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span>성적표 제출</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span>강의 선택 및 결제</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>4</span>최종 등록</p>
                    </div>
                </div>
                <div class="step-box">
                    <p class="tit">1) 원서접수</p>
                    <div class="box">
                        <p class="step-tit">① 온라인 원서접수 ② 사전 예약금 납부 <a href="https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158" class="btn-gray-s">원서접수 바로가기</a></p>
                        <ul class="shape-list mt5">
                            <li>사전 예약금 (58만원)까지 결제해 주셔야 원서접수가 완료됩니다.</li>
                            <li>원서접수를 완료한 학생, 학부모 대상으로 문자를 통해 입학 절차가 안내됩니다.</li>
                        </ul>
                    </div>
                    <p class="tit">2) 성적표 제출</p>
                    <div class="box">
                        <ul class="shape-list">
                            <li>모집요강이 확정되면 성적표 제출 안내드리며, 성적표 확인 후 반배정 확정됩니다.</li>
                            <li>성적표 미 제출 시 그린반으로 배정됩니다.</li>
                        </ul>
                    </div>
                    <p class="tit">3) 강의 선택 및 결제</p>
                    <div class="box">
                        <ul class="shape-list">
                            <li>윈터특강 시간표가 확정되면 맞춤 수업에 따른 강의 등록 안내 드립니다.</li>
                        </ul>
                    </div>
                    <p class="tit">4) 최종 등록</p>
                    <div class="box">
                        <p class="step-tit">윈터스쿨 등록완료</p>
                        <ul class="shape-list">
                            <li>강의 등록 내역 확인 후 바자관 최종 등록해드립니다. </li>
                            <li>예약금은 전액 환불됩니다.</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- 모집요강 및 장학혜택 -->
            <p class="mt100 mb90"><img src="<%=Application("img_path_russel")%>/russel_ct/2023/winter/cont00_tit01.png" alt="모집요강 및 장학혜택"></p>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 2321
                Else '실서버
                    AGM_CD = 1345
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