<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<div class="recruit-wrap">
    <!-- 입학 절차 안내 -->
    <p class="recruit-tit">러셀 대구 썸머스쿨<br><strong>입학 절차 안내</strong></p>
    <div class="tbl-box inCon">
        <p class="recruit-stit mt10">[1단계] 온라인 원서 접수 및 성적표 제출</p>
        <ul class="list-bar m0">
            <li>성적표 확인 후 사전등록금 결제 링크 발송</li>
            <li>사전 등록금 : 62만원</li>
        </ul>
        <ul class="list-bullet m0">
            <li>온라인 원서접수 시, 성적표 제출은 필수입니다.</li>
            <li>사전 등록이 완료되면 추후 안내에 따라 최종 등록(단과 선택)을 진행하게 됩니다.</li>
            <li>사전 등록금은 썸머스쿨 바자관 비용으로 대체됩니다.</li>
        </ul>
        <p class="recruit-stit">[2단계] 수업(단과) 선택 및 최종 등록</p>
        <ul class="list-bar">
            <li>단과 등록 기간 : 6/3(월) 9시~6/30(일) 예정</li>
            <li>등록 방법 : 러셀 대구 홈페이지 또는 학원 방문 접수</li>
            <li>등록 비용 : 단과 수업에 따라 상이</li>
        </ul>
        <ul class="list-bullet m0">
            <li class="color-red">러셀 대구 모든 단과 수업은 썸머스쿨 입학과 관계없이 수강할 수 있습니다.</li>
        </ul>
        <p class="recruit-stit">[3단계] 입학 및 개강</p>
        <ul class="list-bar">
            <li>7/20(토) 개강</li>
            <li>개강 전 OT 진행 예정</li>
        </ul>
    </div>
    <!-- <ul class="setp-diagram">
        <li>
            <div><strong>1</strong></div>
            <span>입학상담/<br> 원서접수</span>
        </li>
        <li>
            <div><strong>2</strong></div>
            <span>반 편성</span>
        </li>
        <li>
            <div><strong>3</strong></div>
            <span>단과강좌 <br> 등록</span>
        </li>
    </ul>
    <ul class="setp-diagram">
        <li>
            <div><strong>4</strong></div>
            <span>온라인/현장등록</span>
        </li>
        <li>
            <div><strong>5</strong></div>
            <span>입학 및 개강</span>
        </li>
    </ul>
    <div class="step-txt-wrap">
        <div class="step-txt">
            <p class="step-tit" style="display: inline-block;margin-right: 5px;"> 1) 입학상담/원서접수  <% if curYmdhmin < 202404301000 then %><a href="javascript:void(0)" onclick="alert('4/30(화) 10시 부터 가능합니다.')" class="bt-gray-s ml10">원서접수 바로가기</a><% else %><a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.')" href="https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166" class="bt-gray-s ml10">원서접수 바로가기</a><% end if %></p>
            <ul class="list-dot m0 mt10">
                <li>방문/전화/온라인 상담</li>
                <li>온라인 원서 접수</li>
                <li>사전예약금 납부</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">2) 반 편성</p>
            <ul class="list-dot m0 mt10">
                <li>성적표 제출</li>
                <li>모집 기준 상 반 편성</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">3) 단과강좌 등록</p>
            <ul class="list-dot m0 mt10">
                <li>수강강좌 수에 맞춰 단과등록</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">4) 온라인/현장 등록</p>
            <ul class="list-dot m0 mt10">
                <li>온라인 결제링크 발송</li>
                <li>미납 시 합격 취소</li>
            </ul>
        </div>
        <div class="step-txt">
            <p class="step-tit">5) 입학 및 개강</p>
            <ul class="list-dot m0 mt10">
                <li>7/20(토) 개강</li>
                <li>개강 전 OT 진행 예정</li>
            </ul>
        </div>
    </div> -->


    <!-- 모집요강 및 지원혜택 -->
    <p class="recruit-tit">러셀 대구 썸머스쿨<br><strong>모집요강</strong></p>
    
    <div class="tbl-box inCon">
        <div class="tab-box type01">
            <a href="javascript:void(0)" class="on">고3</a>
            <a href="javascript:void(0)">고2</a>     
        </div>
        <div class="js-tab-con type01 on"  style="display: block;">
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5522
            Else '실서버
                AGM_CD = 1596
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
        <div class="js-tab-con type01">
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5523
            Else '실서버
                AGM_CD = 1597
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
    <!-- //모집요강 및 지원혜택 -->

</div>

<script>
    tabMenu(".tab-box.type01",".js-tab-con.type01");
</script>