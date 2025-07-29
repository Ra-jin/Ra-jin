<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<!--첫번째 타이틀만 margin-top 140px(mt140), 나머지는 모두 margin-top 100px(mt100)로 클래스 추가 필수-->
<!--스페셜 페이지 있을 경우, 첫번째 타이틀에 margin-top 클래스 삭제-->
<div class="cont js-cont">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 입학 절차 안내 -->
            <h3 class="tit mt140"><strong>입학 절차</strong></h3>
            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>
                        온라인 원서 접수 후 <br>
                        사전예약금 납부
                    </p>
                    <a href="https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179" class="btn-gray-s ml_10 mt15">원서접수 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>
                        입학기준 확인 후 <br>
                        성적표 제출
                    </p>
                    <p class="fz12">* 성적표 제출 방식 기재 <br> (별도 안내 or 카카오채널/현장 제출)</p>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>
                        단과 강의 <br>
                        선택 및 결제
                    </p>
                    <p class="fz12">* 단과 강의 12월 중순 결제 가능</p>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>
                        우선선발반 <br>
                        최종 등록 확인
                    </p>
                </li>
            </ul>

            <!-- 모집요강 및 지원혜택 -->
            <h3 class="tit mt100"><strong>모집요강</strong></h3>
            <div class="tbl-box type02">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 5666
                Else '실서버
                    AGM_CD = 1744
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
    // 개방형 구조 팝업
    function layerPop() {
        $(".zoom-pop").addClass("on")
    }
    $(document).mouseup(function (e){
        var LayerPopup = $(".zoom-pop");
        if(LayerPopup.has(e.target).length === 0){
            LayerPopup.removeClass("on");
        }

    });
    $('.btn-close').on('click',function(){
        $('.zoom-pop').removeClass('on')		
    })
</script>