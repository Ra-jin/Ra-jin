<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont core_cw">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학절차 -->
            <h3 class="tit">러셀CORE 창원 썸머스쿨 <strong>입학 절차 안내</strong></h3>
            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>온라인 원서접수 후<br>
                    
                        사전 예약금 납부
                    </p>
                    <a href="https://corecw.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189" class="btn-gray-s mt10">온라인 원서접수</a>
                    <ul class="list-05">
                        <li class="fz14">사전 예약금 납부 시 
                        추후 입학 안내

                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>입학 기준 확인 후<br>
                        성적표 제출
                    </p>
                    <ul class="list-05">
                        <li class="fz14">성적표 제출 방식 추후 별도 안내

                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>단과 강의<br>
                        선택 및 결제
                    </p>
                    <ul class="list-05">
                        <li class="fz14">배정된 반에  따른  의무 C수 
                        충족 필수

                        </li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>썸머스쿨<br>
                        최종 등록 확인
                    </p>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!-- 모집요강 -->
            <h3 class="tit mt100">러셀CORE 창원 썸머스쿨 <strong>모집 요강 및 지원 혜택</strong></h3>
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6906
            Else '실서버
                AGM_CD = 1989
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
    <!-- //cont00 -->
</div>

<!-- <script>
    $(function(){
        tabMenu('.bt-tab','.tbl-box .cont-box');
    })
</script> -->