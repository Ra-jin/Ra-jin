<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<!--첫번째 타이틀만 margin-top 140px(mt140), 나머지는 모두 margin-top 100px(mt100)로 클래스 추가 필수-->
<!--스페셜 페이지 있을 경우, 첫번째 타이틀에 margin-top 클래스 삭제-->
<div class="cont js-cont russel_jg">

    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">

            <!-- 입학절차 -->
            <h3 class="tit mt140"><strong>입학절차</strong></h3>

            <ul class="a-process">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>
                        단과 수업 선택 및 결제
                    </p>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>
                        성적표 제출 및 최종 등록
                    </p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>
                        입학
                    </p>
                </li>
            </ul>
            <!-- //입학절차 -->

            <!--입학절차 상세설명-->
            <div class="step-box type02">
                <div class="step-wrap">
                    <p class="tit"><span>STEP 1</span>단과 수업 선택 및 결제</p>
                    <div class="box">   
                        <ul class="list-04">
                            <li>등록 방법 : 온라인 또는 학원 방문 접수</li>
                            <li>등록 비용 : 단과 수업에 따라 상이</li>
                        </ul>

                        <!-- <ul class="list-02">
                            <li>단과 수업은 12월부터 개설됩니다.</li>
                        </ul> -->

                        <!-- <ul class="list-04">
                            <li>11월 : 단과 수업 X</li>
                            <li>12월 : 단과 수업 O</li>
                        </ul> -->
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 2</span>성적표 제출 및 최종 등록</p>
                    <div class="box">   
                        <ul class="list-04">
                            <li>성적표 : 반마다 성적표 제출 기준이 상이하므로, ‘2026 재수생 우선선발반' 모집요강을 꼭 확인해주시기 바랍니다.</li>
                            <li>성적표 제출 : <span class="underline">최종 등록 시, 학원 방문하여 <span class="red_txt bold">성적표 사본(출력물) 제출(필수)</span></span></li>
                        </ul>
                        <ul class="list-02">
                            <li>제출 불가한 성적표 : (예) 꼬리표, 수기(오피스) 편집, 인적사항 확인 불가한 성적표</li>
                        </ul>
                    </div>
                </div>
                <div class="step-wrap">
                    <p class="tit"><span>STEP 3</span>입학</p>
                    <div class="box">   
                        <ul class="list-04">
                            <li>OT : 개별 안내</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--//입학절차 상세설명-->



            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100"><strong>모집요강 및 지원혜택</strong></h3>
            <div class="tbl-box type02">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 5672
                Else '실서버
                    AGM_CD = 1751
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
            <!-- //모집요강 및 장학혜택 -->
        </div>
    </div>
</div>
<script>
    // 환불/취소 약관 팝업
    $('.r-pop-open').click(function(){
        $('.r-layer-wrap').addClass('on');
    })
    $('.r-layer-wrap .close-btn').click(function(){
        $('.r-layer-wrap').removeClass('on');
    })
</script>