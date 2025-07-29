<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학 절차 안내 -->
            <h3>러셀CORE 창원 썸머스쿨 <strong>입학 절차 안내</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>온라인 원서접수 후 <br> 사전예약금 납부</p>
                    <a class="bt-apply" href="https://corecw.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166">원서접수 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>입학기준 확인 후 <br> 성적표 제출</p>
                    <span>* 성적표 제출 방식 추후 안내</span>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>단과 강의 <br> 선택 및 결제</p>
                    <span>* 반에 따라 수강 강좌 수 상이</span>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>썸머스쿨 <br> 최종 등록 확인</p>
                </li>
            </ul>
            <!-- //입학 절차 안내 -->

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit">러셀CORE 창원 썸머스쿨 <strong>모집요강 및 지원혜택</strong></h3>
            <div class="tbl-box">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width: 8%;">
                        <col style="width: 10%;">
                        <col style="width: %;">
                        <col style="width: %;">
                        <col style="width: %;">
                        <col style="width: %;">
                        <col style="width: 7%;">
                        <col style="width: 10%;">
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th rowspan="2">학년</th>
                            <th rowspan="2">구분</th>
                            <th colspan="2">모의고사 전형</th>
                            <th colspan="2">내신 전형</th>
                            <th rowspan="2">수강 강좌</th>
                            <th rowspan="2">바자관 이용료 <br> (7/19~8/18)</th>
                        </tr>
                        <tr class="low">
                            <th>수학[미적/기하] 선택</th>
                            <th>수학[확통]선택</th>
                            <th>수학[미적/기하] 선택</th>
                            <th>수학[확통]선택</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="5" class="bg-sky">고3/고2</th>
                            <td>HS반</td>
                            <td>
                                국/수/탐(1) 또는 <br>
                                국/수/영 <br>
                                등급 합 3
                            </td>
                            <td>
                                국/수/탐(1)  <br>
                                또는 <br>
                                국/수/영 <br>
                                등급 합 4
                            </td>
                            <td>일반고 1.4등급 이내 <br>자사고/특목고 2.3 이내</td>
                            <td>일반고 1.5등급 이내 <br>자사고/특목고 2.4 이내</td>
                            <td>1</td>
                            <td rowspan="5">620,000원</td>
                        </tr>
                        <tr>
                            <td>서울대/의치대반</td>
                            <td>국/수/탐(1) 또는 <br>국/수/영<br>등급 합 4</td>
                            <td>국/수/탐(1) 또는 <br>국/수/영<br>등급 합 5</td>
                            <td>일반고 1.6등급 이내 <br>자사고/특목고 2.7 이내</td>
                            <td>일반고 1.8등급 이내 <br>자사고/특목고 2.9 이내</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <td>연고대반</td>
                            <td>국/수/탐(1) 또는 <br>국/수/영<br>등급 합 6</td>
                            <td>국/수/탐(1) 또는 <br>국/수/영<br>등급 합 7</td>
                            <td>일반고 2.0 등급 이내 <br>자사고/특목고 3.2 이내</td>
                            <td>일반고 2.4 등급 이내 <br>자사고/특목고 3.4 이내</td>
                            <td>2</td>
                        </tr>
                        <tr>
                            <td>블루반</td>
                            <td>국/수/탐(1) 또는 <br>국/수/영<br>등급 합 8</td>
                            <td>국/수/탐(1) 또는 <br>국/수/영<br>등급 합 9</td>
                            <td>-</td>
                            <td>-</td>
                            <td>3</td>
                        </tr>
                        <tr>
                            <td>그린반</td>
                            <td>
                                국/수/탐(1) 또는 <br>국/수/영<br>등급 합 10 <br>or <br>
                                면접 후 정원 5% 이내 선발</td>
                            <td>
                                국/수/탐(1) 또는 <br>국/수/영<br>등급 합 11 <br>or <br>
                                면접 후 정원 5% 이내 선발
                            </td>
                            <td>-</td>
                            <td>-</td>
                            <td>3</td>
                        </tr>
                    </tbody>
                </table>

                <table class="tbl-01 mt20">
                    <colgroup>
                        <col style="width: 8%;">
                        <col style="width: 12%;">
                        <col style="width: %;">
                        <col style="width: 10%;">
                        <col style="width: 12%;">
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th>학년</th>
                            <th>구분</th>
                            <th>모의고사 전형</th>
                            <th>수강 강좌</th>
                            <th>
                                바자관 이용료 <br>
                                (7/19~8/18)
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-sky" rowspan="3">고1</th>
                            <td>서울대/의치대반</td>
                            <td>국/수/탐(1) 또는 국/수/영 등급 합 5</td>
                            <td>1</td>
                            <td rowspan="3">620,000원</td>
                        </tr>
                        <tr>
                            <td>연고대반</td>
                            <td>국/수/탐(1) 또는 국/수/영 등급 합 7</td>
                            <td>2</td>
                        </tr>
                        <tr>
                            <td>그린반</td>
                            <td>국/수/탐(1) 또는 국/수/영 등급 합 11 or 면접 후 정원 5% 이내 선발</td>
                            <td>3</td>
                        </tr>
                    </tbody>
                </table>

                <ul class="list-02 m0 mt10">
                    <li>모의고사 전형 혹은 내신 전형 중 하나의 성적에 해당하면 입학 가능</li>
                    <li>입학 시 성적표 제출 필수이며, 증빙된 성적표의 성적으로 반 배정</li>
                    <li>수강 강좌는 3시간 수업(1주 기준) 이상에 해당하는 강좌에 한정</li>
                    <li>수강 강좌 미충족 시, 썸머스쿨 이용이 불가</li>
                    <li>해당 모집요강은 2024년 썸머스쿨 신규생에게만 적용</li>
                </ul>

                <p class="fz16 bold txt_left mt20">[모의고사 전형]</p>
                <p class="fz14 txt_left">2024년에 응시한 전국단위 모의고사 성적표 中 택 1</p>
                <p class="fz16 bold txt_left mt10">[내신 전형]</p>
                <p class="fz14 txt_left">
                    고3 : 1학년 1학기 ~ 직전 학기 까지의 주요 과목 (국/수/영/탐) 또는 전교과 내신 성적의 평균(택 1) <br>
                    고2 : 1학년 1학기 ~ 직전 학기 까지의 주요 과목 (국/수/영/탐) 내신 성적의 평균 <br>
                    고1 : 내신 전형 이용 불가(추후 문의)
                </p>

            </div>
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <!-- <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5503
            Else '실서버
                AGM_CD = 1393
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
            <!-- //모집요강 및 장학혜택 -->
        </div>
    </div>
</div>