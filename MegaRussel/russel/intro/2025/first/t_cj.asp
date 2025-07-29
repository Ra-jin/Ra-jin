<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->


<!--첫번째 타이틀만 margin-top 140px(mt140), 나머지는 모두 margin-top 100px(mt100)로 클래스 추가 필수-->
<!--스페셜 페이지 있을 경우, 첫번째 타이틀에 margin-top 클래스 삭제-->
<div class="cont js-cont core_cj">
    <!-- <div class="s-page">
        <p class="s-tit">러셀CORE 청주 재수생 우선선발반 <br> <span>특별 이벤트</span></p>
        <div>
            <img src="<%=Application("img_path_russel")%>/core_cj/2025/first/s_page_img.png" alt="" />
        </div>
    </div> -->

    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">

            <!-- 입학절차 -->
            <h3 class="tit mt140"><strong>입학절차</strong></h3>

            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>
                        온라인 원서 접수 후 <br>
                        사전예약금 납부
                        <a href="https://corecj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179" class="btn-gray-s mt15">원서 접수 바로가기</a>
                    </p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>
                        입학기준 확인 후 <br>
                        성적표 제출
                    </p>
                    <p class="fz12">* 성적표 제출 방식 : 별도 안내 예정</p>
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
                        우선선발반 <br>
                        최종 등록 확인
                    </p>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!-- 모집요강 -->
            <h3 class="tit mt100"><strong>모집요강 및 지원혜택</strong></h3>
            <div class="tbl-box type02">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 5675
                Else '실서버
                    AGM_CD = 1755
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