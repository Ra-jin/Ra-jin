<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->


<div class="recruit-wrap">
    <div class="inner">
        <!-- 입학 절차 -->
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>입학 상담<br>및 <br>
                    온라인 <br>원서접수</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>성적표 제출</span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>단과 강의 <br>
                    수강 신청<br>
                    (현장 및 <br>
                    온라인 접수)</span>
            </li>
            <li>
                <div><strong>4</strong></div>
                <span>파이널 <br>정규반<br>
                    최종 등록</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 입학 상담 및 온라인 원서접수
                    <!-- <a class="bt-gray-s ml10" onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191', '_blank');">원서접수 바로가기</a> -->
                     <a class="bt-gray-s ml10" onclick="alert('추후 오픈 예정입니다.');">원서접수 바로가기</a>
                </p>
                <ul class="list-dot m0 mt0">
                    <li>파이널 정규반 등록과 관련하여, <strong class="f14">방문/전화/온라인/카카오톡 상담이 가능</strong>합니다.</li>
                    <li>온라인 원서접수를 완료하시면, 문자 또는 유선 안내가 진행됩니다.</li>
                </ul>
            </div>
            
            <div class="step-txt">
                <p class="step-tit">2) 성적표 제출</p>
                <ul class="list-dot m0 mt0">
                    <li><strong class="f14">성적표 미제출 시 반 배정 불가</strong>하며, 이후 입학 절차 진행이 불가합니다.</li>                    
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 단과 강의 수강 신청 (현장 및 온라인 접수)</p>
                <ul class="list-dot m0 mt0">
                    <li>모집 요강에 따른 각 반별 수강 강좌 수 미충족 시, 입학이 제한됩니다.</li>
                    <li>수강 강좌 수에 따른 바른공부 자습전용관 장학 혜택은 단과 완강 시 적용됩니다. (수강 강좌 충족 및 유지 조건에 한함)</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">4) 파이널 정규반 최종 등록</p>
                <ul class="list-dot m0 mt0">
                    <li>단과 수강 신청(결제)을 완료하시면, 바른공부 자습전용관&교재&학습 콘텐츠&급식 및 셔틀버스와 관련된 안내를 드립니다.</li>
                    <li>최종 등록(입학)이 완료되면, 개별적으로 등원 안내 문자 발송 및 사전 OT를 진행합니다.</li>
                </ul>
            </div>
        </div>

        <!-- 모집 요강 & 장학 혜택 -->
        <p class="recruit-tit"><strong>모집 요강 & 장학 혜택</strong></p>
        <div class="tbl-box p0">
            <div class="tab-wrap">
                <a href="javascript:void(0)" class="on"><strong>고3</strong></a>
                <a href="javascript::void(0)"><strong>N수</strong></a>
            </div>

            <!-- 모집 요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6980
            Else '실서버
                AGM_CD = 2063
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
            <!-- //모집 요강 자동화 시스템 영역 -->
        </div>
    </div>
</div>

<script>
    $(function(){
        tabMenu('.tab-wrap','.tbl-box .tab-cont');
    })
</script>