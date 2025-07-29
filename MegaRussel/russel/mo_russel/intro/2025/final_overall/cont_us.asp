<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <div class="inner">
        <!-- 모집 개요 -->
        <p class="recruit-tit"><strong>모집 개요</strong></p>
        
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6981
        Else '실서버
            AGM_CD = 2064
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

        <!-- <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.');" href="https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=181" class="btn-link mt20">원서접수 바로가기</a> -->
         <a onclick="alert('추후 오픈 예정입니다.')" href="javascript:void(0)" class="btn-link mt20">원서접수 바로가기</a>

        <!-- 입학 절차 -->
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>
                    입학상담/<br>
                    원서접수
                </span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>
                    전형 확인/<br>
                    반 편성
                </span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>현장/온라인 <br> 등록</span>
            </li>
        </ul>
        <ul class="setp-diagram">
            <li>
                <div><strong>4</strong></div>
                <span>
                    강좌 선택 <br>
                    및 등록
                </span>
            </li>
            <li>
                <div><strong>5</strong></div>
                <span>입학 및 개강</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 입학상담/원서접수 <a onclick="alert('추후 오픈 예정입니다.')" href="javascript:void(0)" class="bt-gray-s">원서접수 바로가기</a></p>
                <ul class="list-dot m0 mt0">
                    <li>방문/전화/온라인 상담</li>
                    <li>온라인 원서접수</li>
                    <li>사전 예약금 납부</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 전형 확인/반 편성</p>
                <ul class="list-dot m0 mt0">
                    <li>전형 자격 요건 확인</li>
                    <li>모집 기준 상 반 편성</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 현장/온라인 등록</p>
                <ul class="list-dot m0 mt0">
                    <li>가상 계좌 발송/카드 결제</li>
                    <li>미납 시 합격 취소</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">4) 강좌 선택 및 등록</p>
                <ul class="list-dot m0 mt0">
                    <li>과목별 선택 수업 선택</li>
                    <li>선택한 수업은 개강 전까지 변경 및 취소 가능</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">5) 입학 및 개강</p>
                <ul class="list-dot m0 mt0">
                    <li>9월 1일(월) 개강</li>
                    <li>개강 전 개별 OT 진행 예정</li>
                </ul>
            </div>
        </div>



        <p class="recruit-tit"><strong>모집 요강 & 장학 혜택</strong></p>
        <div class="tbl-box p0">
            <p class="recruit-stit mt0">2026 파이널 종합반 모집 요강</p>
            <p class="recruit-stxt non-type">[<strong class="txt-red">자연계열 - 선택 미적분/기하</strong>]</p>
            <div class="tbl-scroll-x">
                <table class="tbl-type01" style="width:250%">
                    <colgroup>
                        <col style="width:9%">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>반명</th>
                            <th>모의고사 전형</th>
                            <th>내신 전형</th>
                            <th>대학교 전형</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-sky">HS반</th>
                            <td>[수능/9평] 국수(미/기)영 <br>
                                또는 국수(미/기)탐(1) 합 <strong class="txt-red">4</strong>등급 이내</td>
                            <td>일반고 <strong class="txt-red">1.4</strong> 이내<br>
                                (특목고/자사고 자체심사)</td>
                            <td>(자연) 의/치/한/약/수, 카이스트, 포항공대,<br>
                                서울대, 연세대, 고려대</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">서의치반</th>
                            <td>[수능/9평] 국수(미/기)영 <br>
                                또는 국수(미/기)탐(1) 합 <strong class="txt-red">5</strong>등급 이내</td>
                            <td>일반고 <strong class="txt-red">1.6</strong> 이내<br>
                                (특목고/자사고 자체심사)</td>
                            <td>(자연) 서강대, 성균관대, 한양대, 과학기술원</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">연고대반</th>
                            <td>[수능/9평] 국수(미/기)영 <br>
                                또는 국수(미/기)탐(1) 합 <strong class="txt-red">7</strong>등급 이내</td>
                            <td>일반고 <strong class="txt-red">2.0</strong> 이내<br>
                                (특목고/자사고 자체심사)</td>
                            <td>(자연) 중앙대, 경희대, 서울시립대, 이화여대,<br>
                                건국대, 동국대, 홍익대, 숙명여대</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">블루1반</th>
                            <td>[수능/9평/6평] 국수(미/기)영 <br>
                                또는 국수(미/기)탐(1) 합 <strong class="txt-red">9</strong>등급 이내</td>
                            <td>-</td>
                            <td>인서울 및 수도권 4년제, 국립대학교<br>
                                (이원화 캠퍼스, 분교 등 제외)</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">블루2반</th>
                            <td>정원의 <strong class="txt-red">5% 이내</strong> 선발<br>
                                (수능 성적표 제출 & 방문상담 필수)</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <p class="recruit-stxt non-type">[<strong class="txt-red">인문계열 - 선택 확률과통계</strong>]</p>
            <div class="tbl-scroll-x">
                <table class="tbl-type01" style="width:250%">
                    <colgroup>
                        <col style="width:9%">
                        <col style="width:auto">
                        <col style="width:auto">
                        <col style="width:auto">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>반명</th>
                            <th>모의고사 전형</th>
                            <th>내신 전형</th>
                            <th>대학교 전형</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-sky">HS반</th>
                            <td>[수능/9평] 국수(확통)영 <br>
                                또는 국수(확통)탐(1) 합 <strong class="txt-red">6</strong>등급 이내<br>
                                <span class="f12 color-gray-03">*확통 3등급 이내</span></td>
                            <td>일반고 <strong class="txt-red">1.6</strong> 이내<br>
                                (특목고/자사고 자체심사)</td>
                            <td>(인문) 서울대, 연세대, 고려대, <br>
                                서강대, 성균관대, 한양대</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">서의치반</th>
                            <td>[수능/9평] 국수(확통)영 <br>
                                또는 국수(확통)탐(1) 합 <strong class="txt-red">7</strong>등급 이내<br>
                                <span class="f12 color-gray-03">*확통 4등급 이내</span></td>
                            <td>일반고 <strong class="txt-red">2.0</strong> 이내<br>
                                (특목고/자사고 자체심사)</td>
                            <td>(인문) 중앙대, 이화여대, 경희대, <br>
                                한국외대, 서울시립대</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">연고대반</th>
                            <td>[수능/9평] 국수(확통)영 <br>
                                또는 국수(확통)탐(1) 합 <strong class="txt-red">9</strong>등급 이내<br>
                                <span class="f12 color-gray-03">*확통 4등급 이내</span></td>
                            <td>일반고 <strong class="txt-red">2.5</strong> 이내<br>
                                (특목고/자사고 자체심사)</td>
                            <td>(인문) 건국대, 동국대, 홍익대, 숙명여대</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">블루1반</th>
                            <td>[수능/9평/6평] 국수(확통)영 <br>
                                또는 국수(확통)탐(1) 합 <strong class="txt-red">11</strong>등급 이내<br>
                                <span class="f12 color-gray-03">*확통 5등급 이내</span></td>
                            <td>-</td>
                            <td>인서울 및 수도권 4년제, 국립대학교<br>
                                (이원화 캠퍼스, 분교 등 제외)</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">블루2반</th>
                            <td>정원의 <storng class="txt-red">5% 이내</storng> 선발<br>
                                (수능 성적표 제출 & 방문상담 필수)</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <p class="recruit-stit">2026 파이널 종합반 장학 혜택</p>
            <div class="tbl-scroll-x">
                <table class="tbl-type01" style="width:180%">
                    <colgroup>
                        <col style="width:12%">
                        <col style="width:auto">
                        <col style="width:auto">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>장학 혜택</th>
                            <th><span class="color-orange">최상위권 이과전문관</span><br>
                                [자연계열-선택 미적분/기하] 종합반</th>
                            <th><span class="color-orange">서연고 문과전문관</span><br>
                                [인문계열-선택 확률과통계] 종합반</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-sky"><strong>수강료<br>
                                <span class="txt-red">90만원</span> 지원</strong><br>
                                *연속 지원</th>
                            <td><strong>[2024년 수능]</strong> 국수(미/기)영 <br>
                                또는 국수(미/기)과탐(1) 합 <strong class="txt-red">4</strong>등급 이내<br><br>
                                <strong>[내신]</strong> 일반고 <strong class="txt-red">1.4</strong> 이내</td>
                            <td><strong>[2024년 수능]</strong> 국수(확통)영 <br>
                                또는 국수(확통)사탐(1) 합 <strong class="txt-red">5</strong>등급 이내<br>
                                *확통 3등급 이내<br><br>
                                <strong>[내신]</strong> 일반고 <strong class="txt-red">1.3</strong> 이내</td>
                        </tr>
                        <tr>
                            <th class="bg-sky"><strong>수강료<br>
                                <span class="txt-red">60만원</span> 지원</strong><br>
                                *연속 지원</th>
                            <td><strong>[2024년 수능]</strong> 국수(미/기)영 <br>
                                또는 국수(미/기)과탐(1) 합 <strong class="txt-red">5</strong>등급 이내<br><br>
                                <strong>[내신]</strong> 일반고 <strong class="txt-red">1.6</strong> 이내</td>
                            <td><strong>[2024년 수능]</strong> 국수(확통)영 <br>
                                또는 국수(확통)사탐(1) 합 <strong class="txt-red">6</strong>등급 이내<br>
                                *확통 3등급 이내<br><br>
                                <strong>[내신]</strong> 일반고 <strong class="txt-red">1.5</strong> 이내</td>
                        </tr>
                        <tr>
                            <th class="bg-sky"><strong>수강료<br>
                                <span class="txt-red">30만원</span> 지원</strong><br>
                                *연속 지원</th>
                            <td><strong>[2024년 수능]</strong> 국수(미/기)영 <br>
                                또는 국수(미/기)과탐(1) 합 <strong class="txt-red">6</strong>등급 이내</td>
                            <td><strong>[2024년 수능]</strong> 국수(확통)영 <br>
                                또는 국수(확통)사탐(1) 합 <strong class="txt-red">7</strong>등급 이내<br>
                                *확통 4등급 이내</td>
                        </tr>
                        <tr>
                            <th class="bg-sky"><strong>수강료<br>
                                <span class="txt-red">20%</span> 지원</strong><br>
                                *연속 지원</th>
                            <td colspan="2">2024년 러셀 울산학원에서<br>
                                바른공부 자습전용관 3개월 이상 재원</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <p class="text-align-left f12 bold2 mt10">※ 유의사항</p>
            <ul class="list-dot m0">
                <li>해당 입학 성적을 충족하지 못할 시 종합반 입학이 불가합니다.</li>
                <li>2024년 시행 수능 및 9월, 6월 평가원 성적만 인정하며, 수능 미응시 또는 이전 성적은 별도 상담을 통해 선발 및 반 배정합니다. (학원 별도 문의)</li>
                <li>탐(1)은 탐구 1과목을 의미합니다.</li>
                <li>내신 성적은 국/수/영/탐 기준이며, 전 학년 평균 성적을 반영합니다. (*특목/자사고는 별도 심사하여 선발)</li>
                <li>대학교 전형은 2025, 2024, 2023학번까지 인정하며 2022학번 이전 입학자부터는 별도 배정합니다.</li>
                <li>성적표 제출은 필수 사항이며, 위조한 성적표 제출 시 이에 따른 수강료 납부 및 퇴원 절차를 진행합니다.</li>
                <li>모집 요강은 학원 사정에 의해 변경될 수 있으며, 변경 시 홈페이지를 통해 공지 예정입니다.</li>

            </ul>
        </div>
        <!-- 모집요강 자동화 시스템 영역 -->
        <!-- <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6808
        Else '실서버
            AGM_CD = 1889
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
    </div>
</div>