<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->

<!--프로모션 영역-->
<div class="cont-pro">
    <p><img src="<%=Application("img_path_russel")%>/m_russel/core_dj/2025/first_overall/cont_pro_img.jpg" alt=""></p>
</div>
<!--//프로모션 영역-->

<!-- 모집 개요 -->
<div class="recruit-wrap pb0">
    <div class="inner">
        <!-- 모집개요 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 5707
        Else '실서버
            AGM_CD = 1785
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
<!-- //모집 개요 -->

<div class="inner">
    <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.');" href="https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=182" class="btn-link mt20">원서접수 바로가기</a>
</div>

<!-- 입학 절차 -->
<div class="recruit-wrap">
    <div class="inner">
        <p class="recruit-tit"><strong>입학 절차 안내</strong></p>
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
                <span>현장/온라인<br>
                    등록</span>
            </li>
            <li>
                <div><strong>4</strong></div>
                <span>입학 및 개강</span>
            </li>
        </ul>
        <div class="step-txt-wrap">
            <div class="step-txt">
                <p class="step-tit mb0" style="display:inline-block;margin-right: 5px;">1) 입학상담/원서접수
                    <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.');" href="https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=182" class="bt-gray-s ml10">원서접수 바로가기</a></p>
                <ul class="list-dot m0 mt0">
                    <li>방문/전화/온라인 상담</li>
                    <li>온라인 원서 접수</li>
                    <li>사전예약금 납부</li>
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
                    <li>미납 시 합격 취소</li>
                </ul>
            </div>

            <div class="step-txt">
                <p class="step-tit mb0">4) 입학 및 개강</p>
                <ul class="list-dot m0 mt0">
                    <li>2025년 1월 개강</li>
                    <li>개강 전 OT 진행 예정</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<!-- 모집요강 및 지원혜택 -->
<div class="recruit-wrap">
    <div class="inner">
        <!-- 모집개요 자동화 시스템 영역 -->
        <%
        '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
        If IsDevSvr() = true Then   '개발서버
            AGM_CD = 5706
        Else '실서버
            AGM_CD = 1784
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
<!-- //모집요강 및 장학혜택 -->

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

    $('.bt-close-tt').on('click',function(){
		$('.zoom-pop').removeClass('on')		
	})

</script>