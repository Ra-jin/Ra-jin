<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<style>
    .stickyCj{left:22.3% !important}
</style>
<div class="recruit-wrap pb0 pt0">
    <!-- 입학 절차 -->
    <p class="recruit-tit">러셀CORE 청주<br><strong>윈터스쿨 입학 절차</strong></p>
    <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>온라인 원서접수</span>
            <a href="javascript:alert('추후 오픈 예정입니다.')" class="bt-gray-s ml10">원서접수 바로가기</a>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>입학기준 확인 후<br>성적표 제출</span>
            <span class="txt">※ 성적표 제출 방식 : 별도 안내 예정</span>
        </li>
    </ul>
    <ul class="setp-diagram mt20">
        <li>
            <div><strong>3</strong></div>
            <span>2월 단과 강의<br>선택 및 결제</span>
            <!-- <span class="txt">※ 단과 강의 11월 21일 이후 결제 가능</span> -->
        </li>
        <li>
            <div><strong>4</strong></div>
            <span>윈터스쿨<br>최종 등록 확인</span>
        </li>
    </ul>
    <!-- 모집요강 및 지원 혜택 -->
    <p class="recruit-tit">러셀CORE 청주 윈터스쿨<br><strong>모집요강 및 지원혜택</strong></p>
    <div class="tbl-box">
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 2313
        Else '실서버
            AGM_CD = 1337
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
        <!-- <div class="tbl-scroll-x">
            <table class="tbl-type01 tbl-center" style="width: 600px;">
                <colgroup>
                    <col style="width:13%;" />
                    <col style="width:13%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:10%;" />
                </colgroup>
                <thead>
                    <tr>
                        <th>구분</th>
                        <th class="stickyCj">반명</th>
                        <th>모의고사 전형</th>
                        <th>내신 전형</th>
                        <th>의무<br />
                        강좌 수</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="bg-sky" rowspan="5">고3
                        <p class="ico-end-s" style="position:absolute;top:53%;left:17%">전반<br />
                        마감임박</p>
                        </th>
                        <td class="stickyCj">HS반</td>
                        <td>국/수/탐(2) 합 4등급 이내</td>
                        <td>일반고 1.5 이내<br />
                        자사고/특목고 2.5 이내</td>
                        <td>1</td>
                    </tr>
                    <tr>
                        <td class="stickyCj">서의치대반</td>
                        <td>국/수/영/탐(1) 중에서<br />
                        3개 영역 합 6등급 이내</td>
                        <td>일반고 1.7이내<br />
                        자사고/특목고 2.7이내</td>
                        <td>2</td>
                    </tr>
                    <tr>
                        <td class="stickyCj">연고대반</td>
                        <td>국/수/영/탐(1) 중<br />
                        3개 영역 합 7등급 이내</td>
                        <td>일반고 2.5이내<br />
                        자사고/특목고 3.5이내</td>
                        <td>2</td>
                    </tr>
                    <tr>
                        <td class="stickyCj">블루반</td>
                        <td>국/수/영/탐(1) 중<br />
                        3개 영역 합 9등급 이내</td>
                        <td>일반고 3.0 이내,<br />
                        자사고/특목고 4.5 이내</td>
                        <td>3</td>
                    </tr>
                    <tr>
                        <td class="stickyCj">그린반</td>
                        <td colspan="2">면접 후 정원 5% 이내 선발</td>
                        <td>4</td>
                    </tr>
                    <tr>
                        <th class="bg-sky" rowspan="3">고2
                        <p class="ico-end-s" style="position:absolute;top:53%;left:21%">여/마감</p>
            
                        <p class="ico-end-s" style="position:absolute;top:70%;left:12%">남/마감임박</p>
                        </th>
                        <td class="stickyCj">전교1등반</td>
                        <td>국/수/탐(2) 합 4등급 이내</td>
                        <td>일반고 1.5 이내<br />
                        자사고/특목고 2.5 이내</td>
                        <td>1</td>
                    </tr>
                    <tr>
                        <td class="stickyCj">서의치대반</td>
                        <td>국/수/영/탐(1) 중 수학 포함<br />
                        3개 영역 합 6등급 이내</td>
                        <td>일반고 1.7이내<br />
                        자사고/특목고 2.7이내</td>
                        <td>2</td>
                    </tr>
                    <tr>
                        <td class="stickyCj">연고대반</td>
                        <td>국/수/영/탐(1) 중 수학 포함<br />
                        3개 영역 합 7등급 이내</td>
                        <td>일반고 2.5이내<br />
                        자사고/특목고 3.5이내</td>
                        <td>2</td>
                    </tr>
                    <tr>
                        <th class="bg-sky pb20">고1
                        <p class="ico-end-s" style="position:absolute;top:53%;left:16%">마감임박</p>
                        </th>
                        <td class="stickyCj">서의치반</td>
                        <td colspan="2">중학교 3학년 1학기 국/수/영 성취도 모두 A</td>
                        <td>2</td>
                    </tr>
                </tbody>
            </table>
        </div>
            
        <ul class="list-bullet">
            <li>입학은 모의고사 전형 혹은 내신 전형 중 하나의 성적에 해당하면 입학 가능</li>
            <li>입학 시 성적표 제출 필수이며, 해당 성적표 기준으로 반 배정</li>
            <li>의무 강좌는 3시간 수업(1주 기준) 이상에 해당하는 강좌에 한정</li>
            <li>의무 강좌 미충족 시, 입학 불가</li>
        </ul>
        
        <p class="recruit-stit" style="margin: 20px 0 10px;">전형별 반영 기준</p>
        
        <ul class="list-bar">
            <li><b>[모의고사 전형]</b><br />
            2023년에 응시한 전국연합평가 中 택 1</li>
            <li><b>[내신 전형]</b><br />
            1학년 1학기~직전 학기까지의 전 교과 내신 성적의 평균</li>
        </ul> -->
            
        
            
    </div>
</div>