<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!-- 모집 개요 -->
<div class="recruit-wrap">
    <div class="inner">
        <p class="recruit-tit"><strong>모집 개요</strong></p>
        <div class="tbl-box type01">
            <table class="tbl-type01">
                <colgroup>
                    <col style="width: 20%">
                    <col style="width: auto">
                </colgroup>
                <tbody>
                    <tr>
                        <th class="bg-sky">모집 대상</th>
                        <td class="text-align-left">2026 재수생<br><strong>※ 모집요강 지원자격 해당자 순 접수</strong></td>
                    </tr>
                    <tr>
                        <th class="bg-sky">개강일</th>
                        <td class="text-align-left">2월 순차 개강</td>
                    </tr>      
                    <tr>
                        <th class="bg-sky">수업 기간</th>
                        <td class="text-align-left">12월 ~ 2025년 2월 (9주 완성)</td>
                    </tr>     
                    <tr>
                        <th class="bg-sky">수업 과목</th>
                        <td class="text-align-left">국어, 수학, 영어, 탐구(과학탐구)</td>
                    </tr>      
                    <tr>
                        <th class="bg-sky">접수 방법</th>
                        <td class="text-align-left">현장 또는 온라인 접수</td>
                    </tr>      
                    <tr>
                        <th class="bg-sky">수강료</th>
                        <td class="text-align-left">1,252,000원 (1달 기준)</td>
                    </tr>      
                    <tr>
                        <th class="bg-sky">제출 서류</th>
                        <td class="text-align-left">- 6평, 9평, 수능 성적표 1부<br>
                            - 성적증명서 (고등학교 전체 성적 평균 반영) 1부<br>
                            ※ 성적증명서는 내신 성적으로 입학 희망자의 경우에만 제출</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">상담 안내</th>
                        <td class="text-align-left">상담 가능 시간 : 오전 10시~오후 8시</td>
                    </tr>
                </tbody>
            </table> 
        </div>
    </div>
</div>
<!-- //모집 개요 -->

<!-- 입학 절차 -->
<div class="recruit-wrap">
    <div class="inner">
        <p class="recruit-tit pt0"><strong>입학 절차</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>입학상담/<br>
                    원서접수</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>성적표 제출</span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>반 편성 후 안내</span>
            </li>
        </ul>
        <ul class="setp-diagram">
            <li>
                <div><strong>4</strong></div>
                <span>강좌 선택 및<br>
                    등록</span>
            </li>
            <li>
                <div><strong>5</strong></div>
                <span>입학 및 개강</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 입학상담/원서접수</p>
                <ul class="list-dot m0 mt0">
                    <li>방문/전화/온라인 상담 <a onclick="alert('추후 오픈 예정입니다.');" class="bt-gray-s ml10">원서접수 바로가기</a></li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 성적표 제출</p>
                <ul class="list-dot m0 mt0">
                    <li>모의고사 또는 내신 증빙서류 제출</li>
                    <li>4층 입학팀 또는 “러셀CORE 광주” 카카오 채널로 제출<br>
                        <a href="https://pf.kakao.com/_swxoCb" class="bt-gray-s">성적표 제출 [바로가기]</a></li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 반 편성 후 안내</p>
                <ul class="list-dot m0 mt0">
                    <li>성적표 확인 후, 모집 기준 상 반 편성 및 안내</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">4) 강좌 선택 및 등록</p>
                <ul class="list-dot m0 mt0">
                    <li>과목별 선택 수업 선택</li>
                    <li>선택한 수업은 개강 전까지 변경 및 취소 가능<br>
                        ※ 강좌 선택 추후 안내</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">5) 입학 및 개강</p>
                <ul class="list-dot m0 mt0">
                    <li>2024년 12월 개강</li>
                    <li>개강 전 OT 진행 예정</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<!-- 모집요강 및 지원혜택 -->
<div class="recruit-wrap type02">
    <div class="inner">
        <p class="recruit-tit"><strong>입학 기준 및 지원혜택</strong></p>
        <div class="tbl-box">
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5694
            Else '실서버
                AGM_CD = 1774
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
<!-- //모집요강 및 장학혜택 -->