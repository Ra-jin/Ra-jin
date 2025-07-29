<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <div class="inner">
        <!-- 모집 개요 -->
        <p class="recruit-tit"><strong>모집 개요</strong></p>
        
        <!-- 모집요강 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 6965
        Else '실서버
            AGM_CD = 2048
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

        <!-- <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.');" href="https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=181" class="btn-link mt20">원서접수 바로가기</a> -->
         <a onclick="alert('추후 오픈 예정입니다.')" href="javascript:void(0)" class="btn-link mt20">원서접수 바로가기</a>

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
                    선택과목 <br>
                    선택 
                </span>
            </li>
            <li>
                <div><strong>5</strong></div>
                <span>입학 및 개강</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 입학상담/원서접수 
                    <a onclick="alert('추후 오픈 예정입니다.')" href="javascript:void(0)" class="bt-gray-s">원서접수 바로가기</a></p>
                <ul class="list-dot m0 mt0">
                    <li>방문/전화/온라인 상담</li>
                    <li>온라인 원서접수</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 반 편성</p>
                <ul class="list-dot m0 mt0">
                    <li>성적표 제출</li>
                    <li>모집 기준 상 반 편성</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 현장/온라인 등록</p>
                <ul class="list-dot m0 mt0">
                    <li>온라인 결제 링크 발송</li>
                    <li>미납 시 합격 취소</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">4) 선택과목 선택</p>
                <ul class="list-dot m0 mt0">
                    <li>과목별 선택 수업 선택</li>
                    <li>선택한 수업은 개강 전까지 변경 및 취소 가능</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">5) 입학 및 개강</p>
                <ul class="list-dot m0 mt0">
                    <li>개강 전 OT 진행</li>
                </ul>
            </div>
        </div>



        <p class="recruit-tit"><strong>모집 요강 & 지원 혜택</strong></p>
        <div class="tbl-box p0">
            <div class="tab-wrap">
                <a href="javascript:void(0)" class="on"><strong>이과 종합반</strong></a>
                <a href="javascript::void(0)"><strong>문과 종합반</strong></a>
            </div>

            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 7003
            Else '실서버
                AGM_CD = 2086
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
        tabMenu('.tab-wrap','.tbl-box .tab-cont');
    })
</script>