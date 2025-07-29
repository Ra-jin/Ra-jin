<div class="cont js-cont bc">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner02">

            <!-- 러셀 부천 입학절차안내 -->
            <p class="mb60"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular/cont00_tit01.png" alt=""></p>
            <table class="tbl-01">
                <colgroup>
                    <col style="width: 30%;">
                    <col style="width: 40%;">
                    <col style="width: 30%;">
                </colgroup>
                <thead>
                    <tr>
                        <th>1. 입학 상담</th>
                        <th>2. 등록</th>
                        <th>3. 입학</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="txt_left">
                            ① 방문상담 : 상담일시 예약 필수<br>
                            ② 온라인 상담 <a href="https://pf.kakao.com/_sFgGxj" class="btn-gray-s">바로가기</a><br>
                            ③ 유선상담 032.265.1010
                        </th>
                        <td class="txt_left">
                            ① 모집요강 확인<br>
                            ② 단과 수업 선택 및 등록(현장 또는 온라인 결제 가능) <br><a href="<%=amUrl%>" class="btn-gray-s ml10">AM단과</a><a href="<%=quickUrl%>" class="btn-gray-s ml10">정규&middot;특강단과</a> <br>
                            ③ 성적표 제출 및 바른공부 자습전용관 등록 (현장 등록만 가능)
                        </td>
                        <td class="txt_left">
                            신규생 오리엔테이션 참석 필수<br>
                            ※ 등록생에게 별도 안내
                        </td>
                    </tr>
                </tbody>
            </table>
            <!-- //러셀 부천 입학절차안내 -->

            <p class="mt90 mb60"><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular/cont00_tit.png" alt="N수 정규반 모집요강 및 장학혜택"></p>
            <div class="tbl-box">
                <!-- 모집요강 자동화 시스템 영역 -->
                <!-- <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 1121
                Else '실서버
                    AGM_CD = 1143
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
            %> -->
            <!-- //모집요강 자동화 시스템 영역 -->
            <div class="tbl-tit">■ 모집요강</div>

            <div class="tbl-stit">&middot; 모의고사/내신 전형</div>

            <table class="tbl-01 mb10">
                <colgroup>
                    <col style="width:10%" />
                    <col style="width:15%" />
                    <col style="width:15%" />
                    <col style="width:6%" />
                    <col style="width:20%" />
                    <col style="width:12%" />
                </colgroup>
                <thead>
                    <tr>
                        <th rowspan="2">구분</th>
                        <th colspan="3">모의고사 전형</th>
                        <th colspan="2">내신 전형</th>
                    </tr>
                    <tr>
                        <th>기준</th>
                        <th>반영 영역</th>
                        <th>등급 합</th>
                        <th>기준</th>
                        <th>내신평균</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="bg-sky">HS반1</th>
                        <td rowspan="7">2022년에 시행한<br>
                            수능/6평/9평 모의고사<br>
                            중 택1 (2023학년도)</td>
                        <td>국/수/영/탐(1)</td>
                        <td>4</td>
                        <td rowspan="7">1학년 1학기~3학년 2학기까지<br>
                            “원점수,평균,표준편차, 석차등급"<br>
                            이 기재된 모든 교과 반영</td>
                        <td>미반영</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">HS반2</th>
                        <td>국/수/영 또는 국/수/탐(1)<br>
                            *확통 반영 시</td>
                        <td>3<br>*4</td>
                        <td>교과평균 1.4 이내</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">서울대/<br>의치대반1</th>
                        <td>국/수/영/탐(1)<br>
                            상위 3개 영역</td>
                        <td>4</td>
                        <td>교과평균 1.6 이내</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">서울대/<br>의치대반2</th>
                        <td>국/수/영 또는 국/수/탐(1)</td>
                        <td>5</td>
                        <td>미반영</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">연고대반1</th>
                        <td rowspan="3">국/수/영/탐(1)<br>
                            상위 3개 영역</td>
                        <td>5</td>
                        <td>교과평균 1.8 이내</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">연고대반2</th>
                        <td>9</td>
                        <td>교과평균 2.0 이내</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">블루반</th>
                        <td>7</td>
                        <td>교과평균 3.5 이내</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">그린반</th>
                        <td colspan="5">개별 상담 진행 후 정원 5% 이내 선발</td>
                    </tr>
                </tbody>
            </table>

            <table class="tbl-01 mb10">
                <colgroup>
                    <col style="width:20%" />
                    <col style="width:auto" />
                </colgroup>
                <tbody>
                    <tr>
                        <th class="bg-sky">제출서류</th>
                        <td class="txt_left">- 필수 : 2022년에 시행한 대학수학능력시험 성적 증명서<br />
                        - 해당자 : 2022년에 시행한 6월, 9월 평가원 모의고사 성적 증명서</td>
                    </tr>
                </tbody>
            </table>

            <ul class="remark-01 mb40">
                <li>※ 문서번호가 작성된 성적증명서 제출은 필수입니다. (온라인 모의고사 성적 적용 불가)</li>
                <li>※ 내신은 1학년1학기 부터~3학년 2학기까지 &quot;원점수, 평균, 표준편차, 석차등급&rdquo;이 기재된 모든 교과를 반영합니다.</li>
                <li>※ 예체능 전형은 서울대/의치대반 전형 까지만 가능하며 서울대/의치대반 전형 외 인원은 모두 연고대반 전형으로 지원 혜택이 적용됩니다.</li>
                <li>- 예체능 전형 입학 시, 연고대반 혜택을 적용 받을 경우 연고대반2로 배정됩니다.</li>
                <li>※ 자퇴생의 경우, 검정고시 합격 여부에 따라 반이 배정됩니다.</li>
                <li>- 합격자가 아닌 경우(검정고시 미패스) : 1~2월은 윈터스쿨 전형 그린반으로 배정되며, 3월부터 N수 정규 전형 그린반으로 배정됩니다.</li>
                <li>- 합격자의 경우(검정고시 패스) : 1~2월은 N수 우선선발반 그린반으로 배정되며, 3월부터 N수 정규 전형 그린반으로 배정됩니다.</li>
            </ul>

            <div class="tbl-stit">&middot; 대학교 전형 (22~23학번)</div>

            <table class="tbl-01 mb10">
                <colgroup>
                    <col style="width:20%" />
                    <col style="width:auto" />
                </colgroup>
                <thead>
                    <tr>
                        <th>구분</th>
                        <th>입학 자격 조건</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="bg-sky">HS</th>
                        <td class="txt_left">의예계열(약대 포함) / 서울대 / 연세대(서울) / 고려대(서울) / POSTECH / KAIST</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">서울대/의치대반</th>
                        <td class="txt_left">서강대 / 성균관대 / 한양대(서울) / 이화여대 / 중앙대(서울) / 경희대 / 한국외대(서울) / 서울시립대 / UNIST / DGIST / GIST / KENTECH / 사관학교 / 경찰대 / 서울교대, 경인교대, 한국교원대</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">연고대반</th>
                        <td class="txt_left">건국대(서울) / 동국대(서울, 바이오) / 홍익대(서울) / 숙명여대 / 인하대 / 아주대 / 국민대 / 세종대 / 단국대(죽전) / 숭실대 /<br />
                        항공대 / 기타 교육대학</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">블루반</th>
                        <td class="txt_left">그 외 수도권 4년제 대학, 지방국립대</td>
                    </tr>
                </tbody>
            </table>

            <table class="tbl-01 mb10">
                <colgroup>
                    <col style="width:20%" />
                    <col style="width:auto" />
                </colgroup>
                <tbody>
                    <tr>
                        <th class="bg-sky">제출서류</th>
                        <td class="txt_left">- 2022년에 시행한 대학수학능력시험 성적 증명서<br />
                        - 대학교 재학증명서/합격증명서/휴학증명서 中 택1</td>
                    </tr>
                </tbody>
            </table>

            <ul class="list-02">
                <li>대학교 전형은 22~23학번까지 적용되며 이전 학번은 별도 상담이 필요합니다.</li>
                <li class="red_txt">위 기준은 &ldquo;최종합격&ldquo; 기준으로, 1차 합격자의 경우 &ldquo;최종합격&ldquo; 해당 반 전형보다 1단계 아래로 인정합니다.</li>
                <li>대학교 전형 입학 시, 연고대반 혜택을 적용 받을 경우 연고대반2로 배정됩니다.</li>
                <li>3월부터 정규반 승강반 제도에 따라 승반/강반이 이루어지며, 결과에 따라 지원 혜택은 변경될 수 있습니다.</li>
            </ul>

            <div class="tbl-tit">■ 지원 혜택</div>

            <table class="tbl-01 mb10">
                <colgroup>
                    <col style="width:20%;" />
                    <col style="width:auto;" />
                    <col style="width:auto;" />
                </colgroup>
                <thead>
                    <tr>
                        <th>구분</th>
                        <th>필수 수강 단과 T수</th>
                        <th>자습전용관 지원 혜택</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="bg-sky" rowspan="2">HS반</th>
                        <td class="red_txt">3.5T 이상</td>
                        <td><span class="red_txt">전/액/지/원</span></td>
                    </tr>
                    <tr>
                        <td>0T</td>
                        <td>자습전용관 45만5천원 지원 -&gt; 12만 5천원</td>
                    </tr>
                    <tr>
                        <th class="bg-sky" rowspan="2">서울대/의치대반</th>
                        <td class="red_txt">3.5T 이상</td>
                        <td class="red_txt">전/액/지/원</td>
                    </tr>
                    <tr>
                        <td>0T</td>
                        <td>자습전용관 40만원 지원 -&gt; 18만원</td>
                    </tr>
                    <tr>
                        <th class="bg-sky" rowspan="2">연고대반1</th>
                        <td class="red_txt">7T 이상</td>
                        <td class="red_txt">전/액/지/원</td>
                    </tr>
                    <tr>
                        <td>3.5T(최저 입학 기준)</td>
                        <td>자습전용관 38만원 지원 -&gt; 20만원</td>
                    </tr>
                    <tr>
                        <th class="bg-sky" rowspan="3">연고대반2</th>
                        <td class="red_txt">10.5T 이상</td>
                        <td class="red_txt">전/액/지/원</td>
                    </tr>
                    <tr>
                        <td>7T</td>
                        <td>자습전용관 28만원 지원 -&gt; 30만원</td>
                    </tr>
                    <tr>
                        <td>3.5T(최저 입학 기준)</td>
                        <td>자습전용관 8만원 지원 -&gt; 50만원</td>
                    </tr>
                    <tr>
                        <th class="bg-sky" rowspan="4">블루반</th>
                        <td class="red_txt">14T 이상</td>
                        <td class="red_txt">전/액/지/원</td>
                    </tr>
                    <tr>
                        <td>10.5T</td>
                        <td>자습전용관 38만원 지원 -&gt; 20만원</td>
                    </tr>
                    <tr>
                        <td>7T</td>
                        <td>자습전용관 8만원 지원 -&gt; 50만원</td>
                    </tr>
                    <tr>
                        <td>3.5T(최저입학기준)</td>
                        <td>58만원</td>
                    </tr>
                    <tr>
                        <th class="bg-sky" rowspan="4">그린반</th>
                        <td class="red_txt">17.5T 이상</td>
                        <td class="red_txt">전/액/지/원</td>
                    </tr>
                    <tr>
                        <td>14T</td>
                        <td>자습전용관 28만원 지원 -&gt; 30만원</td>
                    </tr>
                    <tr>
                        <td>10.5T</td>
                        <td>자습전용관 8만원 지원 -&gt; 50만원</td>
                    </tr>
                    <tr>
                        <td>7T(최저입학기준)</td>
                        <td>58만원</td>
                    </tr>
                </tbody>
            </table>

            <ul class="list-02">
                <li>HS반 중도 퇴원 시, 바른공부 자습전용관 비용 발생합니다. (*바른공부 자습전용관 월 이용료 58만원 기준)</li>
                <li>3월부터 정규반 승강반 제도에 따라 승반/강반이 이루어지며, 결과에 따라 지원 혜택은 변경될 수 있습니다.</li>
                <li>단과 수강시간(3.5T/7T/10.5T/14T/17.5T)은 1주일 기준이며 &lsquo;T&rsquo;는 수업 시간을 의미합니다.</li>
                <li>모집요강 및 지원혜택 등 상기 내용은 학원 사정에 의해 변경될 수 있습니다.</li>
            </ul>

            <div class="tbl-tit">■ 장학 혜택</div>

            <table class="tbl-01 mb10">
                <colgroup>
                    <col style="width:20%;" />
                    <col style="width:auto;" />
                </colgroup>
                <thead>
                    <tr>
                        <th>구분</th>
                        <th>내용</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="bg-sky">그린반 장학혜택</th>
                        <td>6월, 9월 평가원 모의고사 성적우수로 인한 승반 시 수능 전까지 단과 1과목 10% 지원<br />
                        (단, 2023학년도 수능 성적 제출자에 한함, 강반 시 제외)</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">형제, 자매 장학혜택</th>
                        <td>형제, 자매 동반 등록 시 단과 1과목 10% 지원 (n명 모두 적용)</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">러부 출신 장학혜택</th>
                        <td>전년도 러셀 부천을 다녔던 재원생은 자습관 10만원 또는 단과 1과목 10% 지원<br />
                        ※ 2개월 이상 연속 재원 시</td>
                    </tr>
                </tbody>
            </table>

            <ul class="list-02">
                <li>장학혜택은 중복 적용되지 않으며 유리한 조건의 혜택을 선택하여 적용합니다.</li>
                <li>상기 내용은 학원 사정에 의해 변경될 수 있습니다.</li>
            </ul>

            </div>
        </div>
    </div>
    <!-- //cont00 -->
</div>