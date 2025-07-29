<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont core_wj">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학절차 -->
            <h3 class="tit">입학 절차 안내</h3>
            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>온라인 원서 접수 후<br>
                        사전예약금 납부
                    <a href="https://corewj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187" class="bt-apply">원서접수 바로가기</a></p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>입학기준 확인 후<br>
                        성적표 제출<br>
                        <span class="fz16 mt5" style="display:block;">*모집요강 참고</span></p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>단과 강의 선택<br>
                        및 결제</p>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>반수반<br>
                        최종 등록 확인</p>
                </li>
            </ul>
            <!-- //입학절차 -->
            <!-- 모집요강 -->
            <h3 class="tit mt100">2026 반수반 <strong>모집요강 및 장학혜택</strong></h3>
            <div class="tbl-box type02">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 6898
                Else '실서버
                    AGM_CD = 1981
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

<!-- <script>
    $(function(){
        tabMenu('.bt-tab','.tbl-box .cont-box');
    })
</script> -->