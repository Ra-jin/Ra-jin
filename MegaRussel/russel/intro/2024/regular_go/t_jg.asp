<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 연간 운영 계획 -->
            <p class="mb70"><img src="<%=Application("img_path_russel")%>/russel_jg/2024/regular_go/cont00_tit01.png" alt="연간 운영 계획"></p>
            <table class="tbl-plan">
                <colgroup>
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                </colgroup>
                <thead>
                    <tr>
                        <th>2024년</th>
                        <th>3~6월</th>
                        <th>7~8월</th>
                        <th>9~11월</th>
                        <th>11~12월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>고3</td>
                        <td rowspan="3">정규반</td>
                        <td rowspan="3">썸머스쿨</td>
                        <td>정규반</td>
                        <td>-</td>
                    </tr>
                </tbody>
            </table>
            <p class="plan-txt txt_right">
                * 학원의 사정에 따라 연간 운영 계획은 변동될 수 있으며, 변동 시 별도 안내드립니다.
            </p>

            <!-- 입학절차 -->
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/russel_jg/2024/regular_go/cont00_tit02.png" alt="입학절차 안내"></p>
            <div class="step-wrap">
                <div class="step-info-wrap">
                    <div class="step-list">
                        <p class="tit"><span>1</span>단과 수업 선택 및 결제</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>2</span>성적표 제출 및 최종 등록</p>
                    </div>
                    <div class="step-list">
                        <p class="tit"><span>3</span>입학</p>
                    </div>
                </div>
                <div class="step-box">
                    <p class="tit">1) 단과 수업 선택 및 결제</p>
                    <div class="box">
                        <ul class="list-04 mt5">
                            <li>등록 방법 : 온라인 또는 학원 방문 접수</li>
                            <li>등록 비용 : 단과 수업에 따라 상이</li>
                        </ul>
                    </div>
                    <p class="tit">2) 성적표 제출 및 최종 등록</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>성적표 : 반마다 성적표 제출 기준이 상이하므로, '2025 재학생 정규반[고3]' 모집요강을 꼭 확인해주시기 바랍니다.</li>
                            <li>성적표 제출 : <p class="underline" style="display: inline-block;">최종 등록 시, 학원 방문하여 <span class="red_txt bold">성적표 사본(출력물) 제출(필수)</span></p></li>
                        </ul>
                        <ul class="list-02">
                            <li>제출 불가한 성적표 : (예) 꼬리표, 수기(오피스) 편집, 인적사항 확인 불가한 성적표</li>
                        </ul>
                    </div>
                    <p class="tit">3) 입학</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>OT : 개별 안내</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- 모집요강 및 장학혜택 -->
            <p class="mt120 mb70"><img src="<%=Application("img_path_russel")%>/russel_jg/2024/regular_go/cont00_tit03.png" alt="모집요강 및 장학혜택"></p>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 4422
                Else '실서버
                    AGM_CD = 1471
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




            <!--고2/고1 모집요강 및 지원혜택 주석처리-->
            
            <!-- <p class="full-tit-sq">[고2] 모집요강</p>

            <table class="tbl-01 tbl-center">
                <colgroup>
                    <col style="width:12%" />
                    <col style="width:auto" />
                    <col style="width:auto" />
                </colgroup>
                <thead>
                    <tr class="low">
                        <th rowspan="2">구분</th>
                        <th colspan="2">입학 기준 및 지원 자격</th>
                    </tr>
                    <tr class="low">
                        <th>전국 모의고사</th>
                        <th>내신</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="bg-sky">HS</th>
                        <td>국/수/영/탐(1) 中 수학 포함 3개 영역<br />
                        등급 합 3 이내</td>
                        <td>반 1등(담임선생님 확인 필)</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">서의치약</th>
                        <td>국/수/영/탐(1) 中 3개 영역<br />
                        등급 합 5 이내</td>
                        <td>일반고 2.0 이내 / 특목&middot;자사고 3.0 이내</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">연고대</th>
                        <td colspan="2">러셀 중계 단과 수강 시</td>
                    </tr>
                </tbody>
            </table>

            <ul class="list-04 m0 mt10">
                <li>모집요강 및 지원혜택은 학원 사정에 의해 변동될 수 있습니다.</li>
                <li>전국모의고사 기준 : 2023년 전국 단위 전국모의고사 성적 中 택 1</li>
                <li>내신 성적 기준 : 1학년 1학기~1학년 2학기 주요 교과 내신 평균(이수단위 반영)</li>
                <li>전형에 해당되는 증빙 서류 미 제출시, 입학이 제한될 수 있습니다.</li>
                <li>증명서 제출은 필수이며, 위조한 성적 증명서 제출 시 이에 따른 수강료 납부 및 퇴원 절차를 진행됩니다.</li>
            </ul>

            <p class="full-tit-sq">[고2] 지원혜택</p>

            <table class="tbl-01 tbl-center">
                <colgroup>
                    <col style="width:12%" />
                    <col style="width:auto" />
                    <col style="width:auto" />
                </colgroup>
                <thead>
                    <tr class="low">
                        <th>구분</th>
                        <th>단과 수강</th>
                        <th>지원혜택</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="bg-sky" rowspan="2">HS</th>
                        <td>3T 이상</td>
                        <td class="red_txt bold">전/액/지/원</td>
                    </tr>
                    <tr>
                        <td>바자관만 이용시</td>
                        <td>476,000원 지원<br />
                        <span class="f11 gray">(620,000원 &rarr; 144,000원)</span></td>
                    </tr>
                    <tr>
                        <th class="bg-sky" rowspan="2">서의치약</th>
                        <td>6T 이상</td>
                        <td class="red_txt bold">전/액/지/원</td>
                    </tr>
                    <tr>
                        <td>3T 이상 (최저입학 기준)</td>
                        <td>310,000원 지원<br />
                        <span class="f11 gray">(620,000원 &rarr; 310,000원)</span></td>
                    </tr>
                    <tr>
                        <th class="bg-sky" rowspan="2">연고대</th>
                        <td>9T 이상</td>
                        <td class="red_txt bold">전/액/지/원</td>
                    </tr>
                    <tr>
                        <td>6T 이상 (최저입학 기준)</td>
                        <td>310,000원 지원<br />
                        <span class="f11 gray">(620,000원 &rarr; 310,000원)</span></td>
                    </tr>
                </tbody>
            </table>

            <ul class="list-04 m0 mt10">
                <li>모집요강 및 지원혜택은 학원 사정에 의해 변동될 수 있습니다.</li>
                <li>반별 최저 입학 기준을 충족해야 입학 가능합니다.</li>
                <li>지원혜택은 해당 월 단과 수업을 완강 한 경우에만 적용됩니다.</li>
                <li>단과 수업 결석 시, 회차 환불 불가합니다.(회차 환불 시, 바자관 지원 혜택 적용 불가)</li>
                <li>바른공부 자습전용관은 교육청 환불 기준에 의해 환불 됩니다.</li>
            </ul>

            <p class="full-tit-sq">[고1] 모집요강 및 지원혜택</p>

            <table class="tbl-01 tbl-center">
                <colgroup>
                    <col style="width:12%" />
                    <col style="width:auto" />
                    <col style="width:auto" />
                    <col style="width:auto" />
                </colgroup>
                <thead>
                    <tr class="low">
                        <th>구분</th>
                        <th>입학 기준</th>
                        <th>단과 수강</th>
                        <th>지원혜택</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="bg-sky" rowspan="2">피켈</th>
                        <td rowspan="2">러셀 중계 단과 수강 시</td>
                        <td>9T 이상</td>
                        <td class="red_txt bold">전/액/지/원</td>
                    </tr>
                    <tr>
                        <td>6T 이상(최저입학 기준)</td>
                        <td>310,000원 지원<br />
                        <span class="f11 gray">(620,000원 &rarr; 310,000원)</span></td>
                    </tr>
                </tbody>
            </table>

            <ul class="list-04 m0 mt10">
                <li>모집요강 및 지원혜택은 학원 사정에 의해 변동될 수 있습니다.</li>
                <li>반별 최저 입학 기준을 충족해야 입학 가능합니다.</li>
                <li>지원혜택은 해당 월 단과 수업을 완강 한 경우에만 적용됩니다.</li>
                <li>단과 수업 결석 시, 회차 환불 불가합니다.(회차 환불 시, 바자관 지원 혜택 적용 불가)</li>
                <li>바른공부 자습전용관은 교육청 환불 기준에 의해 환불 됩니다.</li>
            </ul> -->
        </div>
    </div>
    <!-- //cont00 -->
</div>