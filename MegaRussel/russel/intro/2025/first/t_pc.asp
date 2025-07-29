<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->


<!--첫번째 타이틀만 margin-top 140px(mt140), 나머지는 모두 margin-top 100px(mt100)로 클래스 추가 필수-->
<!--스페셜 페이지 있을 경우, 첫번째 타이틀에 margin-top 클래스 삭제-->
<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- <h3 class="tit mt140">러셀 평촌 재수생 우선선발반 <strong>장학혜택</strong></h3>
            <div class="tbl-box type02">
                <table class="tbl-01 type02">
                    <colgroup>
                        <col style="width: %;">
                        <col style="width: %;">
                        <col style="width: %;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th colspan="3">재수생 우선선발반 12월 얼리버드 등록 혜택</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="bl-0">구분</td>
                            <td>바른공부 자습전용관 비용</td>
                            <td>등록 혜택 대상</td>
                        </tr>
                        <tr>
                            <td class="bl-0">12월 재수생 우선선발반</td>
                            <td>15만원</td>
                            <td>-</td>
                        </tr>
                    </tbody>
                </table>
            </div>       -->

            <!-- 입학절차 -->
            <h3 class="tit mt100"><strong>입학 절차 안내</strong></h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>성적표 제출 및 입학 전형 확인 <br> (원서 접수)</p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>단과 수업 선택 및 등록</p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>최종 등록</p>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!--입학절차 상세설명-->
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>성적표 제출 및 입학 전형 확인 (원서 접수)</p>
                    <div class="box">  
                        <ul class="list-04">
                            <li>현장 성적표 제출  후 바른공부 자습전용관  입학 전형 확인</li>
                        </ul>
                        <ul class="list-02">
                            <li>실 성적표 제출 필수</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>단과 수업 선택 및 등록 (등록방법 - 학원 홈페이지)</p>
                    <div class="box">    
                        <ul class="list-04">
                            <li>학습 성향 및 수준, 반별 모집요강에 맞게 수강 희망 단과 선택과 등록</li>
                            <li>최종 등록 전, 단과 강좌 변경 및 취소 가능</li>
                            <li>해당 월 개강일이 지난 강좌는 현장에서 등록 가능</li>
                        </ul>
                        <ul class="list-02">
                            <li>최저 입학기준(의무수강 강좌 수) 충족 시 입학 가능합니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>최종 등록</p>
                    <div class="box">    
                        <ul class="list-04">
                            <li>입학 일자 확인 후 최종 등록</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--//입학절차 상세설명-->


            <!-- 모집요강 -->
            <h3 class="tit mt100"><strong>모집요강 및 지원혜택</strong></h3>
            <div class="tbl-box type02">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 5679
                Else '실서버
                    AGM_CD = 1759
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
    <!-- //cont00 -->
</div>

<script>
    $(function(){
        tabMenu('.bt-tab','.tbl-box .cont-box');
    })
</script>