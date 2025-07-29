<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<div class="cont js-cont">
    <div class="cont01">
        <div class="inner">
            <!-- 모집 개요 -->
            <h3>윈터스쿨 종합반 <strong>모집 개요</strong></h3>
            <div class="tbl-box">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:12%;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="bg-gray">모집 대상</th>
                            <td class="tal">2025년 고3(현 고2)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">개강일</th>
                            <td class="tal">2월 순차 개강</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 기간</th>
                            <td class="tal">2024년 12월 ~ 2025년 2월 (9주 완성)
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수업 과목</th>
                            <td class="tal">국어, 수학, 영어, 탐구(과학탐구)
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">접수 방법</th>
                            <td class="tal">현장 또는 온라인 접수
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수강료</th>
                            <td class="tal">1,252,000원 (1달 기준)
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">제출 서류</th>  
                            <td class="tal">전국 모의고사 성적표 1부<br>
                                성적증명서 (현재 학년 2학기까지 성적 반영) 1부<br>
                                ※ 성적증명서는 내신 성적으로 입학 희망자의 경우에만 제출
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">상담 안내</th>  
                            <td class="tal">상담 가능 시간 : 오전 10시~오후 8시
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- //모집 개요 -->

            <!-- 입학 절차 안내 -->
            <h3 class="mt100">윈터스쿨 종합반 <strong>입학 절차 안내</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>원서 접수 및 사전 예약
                    </p>
                    <ul class="list-03">
                        <li> 온라인 원서 접수
                        </li>
                        <li> 사전예약금 납부 (520,000원)</li>
                    </ul>
                    <a class="bt-apply" href="https://coregj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=174">원서접수 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>성적표 제출 </p>
                    <ul class="list-03">
                        <li> 모의고사 또는 <br>
                            내신 증빙서류 제출</li>
                        <li> 4층 입학팀 또는<br>
                            “러셀CORE 광주”<br>
                            카카오 채널로 제출</li>
                    </ul>
                    <a class="bt-apply" href="http://pf.kakao.com/_swxoCb" target="_blank">성적표 제출 [바로가기]</a>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>반 편성 후 안내</p>
                    <ul class="list-03">
                        <li>성적표 확인 후,<br>
                            모집 기준 상 반 편성 및 안내</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>강좌 선택 및 등록</p>
                    <ul class="list-03">
                        <li>과목별 선택 수업 선택<br>
                            선택한 수업은 개강 전까지<br>
                            변경 및 취소 가능<br>
                            ※ 강좌 선택 추후 안내</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>입학 및 개강</p>
                    <ul class="list-03">
                        <li>12월 개강</li>
                        <li>개강 전 OT 진행 예정</li>
                    </ul>
                </li>
            </ul>
            <!-- //입학 절차 안내 -->

            <!-- 입학기준 및 지원혜택 -->
            <h3 class="tit">윈터스쿨 종합반 <strong>입학기준 및 지원혜택</strong></h3>
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5592
            Else '실서버
                AGM_CD = 1671
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
