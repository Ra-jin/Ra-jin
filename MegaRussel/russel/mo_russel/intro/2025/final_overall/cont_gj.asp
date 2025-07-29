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
            AGM_CD = 6985
        Else '실서버
            AGM_CD = 2068
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
                    입학 상담/<br>
                    원서 접수
                </span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>
                    입학 기준 <br>
                    확인 후 <br>
                    성적표 제출
                </span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>강좌 선택 <br>
                    및 등록</span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>파이널 종합반<br>
                    최종 등록</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 입학 상담/원서 접수</p>
                <ul class="list-bar m0 mt0">
                    <li>온라인 상담 <a href="https://pf.kakao.com/_swxoCb" class="bt-gray-s">바로가기</a></li>
                    <li>유선 상담: 062-462-1010</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 입학 기준 확인 후 성적표 제출</p>
                <ul class="list-star m0 mt0">
                    <li>현장 또는 카카오톡 채널에 제출 가능</li>
                </ul>
                <a href="https://pf.kakao.com/_swxoCb" class="bt-gray-s">성적표 제출 바로가기 </a>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 강좌 선택 및 등록</p>
                <ul class="list-bar m0 mt0">
                    <li>과목별 선택 수업 선택</li>
                    <li>선택한 수업은 개강 전까지 변경  및 취소 가능</li>
                </ul>
                <a onclick="alert('추후 오픈 예정입니다.')" href="javascript:void(0)" class="bt-gray-s">정규·특강 단과 바로가기</a>
            </div>

            <div class="step-txt">
                <p class="step-tit">4) 파이널 종합반 최종 등록</p>
                <ul class="list-base m0 mt0">
                    <li>- 바른공부 자습전용관 등록(현장 또는 온라인 결제 가능)</li>
                    <li>※ 온라인 결제 희망할 경우 학원에 문의</li>
                </ul>
            </div>
        </div>



        <p class="recruit-tit"><strong>모집 요강 & 지원 혜택</strong></p>
        <div class="tbl-box p0">
            <div class="tbl-scroll-x">
                <table class="tbl-type01" style="width:250%">
                    <colgroup>
                        <col style="width:65px;">
                        <col style="width:65px;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:23%;">
                        <col style="width:13%;">
                        <col style="width:13%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th rowspan="2">학년</th>
                            <th class="sticky" rowspan="2">반명</th>
                            <th colspan="3">입학 기준 및 지원 자격</th>
                            <th colspan="2">강좌 및 수강료</th>
                        </tr>
                        <tr>
                            <th>지원 자격</th>
                            <th>내신전형</th>
                            <th>대학전형</th>
                            <th>수강 <br>
                                강좌수</th>
                            <th>수강료</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-sky" rowspan="5">N수</th>
                            <td class="bg-sky sticky">HS</td>
                            <td>국/수/탐(2) <br>
                                합 4등급 이내<br>
                                (수능，9평)</td>
                            <td>일반고 1.4 이내 <br>
                                자사고/특목고 2.2 이내</td>
                            <td>의/치/한/약/수, 카이스트, <br>
                                포항공대, 서울대, 연세대, <br>
                                고려대</td>
                            <td rowspan="5">*4강좌 필수*<br><br>
                                국어(필수)<br>
                                +<br>
                                수학(필수)<br>
                                +<br>
                                과탐(필수)<br>
                                +<br>
                                영어(선택)<br><br>

                                *현장 종합 강좌<br>
                                추가 수강 시<br>
                                130,000원 추가</td>
                            <td> 876,400<br>
                                (30% 지원)</td>
                        </tr>
                        <tr>
                            <td class="bg-sky sticky">서의치</td>
                            <td>국/수/영/탐(1) 중<br>
                                3개 합 ５등급 이내 <br>
                                (수능, 9평, 6평)</td>
                            <td>일반고 1.7 이내<br>
                                자사고/특목고 2.7 이내</td>
                            <td>성균관대, 서강대, 한양대, <br>
                                과학기술원</td>
                            <td>1,126,800<br>
                                (10% 지원)</td>
                        </tr>
                        <tr>
                            <td class="bg-sky sticky">연고반</td>
                            <td>국/수/영/탐(1) 중 <br>
                                3개 합 6등급 이내 <br>
                                (수능, 9평, 6평)</td>
                            <td>일반고 2.5 이내 <br>
                                자사고/특목고 3.5 이내</td>
                            <td>중앙대, 경희대, 이화여대, <br>
                                서울시립대, 건국대, 동국대, <br>
                                홍익대, 숙명여대, 전남대</td>
                            <td rowspan="3">1,252,000</td>
                        </tr>
                        <tr>
                            <td class="bg-sky sticky">블루<br>
                                1반</td>
                            <td>국/수/영/탐(1) 중<br>
                                3개 영역 합 8등급 이내<br>
                                (수능, 9평, 6평)</td>
                            <td>-</td>
                            <td>서울 지역 내 4년제 대학, <br>
                                지방 국립대 ( 전남대 제외 )</td>
                        </tr>
                        <tr>
                            <td class="bg-sky sticky">블루<br>
                                2반</td>
                            <td>국/수/영/탐(1) 중<br>
                                3개 영역 합 9등급 이내<br>
                                (수능, 9평, 6평)</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                    </tbody>
                </table>
            </div>
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