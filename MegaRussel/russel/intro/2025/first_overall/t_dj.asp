<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->

<!--첫번째 타이틀만 margin-top 140px(mt140), 나머지는 모두 margin-top 100px(mt100)로 클래스 추가 필수-->
<!--스페셜 페이지 있을 경우, 첫번째 타이틀에 margin-top 클래스 삭제-->
<div class="cont js-cont">
    <div class="s-page">
        <p class="s-tit">러셀 대전 재수종합반 <span>프로모션</span></p>
        <div>
            <img src="<%=Application("img_path_russel")%>/core_dj/2025/first_overall/s_page_img.png" alt="" />
        </div>
    </div>

    <!-- cont00 -->
    <div class="cont00">
        <div class="inner">
            <!-- 모집개요 -->
            <h3 class="tit mt70"><strong>모집개요</strong></h3>
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5705
            Else '실서버
                AGM_CD = 1783
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

            <!-- 입학 절차 안내 -->
            <h3 class="tit mt140"><strong>입학 절차 안내</strong></h3>
            <ul class="a-process step-over">
                <li>
                    <div class="flag">STEP 1</div>
                    <p>
                        입학상담/원서접수
                    </p>
                    <ul class="list-03">
                        <li>방문/전화/온라인 상담</li>
                        <li>온라인 원서 접수</li>
                        <li>사전예약금 납부</li>
                    </ul>
                    <a href="https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=182" class="btn-gray-s mt15">원서접수 바로가기</a>
                </li>
                <li>
                    <div class="flag">STEP 2</div>
                    <p>
                        전형확인/반 편성
                    </p>
                    <ul class="list-03">
                        <li>전형 자격요건 확인</li>
                        <li>모집 기준 상 반 편성</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 3</div>
                    <p>
                        현장/온라인 등록
                    </p>
                    <ul class="list-03">
                        <li>가상 계좌 발송/카드 결제</li>
                        <li>미납 시 합격 취소</li>
                    </ul>
                </li>
                <li>
                    <div class="flag">STEP 4</div>
                    <p>
                        입학 및 개강
                    </p>
                    <ul class="list-03">
                        <li>2025년 1월 개강</li>
                        <li>개강 전 OT 진행 예정</li>
                    </ul>
                </li>
            </ul>

            <!-- 모집요강 -->
            <h3 class="tit mt100"><strong>입학 기준 및 지원혜택</strong></h3>
            <div class="tbl-box type02">
                <!-- 모집요강 자동화 시스템 영역 -->
                <%
                '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
                If IsDevSvr() = true Then   '개발서버
                    AGM_CD = 5704
                Else '실서버
                    AGM_CD = 1782
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