<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<div class="cont js-cont">
    <div class="cont00">
        <div class="inner">
            <!-- 모집 개요 -->
            <h3>러셀 영통 파이널 종합반 <strong>모집 개요</strong></h3>
            <div class="tbl-box">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:12%;">
                        <col style="width:8%;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="bg-gray">모집 대상</th>
                            <td class="tal" colspan="2">2024 파이널 종합반 (인문/자연계열)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">개강일</th>
                            <td class="tal" colspan="2">인문/자연 : 10/7(월) 개강
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray" rowspan="2">수업 과목</th>
                            <td>자연계열</td>
                            <td class="tal">국어, 수학, 영어, 과탐(물리Ⅰ, 화학Ⅰ, 생명과학Ⅰ, 지구과학Ⅰ)</td>
                        </tr>
                        <tr>
                            <td>인문계열</td>
                            <td class="tal">국어, 수학, 영어, 사탐(사회문화, 생활과윤리) <br>
                                ※ 사회문화 OR 생활과윤리 선택자만 종합반 등록 가능                                
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray">접수 방법</th>
                            <td class="tal" colspan="2">현장접수</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수강료</th>
                            <td class="tal" colspan="2">132만원 (4주 기준)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">제출 서류</th>
                            <td class="tal" colspan="2">
                                * 2024학년도 수능성적 증명서, 6월, 9월 평가원 모의고사 성적표 중 택 1 <br>
                                * 내신성적증명서(1학년 1학기부터 3학년 1학기(중간/기말 포함 학기말)까지 성적 반영) 1부 <br>
                                ※ 수능 성적표(또는 평가원 모의고사 성적표)와 내신성적표 중 택 1 제출<br>
                                ※ 반에 따라 6월 평가원 성적표 적용이 안되는 반이 있으므로 입학기준 확인 필요
                            </td>
                        </tr>                       
                    </tbody>
                </table>
            </div>
            <!-- //모집 개요 -->
    
            <!-- 입학 절차 안내 -->
            <h3 class="mt100">러셀 영통 파이널 종합반  <strong>입학 절차 안내</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>입학상담/원서접수</p>
                    <ul class="list-03">
                        <li> 방문/전화/온라인 <br>1:1 게시판 상담</li>                    
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>전형확인/반 편성</p>
                    <ul class="list-03">
                        <li> 전형 자격요건 확인</li>
                        <li> 모집 기준 상 반 편성</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>현장 등록</p>
                    <div>
                        <span class="tal dp_inbl">
                            ① 입학신청서 작성 <br>
                            ② 성적표 제출<br>
                            ③ 현장 카드 결제 /<br>
                            또는 가상 계좌 발송<br>
                            *미납 시 등록 취소
                        </span>
                    </div>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>강좌 선택 및 등록</p>
                    <ul class="list-03">
                        <li> 과목별 수업 안내</li>
                        <li> 등록한 수업은 개강 전<br>
                            까지 변경 및 취소 가능
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 5</div>
                    <p>입학 및 개강</p>
                    <ul class="list-03">
                        <li> 개강 전 OT  별도 안내</li>
                    </ul>
                </li>
            </ul>
            <!-- //입학 절차 안내 -->
    
            <!-- 입학기준 및 장학혜택 -->
            <h3 class="tit mt100">러셀 영통 파이널 종합반  <strong>입학기준 및 장학혜택</strong></h3>
            <div class="tab-cont-wrap tbl-box">
                <div class="bt-tab">
                    <a href="javascript:void(0)" class="on"><strong>자연 계열</strong></a>
                    <a href="javascript::void(0)"><strong>인문 계열</strong></a>
                </div>

                <div class="cont-box on mt30">
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 5599
                    Else '실서버
                        AGM_CD = 1678
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
                </div>
                <div class="cont-box mt30">
                    <%
                    '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                    If IsDevSvr() = true Then   '개발서버
                        AGM_CD = 5600
                    Else '실서버
                        AGM_CD = 1679
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
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(function(){
        tabMenu('.bt-tab','.tbl-box .cont-box');
    })
</script>