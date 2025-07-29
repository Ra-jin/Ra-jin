<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!-- 모집 개요 -->
<div class="recruit-wrap pb0" style="position:relative;">
    <div class="inner">
        <p class="recruit-tit"><strong>모집 개요</strong></p>
        <div class="tbl-box type01">
            <!-- 모집개요 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 5689
            Else '실서버
                AGM_CD = 1768
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
            <!-- //모집개요 자동화 시스템 영역 -->
        </div>
    </div>
    <div class="ico-end" style="top: 19vw;right: 2vw;"><p style="font-size: 1.2rem;">전반 마감<br>(대기 접수 중)</p></div>
</div>
<!-- //모집 개요 -->

<% if curYmdhmin < 202411201000 then %>
<% Else %>
<div class="inner">
    <a href="javascript:void(0)" onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=182')" class="btn-link mt20">원서접수 바로가기</a>
</div>
<% End If %>

<!-- 입학 절차 -->
<div class="recruit-wrap">
    <div class="inner">
        <p class="recruit-tit"><strong>입학 절차</strong></p>
        <ul class="setp-diagram">
            <li>
                <div><strong>1</strong></div>
                <span>입학상담/<br>
                    원서접수</span>
            </li>
            <li>
                <div><strong>2</strong></div>
                <span>전형확인/<br>
                    반 편성</span>
            </li>
            <li>
                <div><strong>3</strong></div>
                <span>현장/<br>
                    온라인 등록</span>
            </li>
        </ul>
        <ul class="setp-diagram">
            <li>
                <div><strong>4</strong></div>
                <span>선택강좌 선택</span>
            </li>
            <li>
                <div><strong>5</strong></div>
                <span>입학 및 개강</span>
            </li>
        </ul>   
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit" style="display:inline-block;margin-right: 5px;">1) 입학상담/원서접수</p>
                <ul class="list-dot m0 mt0">
                    <li>방문/전화/온라인 상담</li>
                    <li>온라인 원서 접수</li>
                    <li>사전예약금 납부</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">2) 전형확인/반 편성</p>
                <ul class="list-dot m0 mt0">
                    <li>성적표 제출</li>
                    <li>모집 기준 상 반 편성</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">3) 현장/온라인 등록</p>
                <ul class="list-dot m0 mt0">
                    <li>온라인 결제링크 발송</li>
                    <li>미납 시 합격 취소</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit">4) 선택강좌 선택</p>
                <ul class="list-dot m0 mt0">
                    <li>종합반 필수 수업 및 선택수업 선택</li>
                </ul>
            </div>
            <div class="step-txt">
                <p class="step-tit">5) 입학 및 개강</p>
                <ul class="list-dot m0 mt0">
                    <li>개강 전 OT 진행 예정</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<!-- 모집요강 및 지원혜택 -->
<div class="recruit-wrap type02">
    <div class="inner">
        <p class="recruit-tit"><strong>입학 기준 및 지원혜택</strong></p>
        
        <div class="tbl-box type02">
            
            <div class="tab-wrap tab-wrap01">
                <a href="javascript:void(0)" class="on"><strong>최상위권 이과전문관</strong></a>
                <a href="javascript::void(0)"><strong>문과전문관</strong></a>
            </div>
                    
            <!-- 모집요강 자동화 시스템 영역 -->                    
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6715
            Else '실서버
                AGM_CD = 1797
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
<!-- //모집요강 및 지원혜택 -->

<script>
    $(function(){
        tabMenu('.type02 .tab-wrap01','.tab-cont-wrap01 .tab-cont');
    })
</script>