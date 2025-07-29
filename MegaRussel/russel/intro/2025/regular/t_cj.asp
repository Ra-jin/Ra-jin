<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->


<div class="cont js-cont core_cj">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <h3 class="tit"><strong>2026학년도 N수 정규반 프로모션
            </strong></h3>
            <div>
                <img src="<%=Application("img_path_russel")%>/core_cj/2025/regular/banner_promotion.jpg" alt="" />
            </div>

            <!-- 입학절차 -->
            <h3 class="tit mt100"><strong>입학 절차 안내</strong></h3>

            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>
                        온라인 원서접수 등록<br>
                        또는 유선/방문접수
                        <a href="https://corecj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180" class="btn-gray-s mt15">원서접수 바로가기</a>
                    </p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>
                        입학기준 확인 후 <br>
                        성적표 제출
                    </p>
                    <p class="fz12">※ 성적표 제출 방식 : 별도 안내 예정</p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>
                        단과 강의 <br>
                        선택 및 결제
                    </p>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>
                        N수 정규반 <br>
                        최종 등록 확인
                    </p>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!-- 모집요강 -->
            <h3 class="tit mt100"><strong>모집요강 및 지원혜택</strong></h3>
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6815
            Else '실서버
                AGM_CD = 1895
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

<script>
    // $(function(){
    //     tabMenu('.bt-tab','.tbl-box .cont-box');
    // })
</script>