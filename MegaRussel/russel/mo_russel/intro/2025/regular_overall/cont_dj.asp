<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!--프로모션 영역-->
<div>
    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/core_dj/2025/regular_overall/event_promo.jpg" alt=""></p>
</div>
<!--//프로모션 영역-->
<div class="recruit-wrap">
    <div class="inner">
        <!-- 모집 개요 -->
        <p class="recruit-tit"><strong>모집 개요</strong></p>
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6742
        Else '실서버
            AGM_CD = 1824
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

        <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=181'" class="btn-common">원서접수 바로가기</a>

        <!-- 입학 절차 -->
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>
                    입학상담/<br>
                    원서접수
                </span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>
                    전형확인/<br>
                    반 편성
                </span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>현장/온라인 <br> 등록</span>
            </li>
        </ul>
        <ul class="setp-diagram">
            <li>
                <div><strong>4</strong></div>
                <span>
                    종합반 강좌 배정
                </span>
            </li>
            <li>
                <div><strong>5</strong></div>
                <span>재수종합반 최종 등록 확인</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 입학상담/원서접수</p>
                <ul class="list-dot m0 mt0">
                    <li>방문/전화/온라인 상담</li>
                    <li>온라인 원서접수</li>
                    <li>사전예약금 납부 <br><a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=181'" class="bt-gray-s">원서접수 바로가기</a></li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 전형확인/반 편성</p>
                <ul class="list-dot m0 mt0">
                    <li>전형 자격요건 확인</li>
                    <li>모집 기준 상 반 편성</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 현장/온라인 등록</p>
                <ul class="list-dot m0 mt0">
                    <li>가상 계좌 발송/카드 결제</li>
                    <li>미납 시 등록 취소</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">4) 종합반 강좌 배정</p>
                <ul class="list-dot m0 mt0">
                    <li>선택한 수업은 월 2회 변경 가능</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">5) 재수종합반 최종 등록 확인</p>
                <ul class="list-dot m0 mt0">
                    <li>입학 당일 개별 OT 진행 예정</li>
                </ul>
            </div>
        </div>



        <p class="recruit-tit"><strong>입학 기준</strong></p>
        <div class="tab-cont-wrap">
            <div class="tab-wrap tab-wrap01">
                <a href="javascript:void(0)" class="on"><strong>이과 종합반</strong></a>
                <a href="javascript::void(0)"><strong>문과 종합반</strong></a>
            </div>
        </div>
        <div class="tab-cont-wrap tab-cont-wrap01">
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6769
            Else '실서버
                AGM_CD = 1851
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

<script>
    $(function(){
        tabMenu('.type02 .tab-wrap01','.tab-cont-wrap01 .tab-cont');

    })
</script>
