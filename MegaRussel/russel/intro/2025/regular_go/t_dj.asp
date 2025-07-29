<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<div class="cont js-cont core_dj">
    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <h3 class="tit"><strong>러셀 대전 재학생 정규반 프로모션</strong></h3>
            <div>
                <img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/banner_promotion.jpg" alt="" />
            </div>
            <!-- 연간 운영 계획 -->
            <h3 class="tit mt100"><strong>연간 운영 계획</strong></h3>
            <table class="tbl-plan type02 p0">
                <colgroup>
                    <col style="width:12%">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                </colgroup>
                <thead>
                    <tr>
                        <th>모집대상</th>
                        <th>1~2월</th>
                        <!-- <th class="on">3~4월<span>현재 모집중</span></th> -->
                        <th>3~6월</th>
                        <th>7~8월</th>
                        <th>9~11월</th>
                        <th>11~12월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>고3</td>
                        <td rowspan="2">윈터스쿨</td>
                        <td rowspan="2">재학생 정규반</td>
                        <td rowspan="2">썸머스쿨</td>
                        <td rowspan="2">파이널 정규반</td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>고2</td>
                        <td>프리윈터스쿨
                        </td>
                    </tr>
                </tbody>
            </table>
            <p class="plan-txt r-txt">
                * 학원의 사정에 따라 연간 운영 계획은 변동될 수 있으며, 변동 시 별도 안내드립니다.
            </p>
            <!-- 입학 절차 안내 -->
            <h3 class="tit mt100"><strong>입학 절차 안내</strong></h3>
            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>
                        온라인 원서접수 후 <br>
                        사전예약금 납부
                    </p>
                    <a href="https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184" class="btn-gray-s mt15">원서접수 바로가기</a>
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
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>
                        재학생 정규반 <br>
                        최종 등록 확인
                    </p>
                </li>
            </ul>

            <!-- 모집요강 -->
            <h3 class="tit mt100"><strong>모집요강</strong></h3>

            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6764
            Else '실서버
                AGM_CD = 1846
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
            <!-- <div class="tbl-box coming-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/winter/ico_tobe.png" alt="" /></p>
                    <p class="coming-txt">
                        <strong>재학생 정규반의 <br>
                        모집요강</strong>은 추후 공개 예정입니다. <br>
                    </p>
                </div>
            </div> -->
        </div>
    </div>
    <!-- //cont00 -->
</div>

<!-- <script>
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
</script> -->