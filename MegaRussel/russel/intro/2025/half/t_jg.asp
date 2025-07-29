<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont core_cj">
    <div class="cont00">
        <div class="inner">
            <!-- 입학절차 -->
            <h3 class="tit">2026 반수반 <strong>입학 절차 안내</strong></h3>
            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>단과 수업 선택 및 결제</p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>성적표 제출 및 최종 등록</p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>입학</p>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!--입학절차 상세설명-->
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>단과 수업 선택 및 결제</p>
                    <div class="box">
                        <ul class="list-02">
                            <li>등록 방법 : 온라인 또는 학원 방문 접수</li>
                            <li>등록 비용 : 단과 수업에 따라 상이</li>                          
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>성적표 제출 및 최종 등록</p>
                    <div class="box">
                        <ul class="list-base">
                            <li>- 성적표 : 반마다 성적표 제출 기준이 상이하므로, ‘2026 N수 반수반' 모집요강을 꼭 확인해주시기 바랍니다.

                            </li>
                            <li>- 성적표 제출 : <u>최종 등록 시, 학원 방문하여 <strong class="red_txt">성적표 사본(출력물) 제출(필수)</strong></u></li>      
                            <li>※ 제출 불가한 성적표 : (예) 꼬리표, 수기(오피스) 편집, 인적사항 확인 불가한 성적표 </li>                     
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>입학</p>
                    <div class="box">
                        <ul class="list-04">
                            <li>OT : 개별 안내
                            </li>
                        </ul>
                    </div>
                </div>
            
            </div>
            <!--//입학절차 상세설명-->

            <!-- 모집요강 -->
            <h3 class="tit mt100">2026 반수반 <strong>모집요강 및 지원혜택</strong></h3>

           
            
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6880
            Else '실서버
                AGM_CD = 1962
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

<!-- <script>
    $(function(){
        tabMenu('.bt-tab','.tbl-box .cont-box');
    })
</script> -->