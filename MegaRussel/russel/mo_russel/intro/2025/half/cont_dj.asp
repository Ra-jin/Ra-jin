<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<style>
    /* .zoom-pop {position:fixed;top:0;left:0;width:100%;height:100%;background-color:rgb(0, 0, 0, .5);z-index:20;display:none;}
    .zoom-pop.on {display:block;}
    .zoom-pop .s-tit strong {color:#009C83;font-weight:900}
    .zoom-pop div {position:absolute;top:50%;left:50%;transform:translate(-50%, -50%)}
    .zoom-pop .bt-close-tt {position:absolute;top:12px;right:12px;}
    .zoom-pop .bt-close-tt  img{width:16px;height:auto;} */
</style>

<div class="event-area">
    <p class="recruit-tit">러셀 대전 반수반 프로모션</p>
    <div><img src="<%=Application("img_path_russel")%>/m_russel/core_dj/2025/half/banner_promotion.jpg" alt="메가 초이스 장학혜택" /></div>
</div>
<!-- 입학 절차 -->
<div class="recruit-wrap">
    <div class="inner">

        <p class="recruit-tit"><strong>모집요강</strong></p>
        <div class="tbl-box">
            <!-- 모집요강 자동화 시스템 영역 -->
            <%
            '관리자 코드 입력부 (관리자 > 학사정보관리 > 모집요강 의 idx 값)
            If IsDevSvr() = true Then   '개발서버
                AGM_CD = 6804
            Else '실서버
                AGM_CD = 1926
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
    // // 개방형 구조 팝업
	// function layerPop() {
	// 	$(".zoom-pop").addClass("on")
	// }
	// $(document).mouseup(function (e){
	// 	var LayerPopup = $(".zoom-pop");
	// 	if(LayerPopup.has(e.target).length === 0){
	// 		LayerPopup.removeClass("on");
	// 	}
	// });

    // $('.bt-close-tt').on('click',function(){
	// 	$('.zoom-pop').removeClass('on')		
	// })

</script>